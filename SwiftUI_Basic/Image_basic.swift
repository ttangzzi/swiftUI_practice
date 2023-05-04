//
//  Image_basic.swift
//  SwiftUI_Basic
//
//  Created by 정기성 on 2023/03/07.
//

import SwiftUI

struct Image_basic: View {
    var body: some View {
        VStack(spacing : 20) {
            Image("포뇨1_swiftUI 연습활용")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .cornerRadius(150) // 이건 모서리를 둥글게해서 만든 원형
            
            Divider() //회색라인 (자주 사용된다고 함)
            
            Image("포뇨1_swiftUI 연습활용")
                .resizable()
                .scaledToFill()
                .frame(width: 300,height: 300)
                .clipShape(Circle()) // 이건 모양 자체를 원형으로 지정해서 만듦
                
        }
    }
}

struct Image_basic_Previews: PreviewProvider {
    static var previews: some View {
        Image_basic()
    }
}
