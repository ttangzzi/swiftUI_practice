//
//  LazyGrid.basic.swift
//  SwiftUI_Basic
//
//  Created by 정기성 on 2023/03/11.
//

import SwiftUI

struct LazyGrid_basic: View {
    // LazyVGrid
    // columns 의 갯수를 3개로 설정
    let columns : [GridItem] = [ // GirdItem 싱글 그리드 아이템을 나타냄
        GridItem(.flexible(),spacing: 6,alignment: nil), // flexible() : 크기를 화면에 맞춰 늘였다 줄였다 [형태]
        GridItem(.flexible(),spacing: 6,alignment: nil),
        GridItem(.flexible(),spacing: 6,alignment: nil)
    ]
    
    //Lazy HGrid
    // title 을 1000개 변수를 생성
    // ["목록 1", "목록 2", ... "목록 1000"]
    let title: [String] = Array(1...1000).map {"목록 \($0)"} // $0 = 1...1000을 가르킴 하나씩 넣어줌
    
    // 화면 그리드형식으로 채워줌
    let layout: [GridItem] = [
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80))
    ]
    var body: some View {
        // 1 - LazyVGrid
        ScrollView {
            // 인스타그램 Hero 부분 (위에 사진 부분)
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders]) { // 헤더부분만 핀 고정 해놓았음
                    // Section 1
                    Section(header : Text("Section 1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .background(Color.blue)
                        .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(Color.gray)
                                .frame(height: 150)
                                .overlay(
                                    Text("\(index) 번")
                                )
                        }
                    } // : Section 1
                    // Section 2
                    Section(header : Text("Section 2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity,alignment: .leading)
                        .background(Color.red)
                        .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(Color.green)
                                .frame(height: 150)
                                .overlay(
                                    Text("\(index) 번")
                                )
                        }
                    } // : Section 2
                }
        } // 1번
        
        // 2 - LazyHGrid
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout,spacing: 20) {
                ForEach(title,id: \.self) { item in
                    VStack {
                        Capsule()
                            .fill(Color.yellow)
                            .frame(height: 30)
                        
                        
                        Text(item)
                            .foregroundColor(Color.blue)
                    }
                }
            }
        }
    }
    
    struct LazyGrid_basic_Previews: PreviewProvider {
        static var previews: some View {
            LazyGrid_basic()
        }
    }
}
