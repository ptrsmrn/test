FROM python

COPY requirements.txt /requirements.txt
COPY gh_project_automation.py /gh_project_automation.py
RUN pip install -r requirements.txt

ENTRYPOINT ["entrypoint.py"]
