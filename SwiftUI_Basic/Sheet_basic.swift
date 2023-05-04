//
//  Sheet.basic.swift
//  SwiftUI_Basic
//
//  Created by 정기성 on 2023/03/19.
//

import SwiftUI

struct Sheet_basic: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            // background
            Color.red.ignoresSafeArea()
            
            // contents
            Button {
                // Sheet 닫기
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
            }

        }
    }
}

struct Sheet_basic_Previews: PreviewProvider {
    static var previews: some View {
        Sheet_basic()
    }
}
