---
published: true 
layout: post
title:  "Git branching and stashing"
date:   2019-03-07
categories: git
---

Some notes on Git usage! 

Contents:
* TOC
{:toc}

## Tasks involved

- Deciding on a Git branching strategy
- Stashing changes for later

## Software used

- GNU Bash
- [Git](https://git-scm.com) version 2.19.1

## A Git branching strategy

See an example Git branching model as described in [nvie.com](https://nvie.com/posts/a-successful-git-branching-model). 

## Common Git tasks
### Stashing changes for later

How to [stash changes for later](https://git-scm.com/book/en/v1/Git-Tools-Stashing).
For example, if you are on the "develop" Git branch and you want to set aside the current contents of /hdd/github-projects/username.github.io for later.
You are then free to do something else and can reinstate the stashed changes at a later date.

{% highlight shell %}
$ pwd
/hdd/github-projects/username.github.io

$ git status
On branch develop
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	new file:   .gitignore
	new file:   404.html
	new file:   Gemfile
	new file:   LICENSE
	new file:   _config.yml
	new file:   _posts/2019-02-26-welcome-to-jekyll.markdown
	new file:   about.md
	new file:   index.md

Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   Gemfile
	deleted:    index.html

Untracked files:
  (use "git add <file>..." to include in what will be committed)

	to.delete.index.html

$ git stash
Saved working directory and index state WIP on develop: a6a0ae8 Initial commit

$ git status
On branch develop
Untracked files:
  (use "git add <file>..." to include in what will be committed)

	.sass-cache/
	Gemfile.lock
	_site/

nothing added to commit but untracked files present (use "git add" to track)

$ git stash list
stash@{0}: WIP on develop: a6a0ae8 Initial commit
{% endhighlight %}

### Reinstating previously stashed changes

For example, you are now back on the "develop" branch and want to reinstate the changes you stashed earlier back into: /hdd/github-projects/username.github.io

{% highlight shell %}
$ pwd
/hdd/github-projects/username.github.io

$ git branch
* develop
 master

$ ls
README.md  index.html

$ git stash list
stash@{0}: WIP on develop: a6a0ae8 Initial commit

$ git stash apply stash@{0}
Removing index.html
On branch develop
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	new file:   .gitignore
	new file:   404.html
	new file:   Gemfile
	new file:   LICENSE
	new file:   _config.yml
	new file:   _posts/2019-02-26-welcome-to-jekyll.markdown
	new file:   about.md
	new file:   index.md

Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	deleted:    index.html

$ ls
404.html  about.md  _config.yml  Gemfile  Gemfile.lock  index.md  LICENSE  _posts  README.md  _site
{% endhighlight %}
