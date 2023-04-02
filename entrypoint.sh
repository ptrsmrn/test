#!/bin/bash -l

start_time=`date +%s`

python /gh_project_automation.py --project-name Eliran --team Eliran-team -l DEBUG $PAT

end_time=`date +%s`
echo "The script run for $((end_time-start_time))s" >> $GITHUB_OUTPUT
