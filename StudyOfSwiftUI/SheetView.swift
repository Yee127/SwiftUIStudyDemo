//
//  SheetView.swift
//  myApp2
//
//  Created by Yee Van on 2022/4/6.
//

import SwiftUI

struct SheetView: View {
    @State var toShowSheet: Bool = false
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            
            Button {
                toShowSheet.toggle()
            } label: {
                Text("Button")
                    .bold()
                    .frame(width: 100, height: 50)
                    .foregroundColor(.green)
                    .background(.white)
                    .cornerRadius(22)
                    .shadow(radius: 10)
            }.sheet(isPresented: $toShowSheet) {
                
                SecondScreen()
            }

        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}

struct SecondScreen: View {
    @State var toShowSheet: Bool = false
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            VStack{
                Button {
                    toShowSheet.toggle()
                } label: {
                    Text("Button")
                        .bold()
                        .frame(width: 100, height: 50)
                        .foregroundColor(.yellow)
                        .background(.white)
                        .cornerRadius(22)
                        .shadow(radius: 10)
                }.sheet(isPresented: $toShowSheet) {
                    
                    ThirdScreen()
                }
            }
        }
        .cornerRadius(32)
        .background(.yellow)
            
    }
}

struct ThirdScreen: View {
    @State var toShowSheet: Bool = false
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()
            VStack{
                Button {
                    toShowSheet.toggle()
                } label: {
                    Text("Button")
                        .bold()
                        .frame(width: 100, height: 50)
                        .foregroundColor(.red)
                        .background(.white)
                        .cornerRadius(22)
                        .shadow(radius: 10)
                }.sheet(isPresented: $toShowSheet) {
//                    SecondScreen()
                    Text("hahahahha")
                }
            }
        }.cornerRadius(32)
            .background(.red)
            
    }
}

