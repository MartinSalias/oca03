Given(/^voy al sitio$/) do
  visit '/'
end

Then(/^veo ok "(.*?)"$/) do |titulo|
  last_response.body.should =~ /#{titulo}/m
end

When(/^ingresa 4 "(.*?)"$/) do |name|
  click_button(name)
end

