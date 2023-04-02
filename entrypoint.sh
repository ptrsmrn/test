#!/bin/bash

echo "$@"
echo "$1"
python /gh_project_automation.py --project-name Eliran --team Eliran-team -l DEBUG $1
