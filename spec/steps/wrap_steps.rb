module WrapSteps 

  step 'I am on the registration page' do
    visit('https://www.qa.wrapdev.net')
  end

  step 'I register a personalized account' do 
    @username = register_personal_account
  end

  step 'I am logged in as a registered user' do 
    visit('https://www.qa.wrapdev.net')
    @username = register_personal_account
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

  step 'I have a wrap' do
    @wrap_name = create_a_wrap
  end

  step 'I publish a wrap' do
    publish_wrap
  end

  step 'a wrap is created' do 
  end
  
  step 'the wrap is available' do
  end

end

RSpec.configure { |c| c.include WrapSteps }
