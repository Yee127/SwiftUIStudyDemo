//
//  NavigationView.swift
//  myApp2
//
//  Created by Yee Van on 2022/4/7.
//

import SwiftUI

struct NavigationViewDemo: View {
    var body: some View {
        NavigationView{
            ScrollView{
                NavigationLink("hello word",destination: MyOtherScreen())
                Text("hello1")
                Text("hello2")
                Text("hello3")
                Text("hello4")
                Text("hello5")
                Text("hello6")
            }
            .navigationTitle("Index")
//            .navigationBarTitleDisplayMode(.inline)
//            .navigationBarHidden(true)
            .navigationBarItems(
                leading: HStack {
                    Image(systemName: "person.fill")
                    Image(systemName: "flame.fill").foregroundColor(.red)
                },
                trailing: NavigationLink(
                    destination: MyOtherScreen(),
                    label: {
                        Image(systemName: "heart.fill")
            })
                .accentColor(.green))
            
        }
    }
    
}
struct MyOtherScreen: View{
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View{
        ZStack{
            Color.green.ignoresSafeArea().navigationTitle("Green Screen")
//                .navigationBarHidden(true)
            
            VStack {
                Button("Back"){
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("click here",destination: Text("3rd screen"))
            }
            
            
        }
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewDemo()
    }
}


