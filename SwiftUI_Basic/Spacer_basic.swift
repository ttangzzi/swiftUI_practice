//
//  spacer_basic.swift
//  SwiftUI_Basic
//
//  Created by 정기성 on 2023/03/09.
//

import SwiftUI

struct spacer_basic: View {
    var body: some View {
        // 1번 - Spacer 예시 도형
        HStack(spacing: 0) {
            Spacer(minLength: 0) // 최소 길이
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.blue)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.pink)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.black)
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
        }
        .background(Color.yellow)
        
        // 2번 - App 상단 설정 닫기 아이콘 만들기
        VStack {
            HStack(spacing : 0) {
                Image(systemName : "xmark")
                
                Spacer() // 최대한 공간을 차지하려는 속성때문에 x 와 gear 거리를 최대한 벌린다
                
                Image(systemName: "gear")
            }
            .font(.title)
            .padding(.horizontal) // 좌우로 벌어지게끔 padding
            
            Spacer()
        }
    }
}

struct spacer_basic_Previews: PreviewProvider {
    static var previews: some View {
        spacer_basic()
    }
}
