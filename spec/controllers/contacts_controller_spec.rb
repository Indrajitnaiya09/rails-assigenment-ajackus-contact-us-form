require 'rails_helper'

RSpec.describe ContactsController, type: :controller do

    contact_attributes = {
        first_name: 'Indrajit',
        last_name: 'Naiya',
        email: 'indrajitnaiya09@gmail.com',
        phone: 9036524919,
        message: "Lorem Ipsum is simply dummy text of the printing and typesetting industry"
    }

    describe 'GET new' do
        it 'has a 200 status code' do
            get :new
            expect(response.status).to eq(200)
        end
    end

    describe 'POST create' do
        it 'it should redirect to show page of profile' do
            post :create, params: { contact: contact_attributes }
            expect(response.status).to eq(302)
        end
    end
end