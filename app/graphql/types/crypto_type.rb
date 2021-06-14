module Types
  class CryptoType < Types::BaseObject
    field :id, ID, null: false
    field :ticker, String, null: true
    field :price, Float, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :user_id, Integer, null: false
  end
end
