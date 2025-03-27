#!/bin/bash

####################
#Task:             Script to list the users of GitHub Repo with read access
#URL:              https://api.github.com/repos/OWNER/REPO/collaborators
#Author:           Naveen Kumar
#Version:          V1
####################


#GitHub API Base URL
API_URL="https://api.github.com"



#GitHub Username and Personal Access
USERNAME=$username
TOKEN=$token


#GitHub Owner and Repository information
REPO_OWNER=$1
REPO_NAME=$2


#DEBUGGING
echo "REPO_OWNER='$REPO_OWNER' & REPO_NAME='$REPO_NAME'"

#Function to make GET Request to the GiHub API
function github_api_get {
	local endpoint=$1

	local url="${API_URL}/${endpoint}"

	#Send a GET request to the GitHub API with authentication
	curl -s -u "${USERNAME}:${TOKEN}" "$url"
}


#Function to list the users with read access to the repository
function list_users_with_read_access {
	local endpoint="repos/${REPO_OWNER}/${REPO_NAME}/collaborators"

	#Fetch the list of collaborators in the repository
	collaborators="$(github_api_get "$endpoint" | jq -r '.[] | select(.permissions.pull == true) | .login')"

	#Display the collaboratos with read access
	if [[ -z "$collaborators" ]]; then
		echo "No users with read access found for ${REPO_OWNER}/${REPO_NAME}"
	else
		echo "Users with read acccess to ${REPO_OWNER}/${REPO_NAME}: "
		echo "$collaborators"
	fi
}


#Helper Function
function helper {
	expected_cmd_args=2
	if [[ $# -ne $expected_cmd_args ]]; then
		echo "Please execute the script with required command line arguments."
		echo "REPO_OWNER and REPO_NAME"
		exit 1
	fi
}	

helper "$@"

#Main script
echo "Listing the users with READ ACCESS to ${REPO_OWNER}/${REPO_NAME}: "
list_users_with_read_access
	

