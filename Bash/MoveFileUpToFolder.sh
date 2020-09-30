#!/bin/bash

while [ $# -ge 1 ]
do
	   parentPath=${1%};
	      cp "$1" $parentPath;
	         shift
	 done

