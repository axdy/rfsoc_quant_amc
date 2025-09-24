import os
import shutil
from distutils.dir_util import copy_tree  # note: distutils is deprecated but works; shutil.copytree is an alt
from setuptools import setup, find_packages

# --- globals ---
package_name = 'rfsoc_quant_amc'
pip_name = 'rfsoc-quant-amc'
board = os.environ['BOARD']
repo_board_dir = f'boards/{board}/{package_name}'
alt_overlay_folder = [f'boards/{board}/{package_name}']
board_notebooks_dir = os.environ['PYNQ_JUPYTER_NOTEBOOKS']
board_project_dir = os.path.join(board_notebooks_dir, package_name)

# we'll build this up and hand it to setup(package_data=...)
package_data = {package_name: []}

# --- helpers ---
def check_env():
    if not os.path.isdir(repo_board_dir):
        raise ValueError(f"Board {board} is not supported (missing {repo_board_dir}).")
    if not os.path.isdir(board_notebooks_dir):
        raise ValueError(f"Directory {board_notebooks_dir} does not exist.")

def check_path():
    if os.path.exists(board_project_dir):
        shutil.rmtree(board_project_dir)

def _append_package_data_under(pkg_root, dst_dir):
    """
    Add all files under dst_dir (which lives inside pkg_root) to package_data relative to pkg_root.
    """
    for root, _, files in os.walk(dst_dir):
        for f in files:
            rel_path = os.path.relpath(os.path.join(root, f), pkg_root)
            package_data.setdefault(package_name, []).append(rel_path)

# copy overlays to python package (now INSIDE the package)
def copy_overlays():
    for repo_folder in alt_overlay_folder:
        src_ol_dir = os.path.join(repo_folder, 'bitstream')
        if not os.path.isdir(src_ol_dir):
            continue
        dst_ol_dir = os.path.join(package_name, 'bitstream')
        os.makedirs(dst_ol_dir, exist_ok=True)
        copy_tree(src_ol_dir, dst_ol_dir)
        _append_package_data_under(package_name, dst_ol_dir)

# copy board specific drivers (already inside package root)
def copy_drivers():
    src_dr_dir = os.path.join(repo_board_dir, 'drivers')
    if not os.path.isdir(src_dr_dir):
        return
    dst_dr_dir = os.path.join(package_name)
    os.makedirs(dst_dr_dir, exist_ok=True)
    copy_tree(src_dr_dir, dst_dr_dir)
    _append_package_data_under(package_name, dst_dr_dir)

# copy notebooks to jupyter home (this is outside the wheel on purpose)
def copy_notebooks():
    src_nb_dir = os.path.join(repo_board_dir, 'notebooks')
    if not os.path.isdir(src_nb_dir):
        return
    dst_nb_dir = board_project_dir
    copy_tree(src_nb_dir, dst_nb_dir)

# copy xrfclk files into the package (gen3 devices only)
def copy_xrfclk():
    src_at_dir = os.path.join(repo_board_dir, 'xrfclk')
    if not os.path.isdir(src_at_dir):
        return
    dst_at_dir = os.path.join(package_name, 'xrfclk')
    os.makedirs(dst_at_dir, exist_ok=True)
    copy_tree(src_at_dir, dst_at_dir)
    _append_package_data_under(package_name, dst_at_dir)

def copy_large_asset():
    # Try a couple of likely locations
    candidates = [
        os.path.join(repo_board_dir, 'transmit_test_SNR.pkl'),                 # boards/<board>/rfsoc_quant_amc/...
        os.path.join(os.path.dirname(__file__), 'transmit_test_SNR.pkl'),      # repo top-level
    ]
    for src in candidates:
        if os.path.isfile(src):
            os.makedirs(board_project_dir, exist_ok=True)
            dst = os.path.join(board_project_dir, 'transmit_test_SNR.pkl')
            shutil.copy2(src, dst)
            print(f"Copied {src} -> {dst}")
            return
    print("Warning: transmit_test_SNR.pkl not found; skipping.")

# --- run steps before setup() so the files exist when building the wheel/sdist ---
check_env()
check_path()
copy_overlays()
copy_drivers()
copy_notebooks()
copy_xrfclk()
copy_large_asset()

setup(
    name=package_name,
    version='0.1',
    install_requires=['pynq>=3.0.1'],
    url='https://github.com/axdy/rfsoc_quant_amc',
    license='Creative Commons Attribution 4.0 International License (CC BY 4.0)',
    author='Andrew Maclellan',
    author_email='a.maclellan@strath.ac.uk',
    packages=find_packages(include=[package_name, f"{package_name}.*"]),
    include_package_data=True,              # make sure package_data is included
    package_data=package_data,              # <-- use what we built, not {'': data_files}
    description='Modulation Classification for RFSoC using Quantised Neural Networks',
)
