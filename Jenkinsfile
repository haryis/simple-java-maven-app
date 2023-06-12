	node {
		docker.image('maven:3.9.2-eclipse-temurin-11').inside('-v /root/.m2:/root/.m2') {
			stage('Build') {
				sh 'mvn --version'				
				sh 'mvn -B -DskipTests clean package'
			}
         stage('Test') {
				checkout scm
				sh 'mvn test'
				junit 'target/surefire-reports/*.xml'
			}	
			stage('Manual Approval') {
				input message: 'Lanjutkan ke tahap Deploy'
			}
			stage('Deploy') {
				sh 'chmod +x ./jenkins/scripts/deliver.sh && ./jenkins/script/deliver.sh'
				sh 'sleep 60'
				sh 'chmod +x ./jenkins/script/kill.sh && ./jenkins/scripts/kill.sh'
			}
		}	
	}
