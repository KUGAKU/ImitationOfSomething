
import SwiftUI

struct UserCellView: View {
    var body: some View {
        HStack {
            Image("Penguin")
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text("Penguin")
                    .font(.system(size: 14, weight: .semibold ))
                Text("I am Penguin !!!")
                    .font(.system(size: 14))
            }
            Spacer()
        }
    }
}

struct UserCellView_Previews: PreviewProvider {
    static var previews: some View {
        UserCellView()
    }
}
