################################################################################
# OPTIONS
################################################################################

# Basic Pandoc command
PANDOC = pandoc -o

# Options for various output types
HTML_OPTS = -t html5 -s
TEX_OPTS =
EPUB_OPTS =

# Directories for various files
PUBLIC_DIR = public
THEMES_DIR = themes
POSTS_DIR = posts
PAGES_DIR = static

# Deployment branch for Github
DEPLOY_BRANCH = gh-pages

################################################################################
# USER OPTIONS
################################################################################

AUTHOR_NAME = Eli Gundry

################################################################################
# TARGETS
################################################################################

# Display help commands
help:
	@echo 'Pandapress - Easy static site generation using Pandoc'
	@echo 'Usage: make [command]'
	@echo ''
	@echo 'Available Commands:'
	@echo '    help      display this help message'
	@echo '    all       generate the entire site'
	@echo '    html      compile all posts and pages into the ${PUBLIC_DIR}'
	@echo '    pdf       compile all posts into a single PDF file and individual posts into single PDFs'
	@echo '    epub      compile all posts into an EPub file'
	@echo '    deploy    compiles all and pushes to GitHub pages'
	@echo '    new_post  creates a new post in the ${POSTS_DIR} folder'
	@echo '    new_page  creates a new page in the ${PAGES_DIR} folder'
	@echo '    clean     deletes all generated files'

h: help

# Compile to all targets
all: html pdf epub

# Compile all pages and posts to HTML
html:

# Compile all posts to PDFs
pdf:

# Compile all posts to an EPub
epub:

# Deploy to Github Pages
deploy: all

# Create a new post
new_post:
	touch ${POSTS_DIR}/${name}.md

# Create a new page
new_page:
	touch ${PAGES_DIR}/${name}.md

# Delete all generated files
clean:
