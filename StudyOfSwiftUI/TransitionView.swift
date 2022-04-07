//
//  TransitionView.swift
//  myApp2
//
//  Created by Yee Van on 2022/4/6.
//

import SwiftUI

struct TransitionView: View {
    @State var showView: Bool = false
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.gray.opacity(0.2).ignoresSafeArea()
            VStack {
                
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
                Spacer()
            }
            
            if showView{
                RoundedRectangle(cornerRadius: 32)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.move(edge: .bottom))
                    .animation(.linear)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
    func buttonPress(){
        showView.toggle()
    }
}

struct TransitionView_Previews: PreviewProvider {
    static var previews: some View {
        TransitionView()
    }
}
