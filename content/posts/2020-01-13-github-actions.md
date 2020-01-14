---
title: GitHub Actions
date: 2020-01-13T19:18:24-05:00
featured_image: /images/github-logo.svg
---

When the [blog post][] went out about GitHub Actions I didn't notice it but today I got a nice brain dump about them.

[blog post]: https://github.blog/2018-10-17-action-demos/

My understanding is that GitHub Actions are all about Docker. You specify which Docker images you want to run and which commands to run within them. The example we were looking at builds a site using Jekyll and then pushes the static files to the master branch:

```
name: Build and deploy
on:
  push:
    branches: develop
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
    - name: Build
      uses: docker://jekyll/jekyll
      with:
        entrypoint: bash
        args:  -c "/usr/local/bin/bundle install && /usr/local/bin/bundle exec jekyll build"
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
    - name: Deploy
      run: |
        sudo chown -R $(whoami):$(whoami) .
        git config --global user.email "$GITHUB_ACTOR@users.noreply.github.com"
        git config --global user.name "$GITHUB_ACTOR"
        cp -r _site /tmp
        git checkout master
        rm -rf *
        mv /tmp/_site/* .
        git add --all --force
        git commit --allow-empty-message --message "$(git log $(git rev-parse origin/develop) --oneline --format=%B -n1 | head -n1)"
        git remote set-url origin "https://$GITHUB_ACTOR:${{ secrets.GITHUB_TOKEN }}@github.com/$GITHUB_REPOSITORY"
        git push --force origin master
```
