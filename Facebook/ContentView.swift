//
//  ContentView.swift
//  Facebook
//
//  Created by Alan Lima on 08/03/21.
//

import SwiftUI

struct FBPostModel: Hashable {
    let name: String;
    let post: String;
    let imageName: String;
}

struct ContentView: View {
    
    @Binding var text: String
    let facebookBlue = UIColor(red: 23/255.0,green: 120/255.0, blue: 245/255.0, alpha: 1)
    
    let stories = ["story1","story2","story3", "story1","story2","story3"]
    let posts: [FBPostModel] = [
        FBPostModel(name: "Mark Zuckerberg", post: "Hey guys I made this cool website called thefacebook to see if Im cool or not!", imageName: "person1"),
        FBPostModel(name: "Jeff Bezos", post: "You'll all see once I take the world with Amazon", imageName: "person2"),
        FBPostModel(name: "Bill Gates", post: "Who cares - I made windows!", imageName: "person3"),
    ]
    
    var body: some View {
        VStack {
            HStack {
                Text("Facebook")
                    .font(.system(size: 32, weight: .bold, design: .default))
                    .foregroundColor(Color(facebookBlue))
                
                Spacer()
                
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(.secondaryLabel))
            }
            .padding()
            
            TextField("Search...", text: $text)
                .padding(7)
                .background(Color(.systemGray5))
                .cornerRadius(13)
                .padding(.horizontal, 15)
            
            ZStack {
                Color(.secondarySystemBackground)
                
                ScrollView(.vertical) {
                    VStack {
                            
                        StoriesView(stories: stories)
                        
                        ForEach(posts, id: \.self) { model in
                            FBPostView(model: model)
                            Spacer()
                        }
                    }
                }
            }
            
            Spacer()
        }
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(text: .constant(""))
    }
}
