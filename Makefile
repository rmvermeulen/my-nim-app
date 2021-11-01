.PHONY: clean dev build

build: clean
	karun src/app.nim

clean:
	rm -f app.js

dev:
	karun -r src/app.nim