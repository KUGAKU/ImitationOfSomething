// rootの役割を果たす
// アプリが立ち上がった際に一番最初に呼ばれるファイル

import SwiftUI

@main
struct ImitationOfSomethingApp: App {
    var body: some Scene {
        WindowGroup {
            //ContentView()
            LoginView()
        }
    }
}
