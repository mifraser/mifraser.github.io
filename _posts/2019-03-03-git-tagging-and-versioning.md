---
published: true 
layout: post
title:  "Git tagging and a versioning strategy"
date:   2019-03-03
categories: git
---

Tag a first release on Git! 

Contents:
* TOC
{:toc}

## Tasks involved

- Deciding on a version numbering strategy
- Creating a Git tag
- Optional: Removing/replacing a Git tag

## Software used

- GNU Bash
- [Git](https://git-scm.com) version 2.19.1

## A version numbering strategy

Consider adhering to [semantic versioning](https://semver.org/).
Start with 0.1.0.
The first official (non-beta) public release is 1.0.0.

## Common Git tasks
### Create a Git tag

Official [Git tagging](https://git-scm.com/book/en/v2/Git-Basics-Tagging) documentation.
Say we are following on from the previous post where we [initialised a static hello world website]({{ site.baseurl }}{% post_url 2019-03-01-github-pages %}). 
This code is on the "master" branch and is already live, published and hosted on GitHub Pages.
So tag this first version as "0.1.0".

An example command log: 
{% highlight shell %}
$ pwd
/hdd/github-projects/username.github.io

$ ls
index.html  README.md

$ git branch
* master

# Create an annotated tag here on the "master" branch
$ git tag -a 0.1.0 -m "Hello world for GitHub pages static site"

# List all tags
$ git tag
0.1.0

# Show full annotated deetails of this tag
$ git show 0.1.0
# ...

# Push all new tags to the remote Git repository
$ git push origin --tags
{% endhighlight %}

### Removing/Replacing a Git tag

Optional: What if you made an error and want to re-tag? For example we added a tag "v0.1" and want to replace it with "0.1.0"?

{% highlight shell %}
$ git branch
* master

$ pwd
/hdd/github-projects/username.github.io

# Show existing tags on "master" branch
$ git tag
v0.1

# Add new tag for current code
$ git tag 0.1.0 v0.1

$ git tag
v0.1
0.1.0

$ git show 0.1.0
tag v0.1
...
Hello world for GitHub pages static site
... (HEAD -> master, tag: 0.1.0, tag: v0.1, origin/master, origin/HEAD)
...

# Push new "0.1.0" tag to the remote Git repo
$ git push --tags
...
 * [new tag]         0.1.0 -> 0.1.0

# Remove "v0.1" tag from the remote repo
$ git push origin :refs/tags/v0.1
...
 - [deleted]         v0.1

# Remove "v0.1" tag from your local repo
$ git tag -d v0.1
Deleted tag 'v0.1' (was 515b172)

$ git tag
0.1.0

$ git show 0.1.0
tag v0.1
...
Hello world for GitHub pages static site
... (HEAD -> master, tag: 0.1.0, origin/master, origin/HEAD, develop)
...
{% endhighlight %}
