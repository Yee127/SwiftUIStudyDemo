//
//  IconView.swift
//  myApp2
//
//  Created by Yee Van on 2022/4/4.
//

import SwiftUI

struct IconView: View {
    var body: some View {
    
        Image(systemName: "heart.fill")
            .resizable()
//            .font(.system(size: 300))
            .foregroundColor(.red)
            .aspectRatio(contentMode: .fit)   // 将图像扩展最大
            .frame(width: 200, height: 200, alignment: .center)
    }
}

struct IconView_Previews: PreviewProvider {
    static var previews: some View {
        IconView()
    }
}
