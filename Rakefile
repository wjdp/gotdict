task :build do
  sh "bundle exec jekyll build"
  sh "bin/kindlegen _output/dic.opf -c2 -verbose -dont_append_source -o gotdict.mobi"
  sh "mkdir _output/site/defs/images"
  sh "cp images/* _output/site/defs/images/."
  sh "cp _output/gotdict.mobi _output/site/gotdict.mobi"
end
