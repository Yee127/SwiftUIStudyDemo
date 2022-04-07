//
//  GradientsView.swift
//  myApp2
//
//  Created by Yee Van on 2022/4/4.
//

import SwiftUI

struct GradientsView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 32)
            .fill(
//            Color("Color")
                LinearGradient(colors: [Color("blue1"),Color("blue2")], startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .frame(width: 300, height: 200)
            .shadow(color: Color("blue2").opacity(0.5), radius: 10, x: 10, y: -10)
    }
}

struct GradientsView_Previews: PreviewProvider {
    static var previews: some View {
        GradientsView()
            .preferredColorScheme(.light)
//
    }
}
