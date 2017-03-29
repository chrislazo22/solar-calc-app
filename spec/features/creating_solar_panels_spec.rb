require 'rails_helper.rb'

feature 'Creating Solar Panel' do 
  scenario 'can create solar panel' do
    visit '/solar_panels'
    click_link 'New Solar Panel'
    fill_in 'Cell Type', with: 'Mono or Poly'
    fill_in 'Wattage', with: '100'
    fill_in 'Voltage', with: '21.5'
    attach_file('Image', 'app/assets/images/100W.jpg')
    click_button 'Add Solar Panel'
    excpet(page).to have_content('solar panel')
    excpet(page).to have_css("img[src*='100W.jpg']")
  end
end
