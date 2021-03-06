#JDK installation
curl  -O https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.tar.gz
tar -xvf jdk-17_linux-x64_bin.tar.gz
sudo mv jdk-17.0.2 /opt/jdk17
export JAVA_HOME=/opt/jdk17
export PATH=$PATH:$JAVA_HOME/bin
#
#
#Maven installation
curl  -O https://dlcdn.apache.org/maven/maven-3/3.8.5/binaries/apache-maven-3.8.5-bin.tar.gz
tar -xvf apache-maven-3.8.5-bin.tar.gz
sudo mv apache-maven-3.8.5 /opt/maven
export M2_HOME=/opt/maven
export MAVEN_HOME=/opt/maven
export PATH=${M2_HOME}/bin:${PATH}

