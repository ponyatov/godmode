.PHONY: go
go:
	godot3 .

.PHONY: install update gz ref
install: gz ref
	$(MAKE) update
update:
	sudo apt update
	sudo apt install -uy `cat apt.txt`
gz:
ref:
