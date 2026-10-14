.PHONY: pdf site all clean

# Default: compile only volumes that have substantive content.
pdf:
	bash scripts/build-book.sh 02-programming-software-engineering

site: pdf
	@echo "Open docs/index.html locally or deploy docs/ using GitHub Pages."

# Optional: build every volume, including the currently unpopulated ones.
all:
	@for d in books/*; do \
	  if [ -d "$$d" ]; then bash scripts/build-book.sh "$${d#books/}"; fi; \
	done

clean:
	rm -rf build
