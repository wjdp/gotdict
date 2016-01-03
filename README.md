# GOTDict

[![Build Status](https://travis-ci.com/wjdp/gotdict.svg?token=sKdtjFnTpCtrxW67g7nf&branch=master)](https://travis-ci.com/wjdp/gotdict)

A community built Kindle dictionary for A Song of Ice and Fire based on the work of [KEC Krew](http://keckrew.blogspot.co.uk/2013/06/game-of-thrones-kindle-dictionary.html). While a number of characters have X-Ray entries this dictionary aims to be much more extensive having information on houses, locations, ships, maps and much more. See http://wjdp.github.io/gotdict/ for more details and install instructions.

## Contributing

This project needs help to improve the quality and quantity of the entries.

- Please [submit issue reports](https://github.com/wjdp/gotdict/issues/new) for all problems with the dictionary.
- Please fork and submit PRs to contribute directly. Guidelines for entries will be drafted soon.

This project draws upon openly licensed content - mainly from [awoiaf.westeros.org](http://awoiaf.westeros.org) - and uses their licence [CC BY-SA](http://creativecommons.org/licenses/by-sa/3.0/). The full source and build scripts are on GitHub and are similarly openly licensed.

## Project Structure

- `_definitions` contains each entry in the dictionary as a [Markdown file](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet), each contains a little [YAML frontmatter](http://jekyllrb.com/docs/frontmatter/) for attributes such as the title. A list of these is shown below
  - `title`: the title of the definition
  - `inflections`: a list of inflections, other forms of the title that will be recognised in-book
- `images\` contains all images

Other files are used in the generation of the MOBI file.

## Links

- https://kindlegen.s3.amazonaws.com/AmazonKindlePublishingGuidelines.pdf
