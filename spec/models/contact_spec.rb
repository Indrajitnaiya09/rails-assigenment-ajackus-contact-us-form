require 'rails_helper'

RSpec.describe Contact, type: :model do
  before(:each) do 
    @contact = build(:contact)
  end
  
  describe '#new' do
    it 'should initialize a contact with valid attributes' do
      expect(@contact.first_name).to eq('Indrajit')
      expect(@contact.last_name).to eq('Naiya')
    end
  end

  describe '#create' do
    it 'should create a contact with valid attributes' do
      expect(@contact.first_name).to eq('Indrajit')
      expect(@contact.last_name).to eq('Naiya')
    end
  end

  context '#validation' do
    describe '#first_name' do
      it 'should invalidate null value' do
        contact = build(:contact, :missing_contact_first_name)
        contact.valid?

        expect(contact.errors[:first_name]).to include("can't be blank")
      end

      it 'should invalidate empty string input' do
        contact = build(:contact, :empty_string_as_contact_first_name)
        contact.valid?

        expect(contact.errors[:first_name]).to include("can't be blank")
      end
      it 'should invalidate special characters string' do
        contact = build(:contact, :invalidate_contact_first_name_with_special_characters)
        contact.valid?

        expect(contact.errors[:first_name]).to include("is invalid")
      end
    end
    describe '#last_name' do
      it 'should invalidate null value' do
        contact = build(:contact, :missing_contact_last_name)
        contact.valid?

        expect(contact.errors[:last_name]).to include("can't be blank")
      end

      it 'should invalidate empty string input' do
        contact = build(:contact, :empty_string_as_contact_last_name)
        contact.valid?

        expect(contact.errors[:last_name]).to include("can't be blank")
      end
      it 'should invalidate special characters string' do
        contact = build(:contact, :invalidate_contact_last_name_with_special_characters)
        contact.valid?

        expect(contact.errors[:last_name]).to include("is invalid")
      end
    end
    describe '#phone' do
      it 'should invalidate null value' do
        contact = build(:contact, :missing_contact_phone)
        contact.valid?

        expect(contact.errors[:phone]).to include("can't be blank")
      end
    end
    describe '#email' do
      it 'should invalidate null value' do
        contact = build(:contact, :missing_contact_email)
        contact.valid?

        expect(contact.errors[:email]).to include("can't be blank")
      end
      it 'should invalidate empty string input' do
        contact = build(:contact, :empty_string_as_contact_email)
        contact.valid?

        expect(contact.errors[:email]).to include("can't be blank")
      end
    end
    describe '#message' do
      it 'should invalidate null value' do
        contact = build(:contact, :missing_contact_message)
        contact.valid?

        expect(contact.errors[:message]).to include("can't be blank")
      end
      it 'should invalidate empty string input' do
        contact = build(:contact, :empty_string_as_contact_message)
        contact.valid?

        expect(contact.errors[:message]).to include("can't be blank")
      end
    end
  end
end