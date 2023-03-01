////
////  Practice.swift
////  AffordRing
////
////  Created by Aditya Khadke on 01/03/23.
////
//
//import SwiftUI
//
//struct Practice: View {
//    @State private var isPresentingProfilePicture = false
//    var body: some View {
//
//        ZStack {
//                    Image("background-image")
//                        .resizable()
//                        .scaledToFill()
//                        .blur(radius: 10)
//
//                    VStack {
//                        Spacer()
//
//                        Image("profile-picture")
//                            .resizable()
//                            .aspectRatio(contentMode: .fit)
//                            .frame(width: 200, height: 200)
//                            .background(Color.white)
//                            .clipShape(Circle())
//                            .overlay(Circle().stroke(Color.white, lineWidth: 5))
//                            .shadow(radius: 10)
//                            .onTapGesture {
//                                isPresentingProfilePicture = true
//                            }
//                            .padding(.bottom, 50)
//
//                        Text("Name: John Doe")
//                            .font(.title)
//                            .foregroundColor(.white)
//                            .padding()
//
//                        Spacer()
//                    }
//                }
//                .edgesIgnoringSafeArea(.all)
//                .sheet(isPresented: $isPresentingProfilePicture, content: {
//                    Image("profile-picture")
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .frame(maxWidth: .infinity, maxHeight: .infinity)
//                        .background(Color.black)
//                        .edgesIgnoringSafeArea(.all)
//                        .onTapGesture {
//                            isPresentingProfilePicture = false
//                        }
//                })
//
//    }
//}
//
//struct Practice_Previews: PreviewProvider {
//    static var previews: some View {
//        Practice()
//    }
//}
