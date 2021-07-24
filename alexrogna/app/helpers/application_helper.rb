module ApplicationHelper
  def verbose_date(date)
    date.strftime('%B %Y')
  end
  def is_admin(user)
    if user==User.first
      true
    end
  end
end
