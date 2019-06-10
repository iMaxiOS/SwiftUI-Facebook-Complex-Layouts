//
//  ContentView.swift
//  SwiftUI-Facebook
//
//  Created by Maxim Granchenko on 6/10/19.
//  Copyright © 2019 Maxim Granchenko. All rights reserved.
//

import SwiftUI

struct Post {
    let id: Int
    let imageName, title, userName, post, postImage: String
}

struct ContentView : View {
    
    private let posts: [Post] = [
        .init(id: 0,
              imageName: "1",
              title: "1 year ago",
              userName: "Tanya",
              post: "Hearst operates this site and uses cookies and similar technologies Cookies",
              postImage: "instagram"),
        .init(id: 1,
              imageName: "2",
              title: "2 year ago",
              userName: "Tanya",
              post: "Some Cookies are necessary to make this site and our content available to you.",
              postImage: "trees"),
        .init(id: 2,
              imageName: "3",
              title: "4 year ago",
              userName: "Tanya",
              post: "Other Cookies enable us to analyse and measure audience and traffic to the site. Cookies are also used by us, advertisers, ad-tech providers and others to develop and serve ads that are more relevant to your interests.",
              postImage: "world"),
        .init(id: 3,
              imageName: "1",
              title: "5 year ago",
              userName: "Tanya",
              post: "Link below for more information about Cookies, the types of partners and third parties that can set",
              postImage: "instagram"),
        .init(id: 4,
              imageName: "3",
              title: "7 year ago",
              userName: "Tanya",
              post: "You can adjust your preferences or withdraw your consent to certain Cookies",
              postImage: "trees")
    ]
    
    var body: some View {
        NavigationView {
            List {
                ScrollView {
                    VStack (alignment: .leading) {
                        Text("Trending")
                        .font(.subheadline)
                        HStack {
                            GroupeView()
                            GroupeView()
                            GroupeView()
                            GroupeView()
                            GroupeView()
                            GroupeView()
                        }.padding(.top, -20)
                    }
                    }.frame(height: 170)
                ForEach(posts.identified(by: \.id)) { post in
                    PostView(post: post)
                }
                }.navigationBarTitle(Text("Group"))
        }
    }
}

struct GroupeView: View {
    var body: some View {
        VStack (alignment: .leading) {
            Image("trees")
                .resizable()
                .clipped()
                .frame(width: 90, height: 90)
            Text("Ko-Ed Hikes of Ukraine")
                .padding(.leading, 0)
                .font(.system(size: 12))
                .lineLimit(2)
            }.frame(width: 90, height: 160)
    }
}

struct PostView: View {
    
    let post: Post
    
    var body: some View {
        HStack {
            
            VStack (alignment: .leading, spacing: 16) {
                HStack {
                    Image("1")
                        .resizable()
                        .clipShape(Circle())
                        .frame(width: 60, height: 60)
                        .clipped()
                        .padding(.leading, 10).padding(.top, 10)
                    VStack (alignment: .leading, spacing: 4) {
                        Text(post.userName).font(.headline)
                        Text(post.title).font(.subheadline)
                    }
                }
                Text(post.post)
                    .lineLimit(nil)
                    .padding(.leading, 10)
                    .padding(.trailing, 10)
                Image(post.postImage)
                    .resizable()
                    .frame(height: 240)
            }
                .padding(.leading, -20)
                .padding(.trailing, -20)
                .padding(.bottom, -6)
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
