# Installation of Gradle on a Ubuntu v20.04
# Gradle runs on all major operating systems and requires only a Java JDK version 8 or higher to be installed.

cd ~
wget -O ~/gradle-7.1.1-bin.zip https://services.gradle.org/distributions/gradle-7.1.1-bin.zip
cd ~/gradle-7.1.1-bin.zip
mkdir /opt/gradle
unzip -d /opt/gradle gradle-7.1.1-bin.zip
ls /opt/gradle/gradle-7.1.1
export PATH=$PATH:/opt/gradle/gradle-7.1.1/bin

sudo cat >> /etc/profile.d/gradle.sh << EOL
export PATH=$PATH:/opt/gradle/gradle-7.1.1/bin
EOL

sudo chmod 755 /etc/profile.d/gradle.sh