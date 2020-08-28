DEST=../cyberl3o.github.io
SRC=public/

server:
	hugo server --buildDrafts --forceSyncStatic --verbose

build:
	hugo

deploy: build
	rsync -Paivz $(SRC) $(DEST)
