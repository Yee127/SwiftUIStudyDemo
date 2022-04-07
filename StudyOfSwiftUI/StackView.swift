//
//  StackView.swift
//  myApp2
//
//  Created by Yee Van on 2022/4/4.
//

import SwiftUI

struct StackView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0){
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100, alignment: .center)
            
            Rectangle()
                .fill(Color.blue)
                .frame(width: 100, height: 100, alignment: .center)
            
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 100, height: 100, alignment: .center)
                .contextMenu {
                    Text("fdhjfhdjfdjfhdj")
                    Text("fdhjfhdjfdjfhdj")
                    Text("fdhjfhdjfdjfhdj")
                }
        }
    }
}

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
