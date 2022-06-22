//
//  ContentView.swift
//  projectCTS-L2-photobook
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 22/6/22.
//

import SwiftUI

struct ContentView: View {
    
    var photos = [
        "ICT-L2-photo1",
        "ICT-L2-photo2",
        "ICT-L2-photo3",
        "ICT-L2-photo4",
        "ICT-L2-photo5",
    ]
    var descriptions = [
        "Mountain with lots of trees",
        "Mountain with no trees",
        "Trees",
        "Mountain with lots of trees and NO mist",
        "Mountain with lots of trees and mist",
    ]
    @State var index = 0
    var opacity = 0.0
    var rectangeWidth = 400
    
    var body: some View {
        ZStack {
            Image(photos[index % photos.count])
                .resizable()
                .scaledToFit()
                .frame(height: 430)
                .offset(y: 10)
            HStack {
                Button {
                    index -= 1
                } label: {
                    Rectangle()
                        .frame(width: CGFloat(rectangeWidth))
                        .offset(y: 10)
                        .opacity(opacity)
                }
                Button {
                    index += 1
                } label: {
                    Rectangle()
                        .frame(width: CGFloat(rectangeWidth))
                        .offset(y: 10)
                        .opacity(opacity)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
