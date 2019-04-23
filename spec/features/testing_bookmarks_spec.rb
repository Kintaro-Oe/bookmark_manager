feature 'Testing bookmarks' do
  scenario 'view bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content 'Your bookmarks:'
    expect(page).to have_content 'github.com'
    expect(page).to have_content 'gmail.com'
    expect(page).to have_content 'google.co.uk'
  end
end
