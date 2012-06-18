Given /^I go to the Google$/ do
  visit '/ncr'
end

When /^I enter (\d+) \+ (\d+) into the search box$/ do |number1, number2|
  term = "#{number1} + #{number2}"
  fill_in 'q', :with => term
end

Then /^the result should be (\d+) on the screen$/ do |result|
  page.should have_content result
end
