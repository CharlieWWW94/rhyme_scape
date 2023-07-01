# frozen_string_literal: true

ROM::SQL.migration do
  change do
    create_table :poems do
      primary_key :id
      column :title, :text, null: false
      column :author, :text, null: false, default: "Anonymous"
      column :body, :text, null: false
      column :prompt, :text, null: false
    end
  end
end
