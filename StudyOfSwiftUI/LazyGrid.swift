//
//  LazyGrid.swift
//  myApp2
//
//  Created by Yee Van on 2022/4/6.
//

import SwiftUI

struct LazyGrid: View {
    let columns: [GridItem] = [
        GridItem(.flexible(),spacing: nil,alignment: nil),
        GridItem(.flexible(),spacing: nil,alignment: nil),
        GridItem(.flexible(),spacing: nil,alignment: nil),
        GridItem(.flexible(),spacing: nil,alignment: nil),
        GridItem(.flexible(),spacing: nil,alignment: nil),
        GridItem(.flexible(),spacing: nil,alignment: nil)
    ]
    var body: some View {
        ScrollView{
            LazyVGrid(
            columns: columns,
            alignment: .center,
            pinnedViews: [.sectionHeaders]  // 固定标题
            ) {
                Section(header: Text("Section 1")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth:.infinity, alignment: .leading)
                    .background(.blue)
                ) {
                        ForEach(0..<100){ index in
                            Rectangle()
                                .cornerRadius(10)
                                .frame(width: 50, height: 50)
                        }
                    }
                
                Section(header: Text("Section 2")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth:.infinity, alignment: .leading)
                    .background(.green)
                ) {
                        ForEach(0..<100){ index in
                            Rectangle()
                                .cornerRadius(10)
                                .frame(width: 50, height: 50)
                        }
                    }
                
                
                Section(header: Text("Section 3")
                    .foregroundColor(.white)
                    .font(.title)
                    .frame(maxWidth:.infinity, alignment: .leading)
                    .background(.orange)
                ) {
                        ForEach(0..<100){ index in
                            Rectangle()
                                .cornerRadius(10)
                                .frame(width: 50, height: 50)
                        }
                    }

               
            }
        }
        
    }
}

struct LazyGrid_Previews: PreviewProvider {
    static var previews: some View {
        LazyGrid()
    }
}
