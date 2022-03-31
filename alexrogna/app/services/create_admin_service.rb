class CreateAdminService
  def call
    user = User.find_or_create_by!(email: ENV.fetch("ADMIN_EMAIL"){ 'none'}) do |user|
        user.password = ENV.fetch("ADMIN_PASSWORD"){ 'none'}
        user.password_confirmation = ENV.fetch("ADMIN_PASSWORD"){ 'none'}
      end
  end
end