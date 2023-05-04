//
//  Color_basic.swift
//  SwiftUI_Basic
//
//  Created by 정기성 on 2023/03/06.
//

import SwiftUI

struct Color_basic: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Basic Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.blue)
                .frame(width: 300,height: 100)
            
            // Primary Color
            // 자동으로 색 다크지원
            Text("Primary Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.secondary)
                .frame(width: 300, height: 100)
            
            // UIColor
            // UIKit
            Text("UI Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(UIColor.secondarySystemBackground))
                .frame(width: 300,height: 100)
            
            // Custom Color
            // Asset 에서 Color set 을 미리 설정 한 색을 사용할 수 있습니다.
            Text("Custom Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color("CustomColor"))
                .frame(width: 300,height: 100)
            
            
        }
        
    }
}

struct Color_basic_Previews: PreviewProvider {
    static var previews: some View {
        Color_basic()
            // 다크모드
            // .preferredColorScheme(.dark)
        
    }
}
