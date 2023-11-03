SHELL = /bin/sh

.SUFFIXES:
.SUFFIXES: .sh

.PHONY: all
all: backup install

.PHONY: clean
clean: uninstall restore

.PHONY: backup
backup:
	sh ./scripts/backup.sh

.PHONY: install
install:
	sh ./scripts/install.sh

.PHONY: commit
commit:
	sh ./scripts/commit.sh

.PHONY: fonts
fonts:
	sh ./scripts/fonts.sh

.PHONY: restore
restore:
	sh ./scripts/restore.sh

.PHONY: uninstall
uninstall:
	sh ./scripts/uninstall.sh

.PHONY: tests
tests:
	bats ./tests