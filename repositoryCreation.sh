echo " Creating repository with shellscript "

echo " Enter the token "

read token


echo " please enter the organisation name "

read ORG

echo " please enter repository name : "

read reponame

  curl \
  -X POST \
  -u username:$token \
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/orgs/{$ORG}/repos \
  -d "{\"name\": \"$reponame\"}"

if [ $? -eq 0 ]

then
	
echo " successfully created repository "

else

echo " Repository not created "

fi
