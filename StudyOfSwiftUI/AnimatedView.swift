//
//  AnimatedView.swift
//  myApp2
//
//  Created by Yee Van on 2022/4/6.
//

import SwiftUI

struct AnimatedView: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack {
            Button {
//                withAnimation(Animation
//                    .default
////                    .repeatCount(10,autoreverses: true)
//                    .repeatForever(autoreverses: true)
//                ){
                    isAnimated.toggle()
//                }
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
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 32 )
                .fill(isAnimated ? Color.green : Color.yellow.opacity(0.8))
                .frame(width:isAnimated ? 100  : 300,
                       height: isAnimated ? 100  : 300)
//                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y:isAnimated ? 300  : 0)
                .animation(Animation
                    .spring(response: 0.5, dampingFraction: 0.5, blendDuration: 1.0)
//                    .repeatCount(10,autoreverses: true)
                    .repeatForever(autoreverses: true))
            
            Spacer()
        }
    }
}

struct AnimatedView_Previews: PreviewProvider {
    static var previews: some View {
        AnimatedView()
    }
}
