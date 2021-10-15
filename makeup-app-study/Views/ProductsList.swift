import SwiftUI

struct ProductsList: View {
  @ObservedObject var viewModel = ProductModel()
  
  var body: some View {
    ScrollView{
      LazyVStack{
        ForEach(viewModel.products, id: \.id) { product in
          ProductView(product: parseProduct(product: product))
            .padding()
        }
      }
    }
  }
}

struct ProductsList_Previews: PreviewProvider {
  static var previews: some View {
    ProductsList()
  }
}

class ProductModel: ObservableObject {
  @Published var products: [Product] = []
  
  init() {
    getProducts()
  }
}

extension ProductModel {
  func getProducts() {
    sendRequestProducts() { data in
      DispatchQueue.main.async {
        self.products = data
      }
    }
  }
}
