// rootの役割を果たす
// アプリが立ち上がった際に一番最初に呼ばれるファイル

import SwiftUI
import Firebase
import FirebaseFirestoreTarget

@main
struct ImitationOfSomethingApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(AuthentiocationViewModel.shared)
        }
    }
}
