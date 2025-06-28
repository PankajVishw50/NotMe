
prefix:
	docker compose $(ARGS)

up:
	$(MAKE) prefix ARGS="up"
	
up-build:
	$(MAKE) prefix ARGS="up --build -d"

restart:
	$(MAKE) prefix ARGS="restart"

down:
	$(MAKE) prefix ARGS="down" 

%-bash:
	$(MAKE) prefix ARGS="$* bash"

logs:
	$(MAKE) prefix ARGS="logs -f $(ARGS)"

%-logs:
	$(MAKE) logs ARGS="$*"
