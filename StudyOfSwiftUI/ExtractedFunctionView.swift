//
//  ExtractedFunctionView.swift
//  myApp2
//
//  Created by Yee Van on 2022/4/6.
//

import SwiftUI

struct ExtractedFunctionView: View {
    @State var backgroundColor: Color = .pink
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            contentLayer
        }
    }
    
    var contentLayer: some View{
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
            
            Button {
                buttonPress()
            } label: {
                Text("Press Me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
                    .shadow(radius: 10)
            }

        }
    }
    
    func buttonPress( ){
        backgroundColor = .yellow
    }
}

struct ExtractedFunctionView_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionView()
    }
}
