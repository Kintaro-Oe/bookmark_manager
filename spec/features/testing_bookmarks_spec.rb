feature 'Testing bookmarks' do
  scenario 'view bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content 'Your bookmarks:'
  end
end
