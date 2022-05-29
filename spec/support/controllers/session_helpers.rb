module Controllers
  module SessionHelpers
    def sign_in(options = {})
      user = options[:as] || $admin

      allow(controller).to receive(:authenticate_user!).and_return(true)
      allow(controller).to receive(:current_user).and_return(user)
    end
  end
end
