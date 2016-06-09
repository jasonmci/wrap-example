module WrapSteps 

  step 'I am on the registration page' do
    visit('https://www.qa.wrapdev.net')
  end

  step 'I register a personalized account' do 
    register_personal_account
  end

  step 'I am logged in as a registered user' do 
    visit('https://www.qa.wrapdev.net')
    register_personal_account
  end

  step 'the registration process is successful' do
    expect(page).to have_content 'User registered'
  end

  step 'I am on the create a wrap page' do 
    click_link 'CREATE'
  end

  step 'I select a template' do
    click_link 'Templates'
    select_template
  end

  step 'I complete the creation process' do
    complete_wrap
  end

  step 'I publish the wrap' do
    publish_wrap
  end

  step 'a wrap is published' do
    expect(page).to have_content 'Show this Quick Tour every time I publish a Wrap'
  end
end

RSpec.configure { |c| c.include WrapSteps }
