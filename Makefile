VERSIONS := 17.1 latest
BUILD_ALL_VERSIONS := $(addprefix build-, $(VERSIONS))
TEST_ALL_VERSIONS := $(addprefix test-, $(VERSIONS))

all: test

.PHONY: build $(BUILD_ALL_VERSIONS)
$(BUILD_ALL_VERSIONS): build-%:
	docker build -t developertown/tiki-wiki:$* $*

build: $(BUILD_ALL_VERSIONS)

.PHONY: test $(TEST_ALL_VERSIONS)
$(TEST_ALL_VERSIONS): test-%:
	@echo "Test $*"
	@docker run --rm developertown/tiki-wiki:$* list

test: build $(TEST_ALL_VERSIONS)
