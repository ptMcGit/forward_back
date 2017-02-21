TARGET_DIR := ~
BIN := $(TARGET_DIR)/bin
FORWARD_BACK := forward_back

.DEFAULT_GOAL := install

.PHONY: install
install:
	ln -s $(CURDIR)/$(FORWARD_BACK) $(BIN)/$(FORWARD_BACK)

.PHONY: clean
clean:
	rm $(BIN)/$(FORWARD_BACK)
