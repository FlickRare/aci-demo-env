FROM python:3.7.5

COPY ./aci ./

RUN git clone https://github.com/CiscoDevNet/aci-learning-labs-code-samples.git && \
    git clone https://github.com/datacenter/acitoolkit.git && \
    wget https://d1nmyq4gcgsfi5.cloudfront.net/fileMedia/1f3d41ce-d154-44e3-74c1-d6cf3b525eaa/acicobra-4.2_3h-py2.py3-none-any.whl && \
    wget https://d1nmyq4gcgsfi5.cloudfront.net/fileMedia/b3b69aa3-891b-41ff-46db-a73b4b215860/acimodel-4.2_3h-py2.py3-none-any.whl && \
    pip install --no-cache-dir -r requirements.txt && \
    usermod -d /aci root

CMD ["/bin/sh"]