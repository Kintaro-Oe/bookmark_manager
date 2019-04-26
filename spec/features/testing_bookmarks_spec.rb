feature 'Testing bookmarks' do
  scenario 'view bookmarks' do
    populate_table
    visit '/bookmarks'
    expect(page).to have_content 'Your bookmarks:'
    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.destroyallsoftware.com'
    expect(page).to have_content 'http://www.google.com'
  end
  scenario 'add bookmarks' do
    populate_table
    visit '/bookmarks'
    fill_in('url', with: 'http://www.example.com')
    click_button('Submit')
    expect(page).to have_content 'http://www.example.com'
  end
end
