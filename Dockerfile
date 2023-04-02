FROM python

WORKDIR /github/workspace

COPY entrypoint.py /github/workspace/entrypoint.py
COPY entrypoint.sh //github/workspace/entrypoint.sh
COPY requirements.txt //github/workspace/requirements.txt
COPY gh_project_automation.py /github/workspace/gh_project_automation.py
RUN pip install -r /github/workspace/requirements.txt

ENTRYPOINT ["/entrypoint.sh"]
#ENTRYPOINT ["/entrypoint.py $PAT"]
