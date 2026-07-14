TITLE := $(word 2,$(MAKECMDGOALS))

.PHONY: page
page:
	@./scripts/new-page.sh "$(TITLE)"

# Allow `make page <title>` without treating title as a real target
%:
	@:
