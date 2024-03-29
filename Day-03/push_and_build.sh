#!/bin/bash

# Define variables
REPO_URL="https://github.com/Nish1102/shellscripting-practice.git"  # Your Git repository URL
BRANCH="main"  # Branch to push changes
JENKINS_JOB="your-jenkins-job"  # Name of your Jenkins job

# Push changes to Git repository
git add .
git commit -m "Automated commit"
git push origin "$BRANCH"

# Trigger Jenkins job build
# Note: This assumes you have configured Jenkins to accept remote builds via the Jenkins API token
JENKINS_URL="http://jenkins.example.com"  # Your Jenkins server URL
JENKINS_USER="your-jenkins-user"  # Your Jenkins username
JENKINS_TOKEN="your-jenkins-api-token"  # Your Jenkins API token

curl -X POST "$JENKINS_URL/job/$JENKINS_JOB/build" --user "$JENKINS_USER:$JENKINS_TOKEN"

echo "Changes pushed to repository and Jenkins job '$JENKINS_JOB' triggered for build."
