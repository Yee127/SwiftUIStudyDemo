//
//  SpacerView.swift
//  myApp2
//
//  Created by Yee Van on 2022/4/5.
//

import SwiftUI

struct SpacerView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            
            Spacer()
                .frame(width: .infinity, height: 10)
                .background(.green)
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100)
                
        }
        .background(.purple)
    }
}

struct SpacerView_Previews: PreviewProvider {
    static var previews: some View {
        SpacerView()
    }
}
