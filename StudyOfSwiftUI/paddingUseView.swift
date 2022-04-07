//
//  paddingUseView.swift
//  myApp2
//
//  Created by Yee Van on 2022/4/5.
//

import SwiftUI

struct paddingUseView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(" Hello, World!")
                
                
    //            .background(.yellow)
    //            .frame(width: 100, height: 100, alignment: .center)
    //            .padding()
    //            .padding(.all,20)
    //            .background(.blue)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.top,10)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text("Padding is a SwiftUI developer's best friend. In this video we learn how to use the .padding() modifier to align and offset views in our iOS application. Padding is often used to add space between objects or to add a margin between an object and the edge of the device. We look at different ways to implement padding, including setting the padding to specific sides (vertical, horizontal, top, bottom, leading, trailing) and how to stack padding modifiers on top of each other!")
                
                
    //            .background(.yellow)
    //            .frame(width: 100, height: 100, alignment: .center)
    //            .padding()
    //            .padding(.all,20)
    //            .background(.blue)
                .fontWeight(.semibold)
                .padding(.horizontal,10)
                .padding(.bottom,10)
                .frame(maxWidth: .infinity, alignment: .leading)
                
        }
        .padding()
        .background(
            Color.white
                .cornerRadius(30)
                .padding(10)
            .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 5))
            
        
    }
}

struct paddingUseView_Previews: PreviewProvider {
    static var previews: some View {
        paddingUseView()
    }
}
