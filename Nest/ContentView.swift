import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            TrueHomeView().tabItem {
                Label("Home", systemImage: "house.fill")
            }
            UploadView().tabItem {
                Label("Upload", systemImage: "plus.app.fill")
            }
            ProfileView().tabItem {
                Label("Profile", systemImage: "person.circle.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
