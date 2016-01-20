.PHONY: prod rubocop spec stage vagrant

prod:
	REPO=ssh://git@stash.library.ucsb.edu:7999/dr/adrl-v2.git bundle exec cap production deploy

rubocop:
	rubocop --format simple --config .rubocop.yml --auto-correct

spec:
	CI=1 RAILS_ENV=test bundle exec rake ci

stage:
	REPO=ssh://git@stash.library.ucsb.edu:7999/dr/adrl-v2.git bundle exec cap stage deploy

vagrant:
	SERVER=127.0.0.1 REPO=/vagrant/alex2 bundle exec cap vagrant deploy
