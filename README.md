# mifraser.github.io

## How to run

GitHub Pages static website using Jekyll and the default Minima theme.

```
cd mifraser.github.io

# To run Jekyll using Docker
$ docker run --rm -v=$PWD:/srv/jekyll -p 4000:4000 -it jekyll/jekyll /bin/bash

# Which is equivalent to
# $ ./run-jekyll-docker.sh

# Now run the site
bash-4.4# jekyll serve --force_polling

```

Now open the application in your web browser:
- Home page: http://localhost:4000
- About: http://localhost:4000/about
- Portfolio: http://localhost:4000/portfolio

## Screenshots

### Home page

Website home page:

![Screenshot]({{ site.baseurl }}/assets/images/home_screenshot.png)

## Further Information

See also [CHANGELOG.md](CHANGELOG.md) and [LICENSE](LICENSE).
