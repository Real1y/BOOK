#!/bin/ksh

script_dir="$(cd "$(dirname $0)" && pwd)"
project_dir="$(basename ${script_dir})"

cd "${script_dir}/.."

if  [ ! -L "Podfile"  ]; then

	ln -s "${project_dir}/Podfile" Podfile

fi

#pod repo update
pod update --no-repo-update --verbose
#pod update --repo-update --verbose
