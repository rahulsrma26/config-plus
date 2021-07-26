clean:
	rm -rf src/config_plus.egg-info
	rm -rf build
	rm -rf dist
	rm -rf .tox

build:
	python setup.py sdist bdist_wheel

upload:
	twine upload dist/*

major:
	bump2version --allow-dirty major

minor:
	bump2version --allow-dirty minor

patch:
	bump2version --allow-dirty patch
