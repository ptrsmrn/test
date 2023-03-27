FROM python

COPY entrypoint.py /entrypoint.py
COPY entrypoint.sh /entrypoint.sh
COPY requirements.txt /requirements.txt
COPY gh_project_automation.py /gh_project_automation.py
RUN pip install -r requirements.txt

ENTRYPOINT ["/entrypoint.sh"]
#ENTRYPOINT ["/entrypoint.py $PAT"]
