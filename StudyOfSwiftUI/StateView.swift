//
//  StateView.swift
//  myApp2
//
//  Created by Yee Van on 2022/4/6.
//

import SwiftUI

struct StateView: View {
    @State var title:String = "hello"
    var body: some View {
        VStack {
            Text(title)
            Button {
                title = "hi"
            } label: {
                Text("press me")
        }
    }

    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
        StateView()
    }
}
