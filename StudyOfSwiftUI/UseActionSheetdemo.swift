//
//  UseActionSheetdemo.swift
//  myApp2
//
//  Created by Yee Van on 2022/4/7.
//

import SwiftUI

struct UseActionSheetdemo: View {
    @State var showActionSheet: Bool = false
    @State var bgColor: Color = .green
    var body: some View {
        ZStack {
            bgColor.edgesIgnoringSafeArea(.all)
            Button {
                showActionSheet.toggle()
            } label: {
                Text("Click Me".uppercased())
                    .font(.headline)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal,10)
                    .background(
                        Capsule()
                            .stroke(Color.white,lineWidth: 3.0)
                    )
                    .shadow(radius: 10)
                    .actionSheet(
                        isPresented: $showActionSheet,
                        content: getActionSheet)

//
            }
        }
    }
    
    func getActionSheet( ) -> ActionSheet{
        let btn1: ActionSheet.Button = .default(Text("default".capitalized).bold())
        let btn2: ActionSheet.Button = .destructive(Text("destructive".capitalized).bold())
        let btn3: ActionSheet.Button = .cancel()
        return
//        ActionSheet(title: Text("hello").font(.title).bold())
        ActionSheet(
            title: Text("Title"),
            message: Text("Content"),
            buttons: [btn1,btn2,btn3])
    }
}

struct UseActionSheetdemo_Previews: PreviewProvider {
    static var previews: some View {
        UseActionSheetdemo()
    }
}
