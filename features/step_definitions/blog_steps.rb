Given(/^I am at the home page$/) do
  visit "/"
end

When(/^I press "(.*?)"$/) do |link|
  click_on(link)
end

When(/^I fill the "(.*?)" with "(.*?)"$/) do |textarea, content|
  fill_in(textarea, :with => content)
end

Then(/^I should see "(.*?)"$/) do |content|
  page.should have_content(content)
end

Given(/^I have a post$/) do
  FactoryGirl.create(:post)
end