
When(/^I ask to be notified when size (.*) width (.*) is in stock$/) do |size, width|
  within_window(windows.last) do
    fill_in("email", with: "shopper@shoes.com")
    select '12'
    select 'EE - Wide'
    click_button_with_text("NOTIFY ME!")
  end
end

Then(/^I should see a notification message for size (.*) width (.*)$/) do |size, width|
  within_window(windows.last) do
    expect(page).to have_content("THANK YOU!")
    expect(page).to have_content("We'll send you an email at shopper@shoes.com if the following combination becomes available:")
    expect(page).to have_content("SIZE:  #{size}")
    expect(page).to have_content("WIDTH:  #{width}")
  end
end
