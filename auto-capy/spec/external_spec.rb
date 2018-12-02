$stdout.sync = true
describe "the greet process", type: :feature do

  it "Loging in to Telegram" do
    login_page = LoginPage.new

    login_page.visit_page
    login_page.enter_country_code
    login_page.enter_phone_number
    login_page.click_next_step_button
    code_page = login_page.click_confirm_button

    code_page.annotate_user_interaction
    code_page.obtain_code_from_user
    code_page.enter_code

    chat_page = ChatPage.new
    chat_page.visit_chat('https://web.telegram.org/#/im?p=s1277475926_17771682022850678792')
    chat_page.submit_message(CONFIG.message)
  end
end
