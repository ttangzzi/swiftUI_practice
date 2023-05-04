//
//  Item_basic.swift
//  SwiftUI_Basic
//
//  Created by 정기성 on 2023/03/11.
//

import SwiftUI

struct Item_basic: View {
    //property
    let title : String
    let count : Int
    let color : Color
    // var (x) , 고정값이므로 let 사용
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}

struct Item_basic_Previews: PreviewProvider {
    static var previews: some View {
        Item_basic(title: "사과", count: 1, color: .red) // 기본값 설정
            .previewLayout(.sizeThatFits) // 더 쉽게 디자인 형태 알아볼수있음
    }
}
