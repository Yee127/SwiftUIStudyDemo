//
//  SafeAreaView.swift
//  myApp2
//
//  Created by Yee Van on 2022/4/6.
//

import SwiftUI

struct SafeAreaView: View {
    var body: some View {
        ZStack{
            Color.blue
                .edgesIgnoringSafeArea(.all)   // after ios 14 ==>  .ignoresSafeArea()
               
            
            ScrollView{
                Text("Title goes here")
                    .frame(maxWidth:.infinity,alignment: .leading)
                    .font(.largeTitle)
                    
                ForEach(0..<100){ index in
                    
                    RoundedRectangle(cornerRadius: 25)
                        .fill(.white)
                        .frame(height:150)
                        .padding()
                        .shadow(color: .black.opacity(0.5), radius: 10, x: 3, y: 3)
                }
            }
        }
    }
}

struct SafeAreaView_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaView()
    }
}
