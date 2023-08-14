//
//  card.swift
//  SocialMedia
//
//  Created by eyh.mac on 14.08.2023.
//

import SwiftUI

struct card: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing: 20){
                Image("p3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 310, height: 450)
                    .clipped()
                    .cornerRadius(43)
                
                Image("p1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 310, height: 450)
                    .clipped()
                    .cornerRadius(43)
            }
            .padding()
            
            VStack{
                HStack{
                    Text("More")
                        .font(Font.custom("DIN Alternste", size: 22).weight(.bold))
                        Spacer()
                }
                .padding()
                HStack(spacing: 20){
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 83, height: 83)
                        .background(
                        Image("p4")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 83, height: 83)
                            .clipped()
                        )
                        .cornerRadius(1000)
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 83, height: 83)
                        .background(
                        Image("p3")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 83, height: 83)
                            .clipped()
                        )
                        .cornerRadius(1000)
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 83, height: 83)
                        .background(
                        Image("p1")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 83, height: 83)
                            .clipped()
                        )
                        .cornerRadius(1000)
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 83, height: 83)
                        .background(
                        Image("p2")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 83, height: 83)
                            .clipped()
                        )
                        .cornerRadius(1000)
                    
                }
                .padding(.trailing, 210)
            }
        }
    }
}

struct card_Previews: PreviewProvider {
    static var previews: some View {
        card()
            .preferredColorScheme(.dark)
    }
}
