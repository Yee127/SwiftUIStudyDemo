//
//  ExtractSubviewsView.swift
//  myApp2
//
//  Created by Yee Van on 2022/4/6.
//

import SwiftUI

struct ExtractSubviewsView: View {
    var body: some View {
        ZStack {
            Color.pink.ignoresSafeArea()
            myLay
            
        }
    }
    
    var myLay:some View{
        HStack {
            MyView(title: "A", count: 1, color:.blue)
            MyView(title: "B", count: 2, color:.green)
            MyView(title: "C", count: 3, color:.yellow)
        }
    }
}

struct ExtractSubviewsView_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubviewsView()
    }
}

struct MyView: View {
    var title:String
    var count:Int
    var color:Color
    
    var body: some View {
        VStack {
            Text(title)
            Text("\(count)")
        } .frame(width: 100, height: 100)
            .background(color)
            .cornerRadius(20)
            .shadow(radius: 10)
    }
}
