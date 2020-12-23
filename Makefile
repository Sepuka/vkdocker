APP_PATH ?= ~/dev/data

build:
	@APP_PATH=$(APP_PATH) ENTRYPOINT_PATH="/usr/local/bin/composer.sh" docker-compose up --build

composer:
	@APP_PATH=$(APP_PATH) ENTRYPOINT_PATH="/usr/local/bin/composer.sh" docker-compose up

tests:
	@APP_PATH=$(APP_PATH) ENTRYPOINT_PATH="/usr/local/bin/tests.sh" docker-compose up

fetch_vendor:
	sync -a --copy-links --delete "$(FQN)/data/vendor" $(APP_PATH)

all: composer