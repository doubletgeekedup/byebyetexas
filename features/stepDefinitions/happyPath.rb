
def page_name(args)
  args.map {|a| a.downcase.gsub(/[^a-z]/, '')}.join('-')
end

Then(/^I should be on the (.*) page$/) do |path|
  expect(page.current_url).to match("#{page_name(path.split(' '))}")
end

Then(/^the (.*) window should open$/) do |text|
  expect(page.driver.browser.window_handles.count).to eq(2)
  within_window(windows.last) do
    expect(page).to have_content(text)
  end
end

Then(/^I should see helpful messages reminding me to select a size and width$/) do
  expect(page).to have_text("Please select a size")
  expect(page).to have_text("Please select a width")
  expect(page).to have_link("Don't see your size?")
end

Then(/^I should only see (.*) brand items/) do |brand|
  all('a.product').each {|tag| expect(tag.text).to match(brand)}
end

Then(/^I should see a message confirming that I have (.*) item(s?) in my cart$/) do |count, s|
  expect(page).to have_content("You have #{count} item#{s} in your shopping cart")
end
