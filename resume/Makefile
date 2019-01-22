BUNDLE=bundle
RUBY=ruby

BUILD_DIR=build
RESUME_MD=../resume.md

all: $(BUILD_DIR)/resume.html

clean:
	- rm -rf $(BUILD_DIR)

$(BUILD_DIR)/resume.html: $(BUILD_DIR)
	$(BUNDLE) exec $(RUBY) gen_resume.rb $(RESUME_MD) > $(BUILD_DIR)/resume.html

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)
