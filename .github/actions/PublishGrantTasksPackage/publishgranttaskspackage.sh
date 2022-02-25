#!/bin/sh -l
env=$1
echo "python3 -m pip install --user --upgrade setuptools wheel"
echo "python3 setup.py sdist bdist_wheel"
echo "aws s3 cp ./dist/grantTasks-1.0-py3-none-any.whl s3://jd-us01-edl-databricks-artifacts-$env/edl-core-grants/dist/grantTasks-1.0-py3-none-any.whl --sse"
echo "aws s3 cp ./Notebooks/services/async_grants.py s3://jd-us01-edl-databricks-artifacts-$env/edl-core-grants/async_grants.py --sse"
   
