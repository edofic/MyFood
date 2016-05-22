#!/usr/bin/env python

from setuptools import setup, find_packages

setup(name="myfood",
      version="0.1",
      packages=find_packages(),
      install_requires=[
          "requests",
      ],
      entry_points={
          'console_scripts': [
              'myfood-receiver = myfood:main'
          ],
      },
     )
