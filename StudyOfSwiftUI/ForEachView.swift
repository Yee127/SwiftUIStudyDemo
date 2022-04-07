//
//  ForEachView.swift
//  myApp2
//
//  Created by Yee Van on 2022/4/5.
//

import SwiftUI

struct ForEachView: View {
    let data:[String] = ["hello","hi everybody","nice to meet u"]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ForEach(data.indices) { index in
                Text("\(data[index]) ==> \(index)")
            }
        }
    }
}

struct ForEachView_Previews: PreviewProvider {
    static var previews: some View {
        ForEachView()
    }
}
