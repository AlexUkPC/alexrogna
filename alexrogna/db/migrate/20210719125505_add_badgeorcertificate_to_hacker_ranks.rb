class AddBadgeorcertificateToHackerRanks < ActiveRecord::Migration[6.1]
  def change
    add_column :hacker_ranks, :badgeorcertificate, :text
  end
end
