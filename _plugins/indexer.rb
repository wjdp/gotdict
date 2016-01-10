module Jekyll
  class Indexer < Generator
    priority :highest

    def generate(site)
      Jekyll.logger.info "indexer:", "Indexing definitions"
      defs = people = site.collections["definitions"].docs

      site.data["definitions_by_term"] = Hash.new
      d_by_t = site.data["definitions_by_term"]

      site.data["characters_by_house"] = Hash.new
      c_by_house = site.data["characters_by_house"]

      defs.each do |d|
        if d.data.include? "house" then
          (c_by_house[d.data["house"]] ||= []).push(d) end
      end

    end
  end
end
