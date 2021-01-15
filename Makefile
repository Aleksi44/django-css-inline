start:
	python manage.py runserver 0.0.0.0:4243

shell:
	python manage.py shell

mm:
	python manage.py migrate

deploy:
	rm -rf dist/*
	python setup.py sdist bdist_wheel
	python -m twine upload dist/*

patch:
	npm version patch
	git push --tags origin master

test:
	python manage.py test -v 2

coverage:
	coverage run --source='.' manage.py test
	coverage report
