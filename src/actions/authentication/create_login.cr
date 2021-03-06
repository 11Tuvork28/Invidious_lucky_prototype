class Authentication::Login < BrowserAction
  include Auth::RedirectSignedInUsers

  post "/sign_in" do
    SignInUser.run(params) do |operation, authenticated_user|
      if authenticated_user
        sign_in(authenticated_user)
        Authentic.redirect_to_originally_requested_path(self, fallback: Feed::Index)
      else
        flash.failure = "Sign in failed"
        html Authentication::SignIn, operation: operation, assert_commits: "", modified_source_code_url: "modified_source_code_url", version_string: "version_string"
      end
    end
  end
end
