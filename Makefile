tailor:
	./pants tailor

tailor-check:
	./pants tailor --check

lint:
	./pants lint ::

format:
	./pants fmt ::

typecheck:
	./pants typecheck ::

test-commons:
	./pants test src/commons/:

test-say-boulou:
	./pants test src/say_boulou/:

run-say-boulou:
	./pants run src/say_boulou/main.py

dependencies-say-boulou:
	./pants dependencies src/say_boulou/main.py

dependees-commons-strings:
	./pants dependees src/commons/strings.py

build-say-boulou:
	./pants package src/say_boulou/: