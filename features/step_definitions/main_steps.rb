Given /^I am on the home page$/ do
  visit '/'
end

When /^I post a tweet$/ do
  fill_in 'new_message', :with => 'new tweet post'
  click_button 'Post New Message'
end

Then /^I should see my tweet$/ do
  page.should have_content('new tweet post')
end
