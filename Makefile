test:
	cp examples/example-invalid.json /var/cache/dropmail/example-invalid-`pwgen -1`.json
	cp examples/example-no-from.json /var/cache/dropmail/example-no-from-`pwgen -1`.json
	cp examples/example-no-to.json /var/cache/dropmail/example-no-to-`pwgen -1`.json
	cp examples/example-ok.json /var/cache/dropmail/example-ok-`pwgen -1`.json
	cp examples/example-ok-subject.json /var/cache/dropmail/example-ok-subject-`pwgen -1`.json
	./bin/dropmail
