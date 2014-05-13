module ApplicationHelper
  def currency_cl(number)
    number_to_currency(number, precision: 0, separator: "." , delimiter: ".", negative_format: "(%u%n)", format: "%u%n" )
  end
end
