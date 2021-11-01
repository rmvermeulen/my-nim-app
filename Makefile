.PHONY: clean dev build

build: clean
	karun app.nim

clean:
	rm app.js

dev:
	karun -r src/app.nim