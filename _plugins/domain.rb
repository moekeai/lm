require 'liquid'

module DomainFilter

  # Return the url's domain name
  def domain(url)
    return url.sub(%r{([a-z]+://)?([^/]*)(/.*$)?}i, '\\2')
  end

end

Liquid::Template.register_filter(DomainFilter)