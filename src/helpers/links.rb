class DLite < Sinatra::Base

  # @fn         def link link, locale_prefix = true {{{
  # @brief      We are interested in giving the locale url by default
  def link link, locale_prefix = true
    if locale_prefix
      "/#{@locale}#{link}"
    else
      link
    end
  end # }}} 

end
