import Foundation

let API_MAKEUP = "http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline"

func sendRequestProducts(completion: @escaping ([Product])-> Void) {
  let url = URL(string: API_MAKEUP)!
  URLSession.shared.dataTask(with: url) {(data, response, error) in
    guard let data = data else { return }
    let decodedData = try! JSONDecoder().decode([Product].self, from: data )
    completion(decodedData)
  }.resume()
}
