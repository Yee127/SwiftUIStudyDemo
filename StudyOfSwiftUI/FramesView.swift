//
//  FramesView.swift
//  myApp2
//
//  Created by Yee Van on 2022/4/4.
//

import SwiftUI

struct FramesView: View {
    var body: some View {
        Text("测试")
            .background(Color.green)
//            .frame(width: 200, height: 200, alignment: .leading)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(Color.red)
                
        
    }
}

struct FramesView_Previews: PreviewProvider {
    static var previews: some View {
        FramesView()
    }
}
