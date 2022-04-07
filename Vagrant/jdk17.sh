sudo apt-get -y install openjdk-17-jre
sudo apt-get -y install openjdk-17-jdk
java -version

export JAVA_HOME=/opt/jdk-17.0.1
export PATH=$PATH:$JAVA_HOME/bin

sudo apt install maven
mvn -version