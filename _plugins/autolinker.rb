module Jekyll
  class Autolinker < Generator
    priority :lowest

    def generate(site)
      if site.config["skip_autolinker"]
        Jekyll.logger.warn "autolinker:", "skipping"
        return false
      end

      Jekyll.logger.info "autolinker:", "Autolinking"
      defs = people = site.collections["definitions"].docs

      d_by_t = site.data["definitions_by_term"]
      Jekyll.logger.info "autolinker:", "#{defs.size} defs, #{d_by_t.size} terms in index"
      # We must sort to link long strings before short (i.e. Brandon Stark
      # should be one link, not two).
      sorted_d_by_t = Hash[d_by_t.sort_by { |k, v| -k.length }]

      Jekyll.logger.info "autolinker:", "index sorted"
      i = 0
      il = 0

      defs.each do |d|
        sorted_d_by_t.each do |term, documents|
          # If term present and it's not in the title or terms
          terms = (d.data["terms"] || [])
          if not (d.data["title"].include? term or terms.include? term) and d.content.include? term
            # This  bit of regex matches terms that are not already linked!
            # Without we get links within links, super bad
            searchstring = /#{Regexp.escape(term)}(?![A-Za-z])(?![\w (),’'-.]*\])/
            res = d.content.gsub!(searchstring, "[#{term}](##{documents[0].data["id"]})")
            il+=1 if res
          end
        end

        i+=1
        Jekyll.logger.info "autolinker:", "#{i} defs processed (#{((i.to_f/defs.size)*100).round(0)}%), #{il} links created" if i%100 == 0
      end
      # done
    end
  end
end
