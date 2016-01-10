module Jekyll
  class EbookConverter < Converters::Markdown

    def matches(ext)
      ext =~ /^\.mdd$/i
    end

    def convert(content)
      original = super(content)
    end

    def output_ext(_ext)
      ".html"
    end

  end
end
