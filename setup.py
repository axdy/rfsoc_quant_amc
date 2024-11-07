import os
import shutil
from distutils.dir_util import copy_tree
from setuptools import setup, find_packages

# global variables
package_name = 'rfsoc_quant_amc'
board = os.environ['BOARD']
repo_board_dir = f'boards/{board}/{package_name}'
board_notebooks_dir = os.environ['PYNQ_JUPYTER_NOTEBOOKS']
board_project_dir = os.path.join(board_notebooks_dir, package_name)

class package_installer():
    def __init__(self,
                 name,
                 version,
                 description,
                 author,
                 email,
                 license,
                 url,
                 pynq_version,
                 board):
        args = locals()
        for key in args:
            if key != 'self':
                setattr(self, key, args[key])
        # Run install functions
        self.check_board()
        self.check_path()
        self.copy_bitstream()
        self.copy_files()
        self.run_setup()

    # check if the path already exists, delete if so.
    def check_path(self):
        if os.path.exists(board_project_dir):
            shutil.rmtree(board_project_dir)

    def check_board(self):
        if not os.path.isdir(f'boards/{self.board}/{self.name}'):
            raise ValueError(f'Board {self.board} is not supported')
        if not os.path.isdir(os.environ['PYNQ_JUPYTER_NOTEBOOKS']):
            raise ValueError('PYNQ Jupyter Notebooks directory not found')
        
    def copy_bitstream(self):
        src_dir = os.path.join(repo_board_dir, 'bitstream')
        dst_dir = os.path.join(package_name, 'bitstream')
        copy_tree(src_dir, dst_dir)

    # def copy_notebooks()
    
    def copy_files(self):
        cwd = os.getcwd()
        for prj in next(os.walk(os.path.join(cwd, 'boards', self.board)))[1]:
            tmp_prj = os.path.join(cwd, 'boards', self.board, prj)
            for directory in next(os.walk(tmp_prj))[1]:
                src = os.path.join(tmp_prj, directory)
                dst = os.path.join(cwd, self.name, prj, directory)
                copy_tree(src, dst)
    
    def generate_pkg_dirs(self):
        data_files = []
        for directory in os.walk(os.path.join(os.getcwd(), self.name)):
            for file in directory[2]:
                data_files.append("".join([directory[0],"/",file]))
        return data_files
    
    def run_setup(self):
        setup(name=self.name,
              version=self.version,
              install_requires=[self.pynq_version],
              url=self.url,
              license=self.license,
              author=self.author,
              author_email=self.email,
              packages=find_packages(),
              package_data={'':self.generate_pkg_dirs()},
              description=self.description)
        
package_installer(name='rfsoc_quant_amc',
                  version='0.1',
                  description='Modulation Classification for RFSoC using Quantised Neural Networks',
                  author='Andrew Maclellan',
                  email='a.maclellan@strath.ac.uk',
                  license='BSD 3-Clause',
                  url='https://github.com/axdy/rfsoc_quant_amc.git',
                  pynq_version='pynq>=2.7',
                  board = os.environ['BOARD'])