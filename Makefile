.PHONY: prod rubocop spec stage vagrant

prod:
	REPO=git@github.library.ucsb.edu:ADRL/alexandria.git bundle exec cap production deploy

rubocop:
	rubocop --format simple --config .rubocop.yml --auto-correct

spec:
	CI=1 RAILS_ENV=test bundle exec rake ci

stage:
	REPO=git@github.library.ucsb.edu:ADRL/alexandria.git bundle exec cap stage deploy

vagrant:
	SERVER=127.0.0.1 REPO=/vagrant/alex2 bundle exec cap vagrant deploy
