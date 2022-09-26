class CreateAdminService
  def call
    user = User.find_or_create_by!(email: ENV.fetch("ADMIN_EMAIL"){ 'none'}) do |user|
        user.password = ENV.fetch("ADMIN_PASSWORD"){ 'none'}
        user.password_confirmation = ENV.fetch("ADMIN_PASSWORD"){ 'none'}
        user.salute = "I'm Alex Rogna"
        user.short_description = "I have several years of experience in development environment as web designer and programmer. Let's start scrolling and learn more about me. "
        user.name = "Vlad Alexandru Rogna"
        user.street_number = "99"
        user.street_name = "Turners Hill"
        user.city = "Hemel Hempstead"
        user.post_code = "HP2 4LH"
        user.phone = "07424 517 663"
      end
  end
end