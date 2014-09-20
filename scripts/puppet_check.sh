#!/bin/sh
CWD=$(dirname $0)
puppet parser validate $CWD/../puppet/*.pp
