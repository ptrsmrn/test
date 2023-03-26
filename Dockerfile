FROM python

COPY requirements.txt /requirements.txt
COPY gh_project_automation.py /gh_project_automation.py
RUN pip install -r requirements.txt

ENTRYPOINT ["sh", "-c", "/gh_project_automation.py --project-name Eliran --team Eliran-team -l DEBUG $PAT"]
