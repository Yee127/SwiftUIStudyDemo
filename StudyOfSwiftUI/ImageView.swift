//
//  ImageView.swift
//  myApp2
//
//  Created by Yee Van on 2022/4/4.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack{
            Image("hello1")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 100, alignment: .center)
    //            .cornerRadius(32)
            
            Image("apple")
                .renderingMode(.template)
                .resizable()
                .frame(width: 100, height: 115, alignment: .top)
                .foregroundColor(.gray)
            
               
        }
        
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
