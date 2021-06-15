module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :username, String, null: true
    field :email, String, null: true 
    field :cryptos, [Types::CryptoType], null: true 
    field :cryptos_count, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false 

    def cryptos_count 
      object.cryptos.count 
    end 
  end
end
