//
//  IgnoreSafeArea_basic.swift
//  SwiftUI_Basic
//
//  Created by 정기성 on 2023/03/11.
//

import SwiftUI

struct IgnoreSafeArea_basic: View {
    var body: some View {
        // 1번화면
        ZStack {
            // background 설정
            Color.blue
                .ignoresSafeArea(edges: .top) // 전체영역을 다 사용하고 싶을때 사용 (기본값 : all)
                // .ignoresSafeArea(edges: .bottom)
            
            // content
            VStack {
                Text("Hello World")
                    .font(.largeTitle)
            }
        }
        // 2번화면
        ScrollView {
            VStack {
                Text("박스형 리스트")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity)
                
                ForEach(1..<11) { index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding()
                        .overlay(
                            Text("\(index)번 리스트")
                        )
                }
            }
        }
        .background(Color.blue.ignoresSafeArea())
    }
}

struct IgnoreSafeArea_basic_Previews: PreviewProvider {
    static var previews: some View {
        IgnoreSafeArea_basic()
    }
}
