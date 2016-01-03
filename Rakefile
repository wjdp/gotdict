task :build do
  sh "bundle exec jekyll build"
  sh "bin/kindlegen _output/dic.opf -c2 -verbose -dont_append_source -o gotdict.mobi"
end
