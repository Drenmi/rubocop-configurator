# frozen_string_literal: true

Hanami::Model.migration do
  change do
    create_table :rubocop_releases do
      primary_key :id

      column :tag_name, String, null: false, unique: true

      column :published_at, DateTime, null: false
      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
