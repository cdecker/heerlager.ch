deploy:
	hugo
	echo heerlager.ch > public/CNAME
	cd public; \
	git init; \
	git add .; \
	git commit --quiet -am "Travis-CI Build"; \
	git push -f "git@github.com:cdecker/heerlager.ch.git" master:gh-pages
