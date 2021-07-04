echo " Deleting repository with shellscript "

echo " Enter the token "

read token


echo " please enter the organisation name "

read ORG

echo " please enter repository name : "

read reponame


curl \
  -X DELETE \
  -u username:$token\
  -H "Accept: application/vnd.github.v3+json" \
  https://api.github.com/repos/$ORG/$reponame

if [ $? -eq 0 ]

then
	
echo " successfully deleted repository "

else

echo " Repository not deleted "

fi
