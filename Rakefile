task :jekyll_build do
  sh "bundle exec jekyll build"
  sh "cp -r images _output/site/defs/"
  sh "cp -r images _output/site/"
end

task :jekyll_build_incremental do
  sh "bundle exec jekyll build --incremental"
  sh "cp -r images _output/site/defs/"
  sh "cp -r images _output/site/"
end

task :kindlegen_images do
  sh "cp -r images _output/dict/"
end

task :kindlegen_full => [:kindlegen_images] do
  sh "bin/kindlegen _output/dict.opf -c2 -verbose -dont_append_source -o gotdict.mobi"
end

task :kindlegen_quick => [:kindlegen_images] do
  sh "bin/kindlegen _output/dict.opf -c0 -verbose -dont_append_source -o gotdict.mobi"
end

task :copy_mobi do
  sh "cp _output/gotdict.mobi _output/site/gotdict.mobi"
end

task :build => [:jekyll_build, :kindlegen_full, :copy_mobi]
task :buildquick => [:jekyll_build_incremental, :kindlegen_quick, :copy_mobi]