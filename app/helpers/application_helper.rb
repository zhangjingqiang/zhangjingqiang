module ApplicationHelper
  def copyright_year
    case Time.now.year
    when 2015 then '2015'
    else
      '2015 - ' + Time.now.year.to_s
    end
  end
end
