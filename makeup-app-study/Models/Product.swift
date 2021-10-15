import Foundation
import SwiftUI

struct Product: Hashable, Decodable {
  var id: Int
  var brand: String
  var name: String
  var price: String
  var price_sign: String!
  var currency: String!
  var image_link: String!
  var product_link: String!
  var website_link: String!
  var description: String!
  var rating: Float!
  var category: String!
  var product_type: String!
  var tag_list: Array<String>
  var created_at: String
  var updated_at: String
  var product_api_url: String
  var api_featured_image: String
  var product_colors: Array<ColorProduct>
}

struct ColorProduct: Hashable, Codable {
  var hex_value: String!
  var colour_name: String!
}
