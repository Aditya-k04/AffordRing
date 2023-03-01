//
//  ChatView.swift
//  AffordRing
//
//  Created by Aditya Khadke on 01/03/23.
//

import SwiftUI
import UIKit

struct ChatView: View {
    @State var isProfilePicTapped = false
    var body: some View {
        ZStack {
            VStack{
                Header()
                SearchBar()
                
                List{
                    ForEach(0 ..< 15) { item in
                        Chat(isProfilePicTapped: $isProfilePicTapped)
                        
                    }
                }
                .listStyle(.plain)
                .blur(radius: isProfilePicTapped ? 20 : 0)
                
                if isProfilePicTapped {
                    
                    Rectangle()
                        .frame(width: 328,height: 394)
                        .cornerRadius(24)
                        .foregroundColor(.gray.opacity(0.15))
                        .overlay {
                            VStack(alignment: .leading){
                                Image("ProfilePic3")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 284, height: 264)
                                    .cornerRadius(13)
                                Text("Steve Harvey")
                                    .font(.system(size: 16,weight: .semibold, design: .rounded))
                                    .multilineTextAlignment(.leading)
                                Text("+237 6792938**")
                                    .font(.subheadline)
                                    .multilineTextAlignment(.leading)
                                
                                Text("Chandigarh india")
                                    .font(.caption)
                                    
                                
                            }
                            
                        }
                        .offset(y:-100)
                        
                        .onTapGesture {
                            self.isProfilePicTapped.toggle()
                        }
                    
                }
                
                
                Spacer()
            }
            
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}

struct Chat: View{
    @Binding var isProfilePicTapped: Bool
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Image("ProfilePic")
                        .resizable()
                        .frame(width: 44,height: 44)
                        .onTapGesture {
                            self.isProfilePicTapped.toggle()
                        }
                    
                    NavigationLink(destination: MainChat()) {
                        VStack{
                            Text("Veronica Lopez")
                                .font(.system(size: 16,weight: .bold,design: .rounded))
                                .offset(x:-32)
                            Text("Oh hello Please can i have more ...")
                                .font(.system(size: 12,weight: .ultraLight,design: .rounded))
                        }
                    }
                     
                        
                    
                    Spacer()
                    VStack{
                        Text("23:15")
                            .font(.system(size: 14, weight: .light))
                        Image("Read")
                            .resizable()
                            .frame(width: 10,height: 10)
                        
                    }
                    
                    
                }
                .edgesIgnoringSafeArea(.all)
            }
        }
        
        
    }
}
