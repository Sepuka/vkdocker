ifndef APP_PATH
$(error The APP_PATH variable is missing. Try to make APP_PATH=~/dev/data)
endif

composer:
	@APP_PATH=$(APP_PATH) ENTRYPOINT_PATH="/usr/local/bin/composer.sh" docker-compose up --build

tests:
	@APP_PATH=$(APP_PATH) ENTRYPOINT_PATH="/usr/local/bin/tests.sh" docker-compose up --build

fetch_vendor:
	sync -a --copy-links --delete "${FQN}/data/vendor" ~/dev/data

all: composer