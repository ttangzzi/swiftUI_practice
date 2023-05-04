//
//  Padding_basic.swift
//  SwiftUI_Basic
//
//  Created by 정기성 on 2023/03/09.
//

import SwiftUI

struct Padding_basic: View {
    var body: some View {
        VStack(alignment : .leading,spacing: 20) {
            // 1. padding 기본
                Text("Hello, World!")
                .background(Color.yellow)
                .padding() // == .padding(.all, 15) 기본값
                .padding(.leading,20) // CSS 기준 padding
                .background(Color.blue)
                .padding(.bottom,20) // CSS 기준 margin
            
            Divider()
            
            // 2. padding 응용
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.bottom,20)
            
            Text("안녕하세요 헬로우 월드에 오신 여러분 환영합니다 . 안녕하세요 헬로우 월드에 오신 여러분 환영합니다 . 안녕하세요 헬로우 월드에 오신 여러분 환영합니다 . 안녕하세요 헬로우 월드에 오신 여러분 환영합니다 . 안녕하세요 헬로우 월드에 오신 여러분 환영합니다 .")
        }
        // Vstack 범위 밖에서 padding 설정
        .padding()
        .padding(.vertical,30) // 위 아래 30씩 벌어진다
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x:10, y:10)
        )
        .padding()
    }
}

struct Padding_basic_Previews: PreviewProvider {
    static var previews: some View {
        Padding_basic()
    }
}
