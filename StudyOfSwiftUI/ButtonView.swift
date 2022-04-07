//
//  ButtonView.swift
//  myApp2
//
//  Created by Yee Van on 2022/4/6.
//

import SwiftUI

struct ButtonView: View {
    @State var title:String = "This is a title"
    var body: some View {
        VStack{
            Text(title)
                .font(.title)
                .padding()
            
            
            Button("Press me!") {
                self.title = "you touch me!"
            }
            
            
            Button {
                self.title = "❤"
            } label: {
                Circle()
                    .fill(.white)
                    .frame(width: 80, height: 80)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.red)
                    )
                
            }
 
            
            Button {
                self.title = "Finish"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal,10)
                    .background(
                        Capsule()
                            .stroke(Color.gray,lineWidth: 3.0)
                    )
                    .shadow(radius: 10)
                
            }


        }
        
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
