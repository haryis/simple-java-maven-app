	node {
      checkout scm
		docker.image('maven:3.9.2-eclipse-temurin-11').inside('-v /root/.m2:/root/.m2') {
			stage('Build') {
				sh 'mvn --version'				
				sh 'mvn -B -DskipTests clean package'
			}
         stage('Test') {            
            sh 'mvn test'
            junit 'target/surefire-reports/*.xml'
<<<<<<< HEAD
         }
		 stage('Manual Approval') {
			input message: 'Lanjutkan ke tahap Deploy?'
		 }     
		 stage('Deploy') {
			sh './jenkins/scripts/deliver.sh'
			sh 'sleep 60'
			sh './jenkins/scripts/kill.sh'
		 }
=======
         }     
>>>>>>> d9e5f9ca4a4df2461cd67848d4ffe49a1fac16fc
		}	
	}
