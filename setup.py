from distutils.core import setup
from distutils.extension import Extension
from Cython.Distutils import build_ext

file_name = "convolve3"

ext_modules = [Extension(file_name,[file_name+".pyx"])]

setup(name = file_name,
        cmdclass = {'build_ext':build_ext},
        ext_modules = ext_modules)

