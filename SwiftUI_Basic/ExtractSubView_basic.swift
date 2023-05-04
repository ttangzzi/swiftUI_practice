//
//  ExtractSubView_basic.swift
//  SwiftUI_Basic
//
//  Created by 정기성 on 2023/03/11.
//

import SwiftUI

struct ExtractSubView_basic: View {
    var body: some View {
        ZStack {
            // background
            Color.cyan
                .ignoresSafeArea()
            // content
            contentLayer
        }
    }
    
    var contentLayer : some View {
        HStack {
            Item_basic(title: "사과", count: 1, color: .red)
            Item_basic(title: "오렌지", count: 10, color: .orange)
            Item_basic(title: "바나나", count: 34, color: .yellow)
// 반복되는 디자인 재사용이 쉽게 가능하도록 (함수와 같은 느낌)
        }
    }
}

struct ExtractSubView_basic_Previews: PreviewProvider {
    static var previews: some View {
        ExtractSubView_basic()
    }
}
