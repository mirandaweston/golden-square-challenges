require 'password_checker'

RSpec.describe PasswordChecker do
    context "when password length is less than eight characters" do
        it "fails" do
            password = PasswordChecker.new
            expect { password.check("hi") }.to raise_error "Invalid password, must be 8+ characters."
        end
    end
end