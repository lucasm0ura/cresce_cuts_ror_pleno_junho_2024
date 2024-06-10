# app/services/fake_store_api.rb
class FakeStoreApi
    include HTTParty
    base_uri 'https://fakestoreapi.com'
  
    def fetch_products
      self.class.get('/products')
    end
  end
  