ifndef APP_PATH
$(error The APP_PATH variable is missing.)
endif

composer:
	@APP_PATH=$(APP_PATH) docker-compose up --build

all: composer