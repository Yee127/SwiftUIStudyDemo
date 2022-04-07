//
//  ListDemo.swift
//  myApp2
//
//  Created by Yee Van on 2022/4/7.
//

import SwiftUI

struct ListDemo: View {
    @State var fruits:[String] = [
    "apple","banana","orange","peach"
    ]
    
    @State var vaggies:[String] = [
    "tomato","potato","carrot"
    ]
    var body: some View {
        NavigationView {
            List{
                    Section(header: Text("Fruits".uppercased())) {
                        ForEach(fruits,id: \.self){ fruit in
                            Text(fruit.capitalized)
                        }
                        .onDelete(perform: deleteItem)
                        .onMove(perform: moveItem)
                    }
                
                Section(header: Text("Veggies".uppercased())) {
                    ForEach(vaggies,id: \.self){ vaggies in
                        Text(vaggies.capitalized)
                    }
                    .onDelete(perform: deleteItem)
                    .onMove(perform: moveItem)
                }
            }
            .navigationTitle("Grocery List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
            )
        }
            

//            ScrollView{
//
//            }
//            List(0 ..< 500) { item in
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            }
//            .navigationTitle("List")
//            .navigationBarItems(leading: Image(systemName: "heart")
//                .foregroundColor(.red), trailing: Image("apple").resizable().frame(width: 25, height: 30))
    }
    
    var addButton: some View{
        Button("Add",action: {
            addItem()
        })
    }
    
    func deleteItem(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    
    func moveItem(indices: IndexSet,newOffset:Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func addItem(){
        fruits.append("apple")
    }
}

struct ListDemo_Previews: PreviewProvider {
    static var previews: some View {
        ListDemo()
    }
}
