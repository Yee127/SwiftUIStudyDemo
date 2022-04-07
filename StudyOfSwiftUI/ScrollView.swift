//
//  ScrollView.swift
//  myApp2
//
//  Created by Yee Van on 2022/4/5.
//

import SwiftUI

struct ScrollViewDemo: View {
    let data:[String] = ["hello","hi everybody","nice to meet u"]
    var body: some View {
        ScrollView{
            VStack(spacing: 5) {
                ForEach(0..<100) { index in
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack(spacing: 5){
                                ForEach(0..<20) { index in
//                                    Image("apple")
//                                        .resizable()
//                                        .frame(width: 60, height: 70)
//                                        .scaledToFit()
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(.white)
                                        .frame(width: 100,height: 100)
                                        .padding()
                                        .shadow(color: .black.opacity(0.3), radius: 10, x: 0, y: 5)
                                }
                            }
                        
                        
                    }
                    
                }
            }
        }
    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewDemo()
    }
}
extension UIColor {
    //返回随机颜色
    open class var randomColor:UIColor{
        get
        {
            let red = CGFloat(arc4random()%256)/255.0
            let green = CGFloat(arc4random()%256)/255.0
            let blue = CGFloat(arc4random()%256)/255.0
            return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        }
    }
}
