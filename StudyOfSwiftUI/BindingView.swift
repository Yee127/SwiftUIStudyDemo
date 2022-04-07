//
//  BindingView.swift
//  myApp2
//
//  Created by Yee Van on 2022/4/6.
//

import SwiftUI

struct BindingView: View {
    @State var bgColor: Color = .green
    var body: some View {
        ZStack {
            bgColor.ignoresSafeArea()
            
            
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                
                ExtractedView(bgColor: $bgColor)
            }
        }
    }

}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView()
    }
}

struct ExtractedView: View {
    @Binding var bgColor: Color
    var body: some View {
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
    func buttonPress(){
        bgColor = .yellow
    }
}
