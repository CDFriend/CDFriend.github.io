BUNDLE=bundle
JEKYLL=jekyll

RM=rm

.PHONY: all build serve
all: build

build:
	$(BUNDLE) exec $(JEKYLL) build

serve:
	$(BUNDLE) exec $(JEKYLL) serve

clean:
	$(RM) -rf _site
