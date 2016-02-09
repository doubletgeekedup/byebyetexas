Given(/^I am at Zappos\.com$/) do
  visit "http://www.zappos.com" 
end

When(/^I am on the (.*) page$/) do |path|
  case path
  when "Men's Shoes"
    visit "/mens-shoes"
  when "Athletic Men's Shoes"
    visit "/men-shoes~1y"
  when "Inov-8 Men's Shoes"
    visit "/men-shoes~1y#!/inov-8-men-shoes/CK_XAToC6xJaArsMwAEC4gIEGAcBCw.zso?s=goliveRecentSalesStyle/desc/"
  else
    visit "/"
  end
end
