TITLE := $(word 2,$(MAKECMDGOALS))

.PHONY: page serve
page:
	@./scripts/new-page.sh "$(TITLE)"

serve:
	hugo server -b http://localhost:1313/

# Allow `make page <title>` without treating title as a real target
%:
	@:
