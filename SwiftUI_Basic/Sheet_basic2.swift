//
//  Sheet_basic2.swift
//  SwiftUI_Basic
//
//  Created by 정기성 on 2023/03/19.
//

import SwiftUI

struct Sheet_basic2: View {

    @State var showSheet : Bool = false
    
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
            }
//            .sheet(isPresented: $showSheet) {
//                Sheet_basic()
//            }
            .fullScreenCover(isPresented: $showSheet) {
                Sheet_basic()
            }

        }
    }
}


struct Sheet_basic2_Previews: PreviewProvider {
    static var previews: some View {
        Sheet_basic2()
    }
}
