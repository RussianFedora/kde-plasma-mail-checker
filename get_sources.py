#!/usr/bin/python

import urllib
from string import join

URL = 'https://github.com/F1ash/kde-plasma-mail-checker/archive/'
NAME = 'kde-plasma-mail-checker'
VERSION = '1.10.50'
SUFF = 'tar.gz'

#print join((URL, VERSION, '.', SUFF), '')
u = urllib.urlopen(join((URL, VERSION, '.', SUFF), ''))
data = u.read()
with open(join((NAME, '-', VERSION, '.', SUFF), ''), 'wb') as f :
	f.write(data)
