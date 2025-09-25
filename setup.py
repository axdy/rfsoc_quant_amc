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

def _is_lfs_pointer(path):
    try:
        with open(path, "rb") as f:
            head = f.read(256)
        return b"version https://git-lfs.github.com/spec" in head
    except FileNotFoundError:
        return True

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

# NEW: ensure data/ is included in the package and the .pkl is not an LFS pointer
def include_and_verify_data():
    data_dir = os.path.join(package_name, 'data')
    if os.path.isdir(data_dir):
        _append_package_data_under(package_name, data_dir)
    pkl_path = os.path.join(package_name, 'data', 'transmit_test_SNR.pkl')
    if _is_lfs_pointer(pkl_path):
        raise SystemExit(
            "Error: rfsoc_quant_amc/data/transmit_test_SNR.pkl is missing or is a Git LFS pointer.\n"
            "Run: git lfs install && git lfs fetch --all && git lfs checkout\n"
            "Then rebuild the package."
        )

# --- run steps before setup() so the files exist when building the wheel/sdist ---
check_env()
check_path()
copy_overlays()
copy_drivers()
copy_notebooks()
copy_xrfclk()
include_and_verify_data()

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
    package_data=package_data,              # now includes data/, bitstream/, drivers/, xrfclk/
    description='Modulation Classification for RFSoC using Dataflow Quantised CNNs',
)
