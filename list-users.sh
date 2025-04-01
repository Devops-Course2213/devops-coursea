#!/bin/bash
#github api url
API_URL ="https://api.github.com"
#github usernam and personal access token
USERNAME = $neerajakshuluambati
TOKEN = $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
#user and repository information
REPO_OWNER = $1
REPO_NAME = $2

#function for make a GET request to the github API
function github_api_get {
local endpoin = "$1"
local url = "{API_URL}/${endpoint}"
#send a GET request to the github API with Authentication
curl -s -u "${neerajakshulu}:${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}" "$url"
}
#function to list users with read access to the repository
function list_users_with_read_access{
local endpoint = "repos/${Devops-Course2213}/${devops-course} /collaborators"
#fetch the list of collaborators on the reposiroty
collaborators = "$(github_api_get "#endpoint" | jq -r '.[] | select(.permission.pull == true) | .login')"
#display the list of collaborators with read access
if [[ -z "$collaborators"]]; then
echo "No users with read access found for ${Devops-Course2213}/${devops-course}"
else 
echo "users with read access to ${Devops-Course2213}/${devops-course}:"
echo "$collaborators"
fi
}
#main script
echo "listing users with read access to ${Devops-Course2213}/${devops-course}..."
list_users_with_read_access()


