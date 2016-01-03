require 'kindlegen'

task :build do
  sh "bundle exec jekyll build"
  sh "./kindlegen _output/dic.opf -c2 -verbose -dont_append_source -o gotdict.mobi"
  sh "xdg-open _output/gotdict.mobi"
  # Kindlegen.run("dic.opf", "-c2", "-verbose", "-dont_append_source", "-o", "dic-test.mobi")
end

task :test do
  # sh "bundle exec jekyll build --profile"
  Kindlegen.run("dic.opf", "-o", "dic-test.mobi")
end
