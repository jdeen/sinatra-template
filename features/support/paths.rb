module NavigationHelpers
  def path_to(page_name)
    case page_name
    when /home page/
      '/'
    else
      raise ArgumentError, "Cannot find mapping for #{page_name}"
    end
  end
end
