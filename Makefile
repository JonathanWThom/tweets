.PHONY: go everybody post refresh repost timeline

action: everybody timeline500

everybody:
	./follow-everybody.bash

go: everybody timeline

post:
	git commit -m $(p) --allow-empty
	git push

refresh:
	git fetch --all

repost:
	git cherry-pick $(p)

timeline:
	git log --graph --all --decorate --oneline

timeline500:
	git log -500 --graph --all --decorate --oneline
