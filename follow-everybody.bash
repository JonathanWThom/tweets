# Copyright @datn 2022. Heavens forgive me for this
# be in your repo dir for this

for I in `gh api https://api.github.com/repos/diracdeltas/tweets/forks --paginate | jq -r '.[].full_name'`
do
	USEW=`echo $I | cut -d\/ -f1`
	WEPO=`echo $I | cut -d\/ -f2`
	git remote add $USEW https://github.com/$USEW/$WEPO
	git fetch $USEW
done
