---
published: true 
layout: post
title:  "Initialising a static website hosted on GitHub Pages"
date:   2019-03-01 15:23:31 -0600
categories: git
---

In this post I'll describe how to create a basic "Hello World" HTML page and publish the static website on GitHub Pages for public viewing.
This could be the first step towards producing a static website. 
Something like this blog for example!   

Contents:
* TOC
{:toc}

## Tasks involved

- Develop a basic "Hello World" HTML page
- Create a new public Git repository on GitHub
- Host the new website on GitHub pages and publish

## Software used

- GNU Bash
- [Git](https://git-scm.com) version 2.19.1

## Method

Login to [GitHub](https://github.com/). 
If you do not already have an account then you'll need to review their terms of service and create one.

The shell output below adds a user site to be hosted on [GitHub Pages](https://pages.github.com/) named "username.github.io".
Start with a basic [hello world](https://guides.github.com/activities/hello-world) site consisting of a README.md and an index.html page.
You could commit the code to into Git version control on your "master" (default) branch which will automatically be published.

## Example command log 

There is nothing new here, the links in the method above should give you all the latest detailed up-to-date information on how to do this!
But the shell output below logs an example approach for creating a public (open source) user site.

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
$ echo "Hello World" > index.html

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

You should now be able to view your https://username.github.io site in a web browser and see the "Hello World" text.
Any code commited and pushed to the "master" branch is automatically published.
