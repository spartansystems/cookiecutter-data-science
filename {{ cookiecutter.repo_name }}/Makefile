.PHONY: clean data lint requirements sync_data_to_s3 sync_data_from_s3 deploy update_roles

#################################################################################
# GLOBALS                                                                       #
#################################################################################

BUCKET = s3_bucket

#################################################################################
# COMMANDS                                                                      #
#################################################################################

requirements:
	pip install -q -r requirements.txt

data: requirements
	python src/data/make_dataset.py

clean:
	find . -name "*.pyc" -exec rm {} \;

lint:
	flake8 --exclude=lib/,bin/ .

sync_data_to_s3:
	aws s3 sync data/ s3://$(BUCKET)/data/

sync_data_from_s3:
	aws s3 sync s3://$(BUCKET)/data/ data/

deploy:
	cd deploy; ansible-galaxy install -r requirements.yml -p ./roles
	cd deploy; ansible-playbook deploy.yml

update_roles:
	cd deploy; ansible-galaxy install -r requirements.yml -p ./roles --force

#################################################################################
# PROJECT RULES                                                                 #
#################################################################################
