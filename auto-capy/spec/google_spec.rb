$stdout.sync = true

describe "the search process", type: :feature do
  SEARCH_BUTTON_SELECTOR = '#tsf > div:nth-child(2) > div > div.UUbT9 > div.aajZCb > div > center > input[type="submit"]:nth-child(1)'

  TELEGRAM_CHAT_PAGE = 'https://web.telegram.org/#/im?p=s1277475926_17771682022850678792'
  TELEGRAM_TEXTAREA = '.composer_rich_textarea'
  TELEGRAM_SEND_BUTTON = '.im_submit_send_label'
  TELEGRAM_PHONEAREA = '.md-input.ng-pristine[name="phone_number"]'
  TELEGRAM_NEXT_LOGIN_STEP = '.login_head_submit_btn'
  TELEGRAM_OK = '.btn-md-primary'
  TELEGRAM_CODE_AREA = '[name="phone_code"]'

  # it "searches in Google" do
  #   visit 'https://www.google.com'
  #
  #   puts 'give me search criteria'
  #   search_word = gets.chomp
  #
  #   within '#searchform' do
  #     fill_in 'q', with: search_word
  #   end
  #
  #   find(SEARCH_BUTTON_SELECTOR).click
  # end

  # it "reminds about homework" do
  #   visit TELEGRAM_CHAT_PAGE
  #   find(TELEGRAM_PHONEAREA).set('668823700')
  #   find(TELEGRAM_NEXT_LOGIN_STEP).click
  #   find(TELEGRAM_OK).click
  #
  #   code = gets.chomp
  #   find(TELEGRAM_CODE_AREA).set(code)
  #
  #   visit TELEGRAM_CHAT_PAGE
  #   find(TELEGRAM_TEXTAREA).set('do your homework')
  #   find(TELEGRAM_SEND_BUTTON).click
  # end
end
