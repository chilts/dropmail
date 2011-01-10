build:
	dpkg-buildpackage -us -uc -tc -t -b

test:
	cp examples/example-invalid.json /var/lib/dropmail/example-invalid-`pwgen -1`.json
	cp examples/example-no-from.json /var/lib/dropmail/example-no-from-`pwgen -1`.json
	cp examples/example-no-to.json /var/lib/dropmail/example-no-to-`pwgen -1`.json
	cp examples/example-ok.json /var/lib/dropmail/example-ok-`pwgen -1`.json
	cp examples/example-ok-subject.json /var/lib/dropmail/example-ok-subject-`pwgen -1`.json
	./bin/dropmail

.PHONY: build test
