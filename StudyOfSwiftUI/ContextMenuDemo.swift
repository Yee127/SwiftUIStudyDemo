//
//  ContextMenuDemo.swift
//  myApp2
//
//  Created by Yee Van on 2022/4/7.
//

import SwiftUI

struct ContextMenuDemo: View {
    @State var bgColor: Color = .blue
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Image(systemName: "house.fill")
                .font(.title)
            Text("Home")
                .bold()
                .font(.headline)
        }
        .frame(width: 200, height: 100, alignment: .center)
        .foregroundColor(.white)
        .padding(30)
        .background(bgColor)
        .cornerRadius(30)
        .contextMenu(){
            Button(action: {
                bgColor = .green
            }) {
                Label("Share post",systemImage: "person.fill")
            }
            Button(action: {
                bgColor = .red
            }) {
                Label("Delete post",systemImage: "gear.fill")
            }
            Button(action: {
                bgColor = .yellow
            }) {
                Label("Like post",systemImage: "heart.fill")
            }
        }
   
    }
}

struct ContextMenuDemo_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContextMenuDemo()
            ContextMenuDemo()
        }
    }
}
