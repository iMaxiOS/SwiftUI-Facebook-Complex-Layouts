//
//  ContentView.swift
//  SwiftUI-Facebook
//
//  Created by Maxim Granchenko on 6/10/19.
//  Copyright © 2019 Maxim Granchenko. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    private let posts = ["1", "2", "3", "4", "5", "6"]
    
    var body: some View {
        NavigationView {
            List {
                ScrollView {
                    VStack (alignment: .leading) {
                        Text("Trending")
                            .font(.subheadline)
                        HStack {
                            Text("Scroll - 1")
                            Text("Scroll - 1")
                            Text("Scroll - 1")
                            Text("Scroll - 1")
                            Text("Scroll - 1")
                            Text("Scroll - 1")
                            Text("Scroll - 1")
                            Text("Scroll - 1")
                        }
                    }
                    }.frame(height: 150)
                ForEach(posts.identified(by: \.self)) { post in
                    PostView()
                }
                }.navigationBarTitle(Text("Group"))
        }
    }
}

struct PostView: View {
    var body: some View {
        Text("Hi every body")
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
