//
//  ContentView.swift
//  AffordRing
//
//  Created by Aditya Khadke on 01/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                HStack {
                    Header()
                    NavigationLink(destination: ChatView()) {
                        Image(systemName: "bell")
                            .padding()
                    }
                    
                }
                .padding(.horizontal)
                SearchBar()
                
                Spacer()
                
                Text("Your Inbox is Empty")
                    .font(.system(size: 28,weight: .bold, design: .rounded))
                Text("All clients messages will be shown here. You can discuss and bargain with clients from here.")
                    .multilineTextAlignment(.center)
                
                
                   
                
                Spacer()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View {
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 40,height: 40)
                    .foregroundColor(.green)
                    .overlay {
                        Image(systemName: "cart.fill")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 20, height: 20)
                            .foregroundColor(.black)
                            .imageScale(.large)
                        
                    }
                
                Text("Afford")
                    .font(.headline) +
                Text("Ring")
                
                Rectangle()
                    .frame(width: 70, height: 25)
                    .foregroundColor(.green)
                    .opacity(0.3)
                    .overlay {
                        Text("Business")
                            .font(.system(size: 14,weight: .light, design: .rounded))
                    }
                
                Spacer()
                
                

               
                

                
                
                
            }
            
            
            
            
        }
        .padding()
    }
}

struct SearchBar: View {
    var body: some View {
        Rectangle()
            .frame(width: 350,height: 50)
            .foregroundColor(.gray.opacity(0.3))
            .cornerRadius(10)
            .overlay {
                HStack{
                    Group {
                        Image(systemName: "magnifyingglass")
                        Text("Search by Name")
                        
                    }
                    .font(.system(size: 14,weight: .light,design: .rounded))
                    
                    Spacer()
                    
                }
                .padding()
                
                
            }
    }
}
