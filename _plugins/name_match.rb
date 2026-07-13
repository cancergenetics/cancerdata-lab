require 'liquid'

module Jekyll
  module NameMatch
    # Normalise an author/member name for robust matching:
    # collapse all whitespace (incl. non-breaking spaces), drop periods,
    # downcase. Manubot emits "First<NBSP>Initial" and varies "J." vs "J",
    # so exact string matching misses lab members; normalising both sides fixes it.
    def name_key(name)
      return "" if name.nil?
      name.to_s
        .gsub(".", "")
        .downcase
        .gsub(/[[:space:] ]+/, " ")
        .strip
    end
  end
end

Liquid::Template.register_filter(Jekyll::NameMatch)
