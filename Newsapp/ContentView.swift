//
//  ContentView.swift
//  Newsapp
//
//  Created by Meghdad Abbaszadegan on 7/25/20.
//  Copyright © 2020 Meghdad Abbaszadegan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }
            .navigationBarTitle("News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Post: Identifiable {
    let id: String
    let title: String
}

let posts = [
    Post(id: "1", title: "Post 1"),
    Post(id: "2", title: "Post 2"),
    Post(id: "3", title: "Post 3")
]
