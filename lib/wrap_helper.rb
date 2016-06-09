module WrapHelper

  def step_one(email)
    within("div.signup") do
      fill_in "Email", :with => email
      click_button 'Sign Up'
    end
  end

  def step_two(username)
    within("div.auth-page") do
      fill_in 'Create a username', :with => username
      fill_in 'Password', :with => 'CatchMeIfYouCan'
      post 'https://api.qa.wrapdev.net/api/users/check_account', { :client_id => 'authoring', :username => username }
      expect_status '200'
      click_button 'Create account'
      if has_content?("Username is not available")
        click_button 'Create account'
      end
    end
  end

  def step_three
    within("div.auth") do
      fill_in 'First Name *', :with => Faker::Name.first_name
      fill_in 'Last Name *', :with => Faker::Name.first_name
      fill_in 'Company *', :with => Faker::Company.name
      fill_in 'Phone Number', :with => Faker::PhoneNumber.phone_number
      click_button 'Create account'
    end
  end

  def register_personal_account
    within("li#freeTrial") do
      click_link 'free trial'
    end

    email    = Faker::Internet.safe_email
    username = email.gsub(/[@\._]/, '_')
    binding.pry
    click_link 'Sign Up', match: :first

    step_one(email)
    step_two(username)
    step_three

    username
  end

  def select_template 
  end

  def complete_wrap
  end

  def create_a_wrap
    click_link 'CREATE'
    select_template
    complete_wrap
  end

end

