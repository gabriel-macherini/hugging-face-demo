install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vvv --cov=hello -cov=gretings /
		--cov=smath --cov=web test
	
	python -m pytest --nbval notebook.ipynb # tests our jupyter notebook
	#python -m pytest -v test/test_web.py #if you just want to test web

debug:
	python -m pytest -vv --pdb #Debbuger is invoked

one-test:
	python -m pytest -vv test/test_gretting.py::test_my_name4