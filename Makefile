.PHONY: dry install

dry:
ifndef arch
	@echo 'arch not specified.'
	@exit 1
endif

ifndef version
	@echo 'version not specified.'
	@exit 1
endif

	@echo "curl -LO https://go.dev/dl/go$(version).$(arch).tar.gz"
	@echo "tar xvf go$(version).$(arch).tar.gz"
	@echo "rm go$(version).$(arch).tar.gz"
	@echo "sudo rm -rf /usr/local/go"
	@echo "sudo mv go /usr/local/"

install:
ifndef arch
	@echo 'arch not specified.'
	@exit 1
endif

ifndef version
	@echo 'version not specified.'
	@exit 1
endif

	curl -LO https://go.dev/dl/go$(version).$(arch).tar.gz
	tar xvf go$(version).$(arch).tar.gz
	rm go$(version).$(arch).tar.gz
	sudo rm -rf /usr/local/go
	sudo mv go /usr/local/
