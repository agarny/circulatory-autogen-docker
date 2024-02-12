#!/bin/bash
if [[ $# -eq 0 ]] ; then
    echo 'usage is ./run_param_id.sh num_processors'
    exit 1
fi
source opencor_pythonshell_path.sh
./run_autogeneration.sh
mpiexec -n $1 ${opencor_pythonshell_path} ../src/scripts/param_id_run_script.py
