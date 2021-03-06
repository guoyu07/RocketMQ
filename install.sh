git pull

git checkout master

rm -rf target
rm -f devenv

export JAVA_HOME=/opt/taobao/java
export PATH=/opt/taobao/mvn/bin:$JAVA_HOME/bin:$PATH
mvn -Dmaven.test.skip=true clean package install assembly:assembly -U

ln -s target/alibaba-rocketmq-3.0.2-SNAPSHOT.dir/alibaba-rocketmq devenv
