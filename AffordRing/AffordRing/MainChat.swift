//
//  MainChat.swift
//  AffordRing
//
//  Created by Aditya Khadke on 01/03/23.
//

import SwiftUI

struct MainChat: View {
    var body: some View {
        NavigationView {
            VStack {
                
                ChatHeader()
                ChatScreen()
                Message(sender: true)
                Message(sender: false)
                
                Spacer()
                
                textInput()
                
        
            }
        }
        
    }
}

struct MainChat_Previews: PreviewProvider {
    static var previews: some View {
        MainChat()
    }
}

struct ChatHeader: View {
    var body: some View {
        VStack {
            HStack {
//                Image(systemName: "arrow.backward")
//                    .offset(x: -20)
                
                Image("ProfilePic2")
                    .resizable()
                    .frame(width: 50,height: 50)
                
                VStack{
                    Text("Micheal Angelo")
                        .offset(x:-10,y:-2)
                        .fontWeight(.bold)
                    
                    
                    
                    Text("Last Seen 2:40 PM")
                        .fontWeight(.light)
                        .offset(x:2,y:4)
                    
                    
                }
                .frame(width:150)
                
                Spacer()
                
                
                Circle()
                    .frame(width: 40,height: 40)
                    .foregroundColor(.gray)
                    .opacity(0.15)
                    .overlay {
                        Image(systemName: "phone.fill")
                            .foregroundColor(.green)
                    }
                
            }
            .padding()
            .frame(width: 350)
            
            Spacer()
        }
    }
}

struct ChatScreen: View {
    var body:some View {
        VStack {
            Rectangle()
                .frame(width: 65,height: 32)
                .cornerRadius(8)
                .foregroundColor(.gray)
                .opacity(0.1)
                .overlay {
                    Text("Today")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            
            CardView()
                .offset(x:-35)
                
           
        }
    }
}

struct CardView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width:300,height: 400)
                .foregroundColor(.gray.opacity(0.15))
                .cornerRadius(32)
            
            
            VStack(alignment: .leading) {
                HStack {
                    Image("ProfilePic2")
                        .resizable()
                    .frame(width: 40,height: 40)
                    
                    VStack(alignment:.leading){
                        Text("anny_wilson")
                            .font(.system(size: 16,weight: .heavy,design: .rounded))
                        Text("Marketing Coordinator")
                            .font(.system(size: 12,weight: .light,design: .rounded))
                    }
                }
                Image("Shoes")
                    .resizable()
                    .frame(width: 250,height: 250)
                    .cornerRadius(32)
              
            }
        }
        
    }
}


struct Message: View {
    @State var sender:Bool
    var body: some View {
        
        HStack{
            Rectangle()
                .frame(width: 270,height: 50)
                .foregroundColor(sender ? .blue : .green)
                .cornerRadius(10)
                .overlay(content: {
                    Text("She is adorable! Don't you want to meet her?? ")
                        .font(.system(size: 16))
                        .foregroundColor(sender ? .white : .black)
                })
                .offset(x: sender ? -50 : 50)
        }
        
        
        
    }
    
    
}

struct textInput: View {
    var body: some View {
        HStack{
            Rectangle()
                .frame(width: 280,height: 56)
                .cornerRadius(12)
                .foregroundColor(.gray.opacity(0.15))
                .overlay {
                    HStack{
                        Text("Type Message")
                            .font(.system(size: 14,weight: .ultraLight,design: .rounded))
                        Spacer()
                        
                        Image(systemName: "camera")
                    }
                    .padding()
                }
            
            Spacer()
            
            Circle()
                .frame(width: 56,height: 56)
                .foregroundColor(.green)
                .overlay {
                    Image(systemName: "paperplane.fill")
                        .foregroundColor(.white)
                }
        }
        .padding(.horizontal)
    }
}
