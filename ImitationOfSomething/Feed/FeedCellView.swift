import SwiftUI

struct FeedCellView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("Joker")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 36, height: 36)
                    .clipped()
                    .cornerRadius(18)
                
                Text("joker")
                    .font(.system(size: 14, weight: .semibold ))
            }
            
            // post image
            Image("Penguin")
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 440)
                .clipped()
            
            // action buttons
            
            HStack(spacing: 8) {
                Button(action: {}, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 28, height: 25)
                        .font(.system(size: 20))
                        .clipped()
                        .padding(8)
                })
                Button(action: {}, label: {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 28, height: 26)
                        .font(.system(size: 15))
                        .clipped()
                        .padding(8)
                })
                Button(action: {}, label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 28, height: 28)
                        .font(.system(size: 20))
                        .clipped()
                        .padding(8)
                })
            }.foregroundColor(.green)
            
            
            // caption
            HStack {
                Text("Penguin").font(.system(size: 14, weight: .semibold))
                    +
                    Text("The penguins were created by Bill Finger and Bob Kane and first appeared in Detective Comics # 58 (December 1941). The penguins are depicted as short, wide-ranging men, using a special umbrella as a weapon. Gangsters and thieves call him The Gentleman Of Crime.")
                    .font(.system(size: 15))
            }
            
            Text("2d")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.top)
        }
    }
}

struct FeedCellView_Previews: PreviewProvider {
    static var previews: some View {
        FeedCellView()
    }
}
