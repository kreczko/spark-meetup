export SPARK_HOME=$PWD/spark-2.2.0
export PYTHONPATH="${SPARK_HOME}/python/:$PYTHONPATH"
export PYTHONPATH="${SPARK_HOME}/python/lib/py4j-0.10.4-src.zip:$PYTHONPATH"
export PYSPARK_DRIVER_PYTHON=jupyter
export PYSPARK_DRIVER_PYTHON_OPTS='notebook'

docker-compose up -d
./spark-2.2.0/bin/pyspark --master spark://localhost:7077

docker-compose down
