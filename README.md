# GOTDict

[![Build Status](https://travis-ci.org/wjdp/gotdict.svg?branch=master)](https://travis-ci.org/wjdp/gotdict)

A community built Kindle dictionary for A Song of Ice and Fire based on the work of [KEC Krew](http://keckrew.blogspot.co.uk/2013/06/game-of-thrones-kindle-dictionary.html). While a number of characters have X-Ray entries this dictionary aims to be much more extensive having information on houses, locations, ships, maps and much more. See http://wjdp.github.io/gotdict/ for more details and install instructions.

## Contributing

This project needs help to improve the quality and quantity of the entries.

- Please [submit issue reports](https://github.com/wjdp/gotdict/issues/new) for all problems with the dictionary.
- Please fork and submit PRs to contribute directly. Guidelines for entries will be drafted soon.

This project draws upon openly licensed content - mainly from [awoiaf.westeros.org](http://awoiaf.westeros.org) - and uses their licence [CC BY-SA](http://creativecommons.org/licenses/by-sa/3.0/). The full source and build scripts are on GitHub and are similarly openly licensed.

## Project structure

- `_definitions` contains each entry in the dictionary as a [Markdown file](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet), each contains a little [YAML frontmatter](http://jekyllrb.com/docs/frontmatter/) for attributes such as the title. A list of these is shown below
  - `title`: the title of the definition
  - `inflections`: a list of inflections, other forms of the title that will be recognised in-book
- `images\` contains all images

Other files are used in the generation of the MOBI file.

## Building from source

The [Jekyll](https://jekyllrb.com) static site generator is used to build the dictionary which is then passed to kindlegen to be converted into a MOBI file.

You will need a [Ruby](https://www.ruby-lang.org/) environment with [bundler](http://bundler.io/) and the kindlegen executable from Amazon. The following will get you this on a Linux box:

```
bundle install
mkdir -p bin tmp/kindlegen
curl http://kindlegen.s3.amazonaws.com/kindlegen_linux_2.6_i386_v2_9.tar.gz > tmp/kindlegen.tar.gz
tar zxvf tmp/kindlegen.tar.gz -C tmp/kindlegen
mv tmp/kindlegen/kindlegen bin/
```

To build run `bundle exec rake build`. All output is within `_output/`, the compiled MOBI is `_output/gotdict.mobi`.

## Releases

When a certain number of edits have happened (arbitrary number TBD) or some time has passed (arbitrary duration TBD) and the project is in good standing (no unresolved blocker bugs) a release will be made. If a commit gets on master with a version tag Travis will upload the build to GitHub. A better description than Travis leaves should then be added to it.

## Links

- https://kindlegen.s3.amazonaws.com/AmazonKindlePublishingGuidelines.pdf
