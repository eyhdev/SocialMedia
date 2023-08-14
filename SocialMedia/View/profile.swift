//
//  profile.swift
//  SocialMedia
//
//  Created by eyh.mac on 14.08.2023.
//

import SwiftUI

struct profile: View {
    @State private var isFollowing = false
    @State private var name = "Eyhan"
    @State private var email = "eyhan.j@icloud.com"
    @State private var description = "• IOS Developer\n• Full-Time Freelancer\n• For business: @eyhan.j@icloud.com"
    @State private var showEditView = false // To show the edit view when the button is tapped
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .cornerRadius(100)
                        .padding(33)
                    Image(systemName: "checkmark.seal.fill")
                        .font(.system(size: 22))
                        .foregroundColor(.blue)
                        .offset(x: 50, y: -80)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                
                VStack {
                    Text("Hi, I'm \(name)")
                        .font(.title)
                        .fontWeight(.bold)
                        .offset(x: -15, y: -50)
                    Text(description)
                        .font(.system(size: 15))
                        .fontWeight(.semibold)
                        .offset(x: 35, y: -40)
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                
                VStack {
                    Text("Follow Me")
                        .font(.title)
                        .fontWeight(.bold)
                        .offset(x: 30, y: -25)
                    Image(systemName: "link")
                        .offset(x: -60, y: -5)
                    Text(email)
                        .foregroundColor(.blue)
                        .offset(x: 54, y: -25)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                
                HStack {
                    Image("img2")
                        .resizable()
                        .frame(width: 390, height: 400)
                        .cornerRadius(15)
                        .offset(x: -0, y: 30)
                        .shadow(color: .black.opacity(0.2), radius: 11)
                }
                .offset(x: 0, y: -35)
                .padding()
                
                VStack {
                    HStack {
                        Image("img1")
                            .resizable()
                            .frame(width: 390, height: 400)
                            .cornerRadius(15)
                            .offset(x: -0, y: 30)
                            .shadow(color: .black.opacity(0.2), radius: 11)
                    }
                    .padding()
                }
                .offset(x: 0, y: -40)
                
                // NavigationLink to open the edit view
                NavigationLink(destination: EditView(name: $name, email: $email)) {
                    Button(action: {
                        // Set showEditView to true when the button is tapped
                        showEditView = true
                    }, label: {
                        Text("Edit Profile")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    })
                }
                .padding()
            }
            .sheet(isPresented: $showEditView) {
                // Present the edit view as a sheet when showEditView is true
                EditView(name: $name, email: $email)
            }
        }
    }
}

struct EditView: View {
    @Binding var name: String
    @Binding var email: String
    
    var body: some View {
        VStack {
            TextField("Name", text: $name)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Email", text: $email)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button("Save", action: {
                dismissSheet()
            })
            .padding()
            Spacer()
        }
        .padding()
    }
    
    private func dismissSheet() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct profile_Previews: PreviewProvider {
    static var previews: some View {
        profile()
    }
}
