class AddConfirmEmailToContactForms < ActiveRecord::Migration[6.1]
  def change
    add_column :contact_forms, :confirm_email, :string
  end
end
