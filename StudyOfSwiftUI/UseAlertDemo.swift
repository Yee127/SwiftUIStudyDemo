//
//  UseAlertDemo.swift
//  myApp2
//
//  Created by Yee Van on 2022/4/7.
//

import SwiftUI

struct UseAlertDemo: View {
    @State var showAlert: Bool = false
    @State var bgColor: Color = .green
    var body: some View {
        ZStack {
            bgColor.edgesIgnoringSafeArea(.all)
            Button {
                showAlert.toggle()
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
                    .alert(isPresented: $showAlert) {
                        getAlert()
                    }
                
            }
        }
    }
    
    func getAlert( ) -> Alert{
        return  Alert(
            title: Text("This is a title"),
            message: Text("Here we'll describe the error!"),
            primaryButton: .destructive(Text("delete".capitalized).bold(),action: {
                bgColor = .red
            }),
            secondaryButton: .cancel())
    }
}

struct UseAlertDemo_Previews: PreviewProvider {
    static var previews: some View {
        UseAlertDemo()
    }
}
