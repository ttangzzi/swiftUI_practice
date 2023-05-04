//
//  ScrollVeiw_basic.swift
//  SwiftUI_Basic
//
//  Created by 정기성 on 2023/03/09.
//

import SwiftUI

struct ScrollVeiw_basic: View {
    var body: some View {
        // 1번 - 세로 스크롤
        ScrollView(.vertical,showsIndicators: false) // showsIndicators 스크롤바 보이게 안보이게
        {
            VStack {
                ForEach(0..<50) { index in // 반복문
                    Rectangle()
                        .fill(Color.blue)
                        .frame(height: 300)
                        .overlay(
                            Text("\(index) 번") // 박스마다 번호를 붙인다
                                .font(.title)
                        )
                }
            }
        }
        
        // 2번 - 가로 스크롤
        ScrollView(.horizontal,showsIndicators: true) {
            HStack {
                ForEach(0..<50) { index in // 반복문
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 300)
                        .overlay(
                            Text("\(index) 번") // 박스마다 번호를 붙인다
                                .font(.title)
                        )
                }
            }
        }
        
        // 3번 - 혼합 (넷플릭스 구성과 같은)
        ScrollView(.vertical, showsIndicators: true) {
            LazyVStack // 나중에 자세하게 다룬다
            {
                ForEach(0..<10) { _ in // index 번호를 받지않을때 "_"
                    ScrollView(.horizontal,showsIndicators: false) {
                        LazyHStack{
                            ForEach(0..<20) { _ in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.red)
                                    .frame(width: 200,height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ScrollVeiw_basic_Previews: PreviewProvider {
    static var previews: some View {
        ScrollVeiw_basic()
    }
}
