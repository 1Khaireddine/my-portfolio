require 'rails_helper'

RSpec.describe User, type: :model do
  describe "database schema" do
    it { should have_db_column( :id                       ).of_type( :integer  ) }
    it { should have_db_column( :email                    ).of_type( :string   ) }
    it { should have_db_column( :sign_in_count            ).of_type( :integer  ) }
    it { should have_db_column( :current_sign_in_at       ).of_type( :datetime ) }
    it { should have_db_column( :last_sign_in_at          ).of_type( :datetime ) }
    it { should have_db_column( :current_sign_in_ip       ).of_type( :string   ) }
    it { should have_db_column( :last_sign_in_ip          ).of_type( :string   ) }
    it { should have_db_column( :confirmation_token       ).of_type( :string   ) }
    it { should have_db_column( :confirmed_at             ).of_type( :datetime ) }
    it { should have_db_column( :confirmation_sent_at     ).of_type( :datetime ) }
    it { should have_db_column( :unconfirmed_email        ).of_type( :string   ) }
    it { should have_db_column( :first_name               ).of_type( :string   ) }
    it { should have_db_column( :last_name                ).of_type( :string   ) }
    it { should have_db_column( :encrypted_password       ).of_type( :string   ) }
    it { should have_db_column( :reset_password_token     ).of_type( :string   ) }
    it { should have_db_column( :reset_password_sent_at   ).of_type( :datetime ) }
    it { should have_db_column( :remember_created_at      ).of_type( :datetime ) }
    it { should have_db_column( :created_at               ).of_type( :datetime ) }
    it { should have_db_column( :updated_at               ).of_type( :datetime ) }
  end

  describe "Add new user" do
    subject { create(:user) }
    it "Add user" do
      expect(User.all.count).to eq 1
    end
  end

end
