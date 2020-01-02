# Hugo v0.62.1
all:
	rm -rf public && hugo --config .config.toml && rsync -avz --delete public/ /var/www/blog.greptilian.com/
clean:
	rm -rf public
