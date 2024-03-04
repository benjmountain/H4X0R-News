//
//  DetailView.swift
//  H4X0R News
//
//  Created by Ben Mountain on 3/3/24.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    
    var body: some View {
        if let url {
            WebView(url: URL(string: url)!)
                .edgesIgnoringSafeArea(.all)
        } else {
            VStack {
                Text("Whoops! Sorry, it seems the article does not exist")
                    .font(.title)
                Text("Please try again later")
                    .font(.subheadline)
            }
        }
    }
}

#Preview {
    DetailView(url: "https://www.google.com/")
}
