Given(/^I am on home page$/) do
  @browser.goto('www.wonderof.asia')
  expect(@browser.title).to eq('Wonder of Asia')
end
