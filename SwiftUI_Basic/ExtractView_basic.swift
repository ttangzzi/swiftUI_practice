//
//  ExtactView_basic.swift
//  SwiftUI_Basic
//
//  Created by 정기성 on 2023/03/11.
//

import SwiftUI

struct ExtactView_basic: View {
    // property
    @State var backgroundColor : Color = Color.pink
    
    var body: some View {
        ZStack {
            //background
            backgroundColor
                .ignoresSafeArea()
            
            //content
            contentLayer
        }
    }
    // body 부분이 너무 길어질때 Extract 를 사용함
    
    
    // content
    var contentLayer : some View {
        VStack {
            Text("Extract View 연습")
                .font(.largeTitle)
            
            Button {
                buttonPressed()
            } label: {
                Text("바탕색 변경")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(10)
            }
        }
    }
    
    // Function
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

struct ExtactView_basic_Previews: PreviewProvider {
    static var previews: some View {
        ExtactView_basic()
    }
}
