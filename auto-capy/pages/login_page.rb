class LoginPage < Page
  def visit_page
    page.visit(@config['login_page_url'])
  end

  def enter_country_code
    page.find(@selectors['country_code_field']).fill_in with: @config['country_code']
  end

  def enter_phone_number
    page.find(@selectors['phone_number_field']).fill_in with: @config['phone_number']
  end

  def click_next_step_button
    page.find(@selectors['next_button']).click
  end

  def click_confirm_button
    page.find(@selectors['phone_confirm_button']).click
    CodePage.new
  end
end
