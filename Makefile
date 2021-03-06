APP_PATH ?= ~/dev/data

build:
	@APP_PATH=$(APP_PATH) ENTRYPOINT_PATH="/usr/local/bin/composer.sh" docker-compose build --no-cache

composer:
	@APP_PATH=$(APP_PATH) ENTRYPOINT_PATH="/usr/local/bin/composer.sh" docker-compose up

tests:
	@APP_PATH=$(APP_PATH) ENTRYPOINT_PATH="/usr/local/bin/tests.sh" docker-compose up

test:
	@APP_PATH=$(APP_PATH) ENTRYPOINT_PATH="/usr/local/bin/tests.sh $(target)" docker-compose up

fetch_vendor:
ifndef FQN
	$(error FQN is undefined)
endif
	rsync -a --copy-links --delete "$(FQN)/data/vendor" $(APP_PATH)

build_xdebug:
	docker build -t php_xdebug ./container/xdebug

push_xdebug:
	docker tag php_xdebug sepuka/php_xdebug
	docker push sepuka/php_xdebug

get_xdebug:
	docker pull sepuka/php_xdebug

all: composer