//
//  FBPostView.swift
//  Facebook
//
//  Created by Alan Lima on 08/03/21.
//

import Foundation
import SwiftUI

struct FBPostView: View {
    
    @State var isLiked: Bool = false
    
    let model: FBPostModel
    
    var body: some View {
        VStack {
            HStack {
                Image(model.imageName)
                    .resizable()
                    .frame(width: 50, height: 50, alignment: .center)
                    .aspectRatio(contentMode: .fill)
                    .cornerRadius(25)
                VStack {
                    HStack {
                        Text(model.name)
                            .foregroundColor(Color.blue)
                            .font(.system(size: 18, weight: .semibold, design: .default))
                        Spacer()
                    }
                    HStack {
                        Text("12 minutes ago")
                            .foregroundColor(Color(.secondaryLabel))
                        Spacer()
                    }
                }
                Spacer()
                
            }
            Spacer()
            HStack {
                Text(model.post)
                    .font(.system(size: 18, weight: .regular, design: .default))
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            .padding(.vertical)
            
            Spacer()
            
            HStack {

                Button(action: {
                    isLiked.toggle()
                }) {
                    HStack {
                        Image(systemName: isLiked ? "hand.thumbsup.fill" : "hand.thumbsup")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 20 , height: 20, alignment: .center)
                            .foregroundColor(Color.blue)
                        
                        Text("Like")
                    }
                    
                    
                }
                .padding()
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    HStack {
                        Image(systemName: "bubble.left")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 20 , height: 20, alignment: .center)
                            .foregroundColor(Color.blue)
                        
                        Text("Comment")
                    }
                }
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    HStack {
                        Image(systemName: "square.and.arrow.up")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 20 , height: 20, alignment: .center)
                            .foregroundColor(Color.blue)
                        
                        Text("Share")
                    }
                }
            }
            .overlay(Divider(), alignment: .top)
        }
        .padding(.horizontal)
        .padding(.top)
        .background(Color(.systemBackground))
        .cornerRadius(7)
    }
}
