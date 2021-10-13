import SwiftUI

struct ProductView: View {
  var product: ItemList
  var body: some View {
    
    GroupBox(label:
      ProductHeader(title: product.name, image: product.image_link)
    ) {
      Text(product.category)
        .font(.footnote)
        .foregroundColor(.pink)
      Spacer()
      Text(product.description)
        .font(.footnote)
        .padding()
    }
    .background(Color.white)
    .groupBoxStyle(ListGroupBoxStyle())
    .shadow(color: .white, radius: 10, x: -10, y: -10)
    .shadow(color: Color(.black).opacity(0.05), radius: 3, x: 10, y: 10)
  }
}

struct ListGroupBoxStyle: GroupBoxStyle {
  func makeBody(configuration: Configuration) -> some View {
    VStack(alignment: .leading) {
      configuration.label
      configuration.content
    }
  }
}

struct ProductView_Previews: PreviewProvider {
  static var previews: some View {
    ProductView(product: parseProduct(product: products[0]))
  }
}

func parseProduct (product: Product) -> ItemList {
  return
    ItemList(
      id: product.id,
      brand: product.brand,
      name: product.name,
      price: product.price,
      image_link: product.image_link,
      description: product.description,
      category: product.category ?? ""
    )
}
