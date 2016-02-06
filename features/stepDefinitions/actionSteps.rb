
When(/^I (?:select|have selected) the (.*) from the search results$/) do |path|
  first(:xpath, "//div[@id=\"searchResults\"]/a[contains(@href, '#{page_name(path.split(' '))}')]").click
end

def click_button_with_text(button_text)
  find("button", text: button_text).click
end

When(/^add(?:ed)? the item to my cart$/) do
  click_button_with_text("Add to Cart")
end

When(/^I click the "(.*?)" link$/) do |link_text|
  click_link link_text
end

When(/^I don't see my size$/) do
  click_link "Don't see your size?"
end

When(/^I select size (\d+) and width (.*)$/) do |size, width|
  select (size)
  select (width)
end
