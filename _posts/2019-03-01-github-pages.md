---
published: true 
layout: post
title:  "Initialising a static website hosted on GitHub Pages"
date:   2019-03-01 15:23:31 -0600
categories: git
---

This post covers how to create a basic "Hello, world!" HTML page and publish the static website on GitHub Pages for public viewing.
This could be the first step towards producing a static website. 
Something like this very website for example!   

Contents:
* TOC
{:toc}

## Tasks involved

- Develop a basic "Hello, world!" HTML page
- Create a new Git repository on GitHub
- Publish the new website on GitHub pages

## Software used

- Linux
- GNU Bash
- [Git](https://git-scm.com) version 2.19.1

## Method

Login to [GitHub](https://github.com/). 
If you do not already have an account then you'll need to review their terms of service and create one.

Add a user site to be hosted on [GitHub Pages](https://pages.github.com/) named "username.github.io" **where "username" exactly matches your GitHub username**.
Start with a basic [hello world](https://guides.github.com/activities/hello-world) site consisting of a README.md and an index.html page.
When the code is commited and pushed into Git version control on the "master" branch it will be published automatically.

## Example command log 

The method described above should give you all the necessary information on how to do this.
But at the time of writing, the shell output below gives an example approach for creating a public (open source) user site:

{% highlight shell %}
# Login to GitHub https://github.com/
# Create a new "username.github.io" repo using https://github.com/new
# where "username" is your GitHub username

# Clone your newly created repository files into a "username.github.io" 
# directory inside your current working directory
$ git clone https://github.com/username/username.github.io

$ cd username.github.io/

$ ls
README.md

# Create the basic index HTML page
$ echo "Hello, world!" > index.html

$ git status
On branch master
Your branch is up-to-date with 'origin/master'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)

	index.html

nothing added to commit but untracked files present (use "git add" to track)

$ git add --all

$ git commit -m "Initial commit"

$ git push -u origin master
{% endhighlight %}

You should now be able to view your https://username.github.io site in a web browser and see "Hello, world!".
Any code commited and pushed to the "master" branch is automatically published.
