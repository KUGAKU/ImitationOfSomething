import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            FeedView()
            
            SearchView()
            
            UploadPostView()
            
            NotificationView()
            
            ProfileView()
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
