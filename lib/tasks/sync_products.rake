namespace :sync_products do
    desc "Sync products from Fake Store API"
    task fetch: :environment do
      api = FakeStoreApi.new
      products = api.fetch_products.parsed_response
  
      products.each do |product_data|
        Product.find_or_create_by(
          name: product_data['title'],
          description: product_data['description'],
          price: product_data['price']
        )
      end
    end
  end
  