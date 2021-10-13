import SwiftUI

struct ProductsList: View {
  var body: some View {
    List(products, id: \.id) { product in
      ProductView(product: parseProduct(product: product))
    }
  }
}

struct ProductsList_Previews: PreviewProvider {
  static var previews: some View {
    ProductsList()
  }
}
