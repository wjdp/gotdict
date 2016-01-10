module Jekyll
  class DefDataGenerator < Generator
    priority :normal

    def generate(site)
      Jekyll.logger.info "defs:", "Generating definition data"
      defs = people = site.collections["definitions"].docs

      d_by_t = site.data["definitions_by_term"]
      c_by_house = site.data["characters_by_house"]

      defs.each do |d|
        # Set ID
        d.data["id"] = d.basename_without_ext

        # Set key
        if d.data["type"] == "house"
          if not d.data.include? "key" then
            d.data["key"] = "#{d.data["title"]}".sub("House ", "") end
        else
          if not d.data.include? "key" then
            d.data["key"] = "#{d.data["title"]}" end
        end

        # Add terms to index
        terms = [d.data["title"]] + (d.data["terms"] || [])
        terms.each { |term| (d_by_t[term] ||= []).push(d) }

        # Add houses to index
        if c_by_house.include? d.data["key"]
          d.data["members"] = c_by_house[d.data["key"]]
        end

      end

    end
  end
end
