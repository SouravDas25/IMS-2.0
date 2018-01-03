try:
    from setuptools import setup
    from setuptools import Extension
except ImportError:
    from distutils.core import setup
    from distutils.extension import Extension
from Cython.Build import cythonize

setup(
  name = 'Hello world app',
  ext_modules = cythonize("buttoncalender.pyx"),
)

#python cython_setup.py build_ext --inplace
