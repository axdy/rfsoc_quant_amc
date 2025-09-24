import os
import shutil
from distutils.dir_util import copy_tree
from setuptools import setup, find_packages

# global variables
package_name = 'rfsoc_quant_amc'
pip_name = 'rfsoc-quant-amc'
board = os.environ['BOARD']
repo_board_dir = f'boards/{board}/{package_name}'
alt_overlay_folder = [f'boards/{board}/{package_name}']
board_notebooks_dir = os.environ['PYNQ_JUPYTER_NOTEBOOKS']
board_project_dir = os.path.join(board_notebooks_dir, package_name)

data_files = []

# check if board is supported
def check_env():
    if not os.path.isdir(repo_board_dir):
        raise ValueError("Board {} is not supported.".format(board))
    if not os.path.isdir(board_notebooks_dir):
        raise ValueError(
            "Directory {} does not exist.".format(board_notebooks_dir))

# check if the path already exists, delete if so
def check_path():
    if os.path.exists(board_project_dir):
        shutil.rmtree(board_project_dir)

# copy overlays to python package
def copy_overlays():
    for repo_folder in alt_overlay_folder:
        src_ol_dir = os.path.join(repo_folder, 'bitstream')
        dst_ol_dir = os.path.join(package_name, 'bitstream')
        copy_tree(src_ol_dir, dst_ol_dir)
        data_files.extend(
            [os.path.join("..", dst_ol_dir, f) for f in os.listdir(dst_ol_dir)])

# copy board specific drivers
def copy_drivers():
    src_dr_dir = os.path.join(repo_board_dir, 'drivers')
    dst_dr_dir = os.path.join(package_name)
    copy_tree(src_dr_dir, dst_dr_dir)

# copy notebooks to jupyter home
def copy_notebooks():
    src_nb_dir = os.path.join(repo_board_dir, 'notebooks')
    dst_nb_dir = os.path.join(board_project_dir)
    copy_tree(src_nb_dir, dst_nb_dir)

# copy xrfclk file to python package (gen3 devices only)
def copy_xrfclk():
    src_at_dir = os.path.join(repo_board_dir, 'xrfclk')
    if os.path.exists(src_at_dir):
        dst_at_dir = os.path.join('xrfclk')
        copy_tree(src_at_dir, dst_at_dir)
        data_files.extend(
            [os.path.join("..", dst_at_dir, f) for f in os.listdir(dst_at_dir)])

check_env()
check_path()
copy_overlays()
copy_drivers()
copy_notebooks()
copy_xrfclk()

setup(
    name=package_name,
    version='0.1',
    install_requires=['pynq>=3.0.1'],
    url='https://github.com/axdy/rfsoc_quant_amc',
    license='Creative Commons Attribution 4.0 International License (CC BY 4.0)',
    author='Andrew Maclellan',
    author_email='a.maclellan@strath.ac.uk',
    packages=find_packages(),
    package_data={
        '': data_files,
    },
    description='Modulation Classification for RFSoC using Quantised Neural Networks',
)