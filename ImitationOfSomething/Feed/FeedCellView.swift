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
            .padding([.leading, .bottom], 8)
            
            // post image
            Image("Penguin")
                .resizable()
                .scaledToFill()
                .frame(maxHeight: 440)
                .clipped()
            
            // action buttons
            
            HStack(spacing: 16) {
                Button(action: {}, label: {
                    Image(systemName: "heart")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 22, height: 20)
                        .font(.system(size: 20))
                        .clipped()
                        .padding(4)
                })
                Button(action: {}, label: {
                    Image(systemName: "bubble.right")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .clipped()
                        .padding(4)
                })
                Button(action: {}, label: {
                    Image(systemName: "paperplane")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 20, height: 20)
                        .font(.system(size: 20))
                        .clipped()
                        .padding(4)
                })
            }
            .padding(.leading,4)
            .foregroundColor(.green)
            
            
            // caption
            
            Text("3 likes")
                .font(.system(size: 14, weight: .semibold))
                .padding(.leading, 8)
                .padding(.bottom, 2)
            
            HStack {
                Text("Penguin").font(.system(size: 14, weight: .semibold))
                    +
                    Text("The penguins were created by Bill Finger and Bob Kane and first appeared in Detective Comics # 58 (December 1941). The penguins are depicted as short, wide-ranging men, using a special umbrella as a weapon. Gangsters and thieves call him The Gentleman Of Crime.")
                    .font(.system(size: 15))
            }
            .padding(.leading, 8)
            
            Text("2d")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.leading, 8)
                .padding(.top, 2)
        }
    }
}

struct FeedCellView_Previews: PreviewProvider {
    static var previews: some View {
        FeedCellView()
    }
}
