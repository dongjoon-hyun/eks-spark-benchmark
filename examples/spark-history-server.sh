./bin/spark-submit \
--master k8s://https://52730E7C9B78E0D33ADD07DF035FF36E.sk1.us-west-2.eks.amazonaws.com \
--deploy-mode cluster \
--name spark-pi \
--class org.apache.spark.examples.SparkPi \
--conf spark.executor.instances=2 \
--conf spark.kubernetes.container.image=seedjeffwan/spark:2.4.5-SNAPSHOT \
--conf spark.kubernetes.driver.pod.name=spark-pi-driver \
--conf spark.eventLog.dir=s3a://sagemaker-us-west-2-348134392524/eventLogFolder \
--conf spark.hadoop.fs.s3a.access.key= \
--conf spark.hadoop.fs.s3a.secret.key= \
--conf spark.eventLog.enabled=true \
--conf spark.kubernetes.authenticate.driver.serviceAccountName=spark local:///opt/spark/examples/jars/spark-examples_2.11-2.4.3.jar


https://github.com/helm/charts/tree/master/stable/spark-history-server