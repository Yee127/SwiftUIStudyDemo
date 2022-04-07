//
//  InitAndEnumView.swift
//  myApp2
//
//  Created by Yee Van on 2022/4/5.
//

import SwiftUI

struct InitAndEnumView: View {
    let count: Int
    let fruit: Fruits
    let color: Color
    
    init(count:Int,fruit:Fruits){
        self.count = count
        self.fruit = fruit
        
        self.color = fruit == .apple ? .red : .orange
        
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 10){
            Text("\(count)")
                .font(.largeTitle)
                .underline()
                .bold()
                .foregroundColor(.white)
            Text("\(fruit == .apple ? "apple" : "orange")")
                .bold()
                .foregroundColor(.white)
            
        }
        .frame(width: 150, height: 150)
        .background(color)
        .cornerRadius(22)
        .shadow(color: fruit == .apple ? .red.opacity(0.3) : .orange.opacity(0.3), radius: 20, x: 5, y: 5)
    
    }
}

struct InitAndEnumView_Previews: PreviewProvider {
    static var previews: some View {
        InitAndEnumView(count: 100, fruit: .apple)
    }
}

enum Fruits{
    case apple
    case orange
}
