require 'rails_helper'

RSpec.describe Admin::SolarPanelsController, type: :controller do

	describe "Add Solar panel" do 
		it "creates a product, solar panel" do
			post :create, solar_panel: {name: "100 W"}
      expect(reponse).to redirect_to(admin_solar_panels_path)
    end
  end
end