//
//  ContentView.swift
//  H4X0R News
//
//  Created by Ben Mountain on 3/3/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationStack {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url), label: {
                    HStack {
                        Text("\(post.points)")
                        Text(post.title)
                    }
                })
            }
            .navigationTitle("H4X0R NEWZ")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}
