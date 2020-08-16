class RenameQuoteToPublisher < ActiveRecord::Migration[6.0]
  def change
    rename_table :quotes, :publishers
  end
end
