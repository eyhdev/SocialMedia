//
//  Home.swift
//  SocialMedia
//
//  Created by eyh.mac on 14.08.2023.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    HStack{
                        VStack{
                            HStack{
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 57, height: 57)
                                    .clipShape(Circle())
                                    .background(
                                       Image("logo")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 60, height: 60)
                                            .clipShape(Circle())
                                    )
                             .clipShape(Circle())
                            .overlay(
                            RoundedRectangle(cornerRadius: 100)
                                .inset(by: 0.25)
                                .stroke(.white, lineWidth: 0.5)
                            )
                            VStack{
                                Text("eyh.dev09")
                                    .font(Font.custom("Inter", size: 15))
                                    .foregroundColor(.white)
                                Text("Eyhan")
                                    .font(
                                        Font.custom("DIN Alternate", size: 25)
                                            .weight(.bold)
                                    )
                                    .foregroundColor(.white)
                            }
                        }
                    }
                    Spacer()
                    Image(systemName: "person.circle.fill")
                        .font(.title)
                        .foregroundColor(.white.opacity(0.4))
                    
                    Image(systemName: "bell.badge.circle.fill")
                        .font(.title)
                        .foregroundColor(.white.opacity(0.4))
                    }
                    .padding()
                    HStack(alignment: .bottom){
                        Text("Discover\nUseful Things")
                            .font(.system(size: 34))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Spacer()
                        
                        Image(systemName: "magnifyingglass.circle.fill")
                            .font(.system(size: 34))
                            .fontWeight(.semibold)
                            .foregroundColor(.white.opacity(0.4))
                    }
                    .padding()
                    
                    card()
                }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            .preferredColorScheme(.dark)
    }
}
