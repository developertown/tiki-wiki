VERSIONS := 17.1 latest
BUILD_ALL_VERSIONS := $(addprefix build-, $(VERSIONS))

all: build

.PHONY: build $(BUILD_ALL_VERSIONS)
$(BUILD_ALL_VERSIONS): build-%:
	docker build -t developertown/tiki-wiki:$* $*

build: $(BUILD_ALL_VERSIONS)