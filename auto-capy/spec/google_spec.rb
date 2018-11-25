describe "the search process", type: :feature do
  SEARCH_BUTTON_SELECTOR = '#tsf > div:nth-child(2) > div > div.UUbT9 > div.aajZCb > div > center > input[type="submit"]:nth-child(1)'

  it "searches in Google" do
    visit 'https://www.google.com'

    within '#searchform' do
      fill_in 'q', with: 'cats'
    end

    find(SEARCH_BUTTON_SELECTOR).click
  end
end
