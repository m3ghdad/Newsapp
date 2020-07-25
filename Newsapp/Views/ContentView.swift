//
//  ContentView.swift
//  Newsapp
//
//  Created by Meghdad Abbaszadegan on 7/25/20.
//  Copyright © 2020 Meghdad Abbaszadegan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination:DetailView(url: post.url)) {
                    
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
                
            }
            .navigationBarTitle("News")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//struct Post: Identifiable {
//    let id: String
//    let title: String
//}

//let posts = [
//    Post(id: "1", title: "Post 1"),
//    Post(id: "2", title: "Post 2"),
//    Post(id: "3", title: "Post 3")
//]
