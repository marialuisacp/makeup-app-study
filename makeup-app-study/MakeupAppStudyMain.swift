import SwiftUI

@main
struct makeup_app_studyApp: App {
  var body: some Scene {
    WindowGroup {
      NavigationView {
        ProductsList()
          .navigationBarTitle("Makeup List")
      }
    }
  }
}
