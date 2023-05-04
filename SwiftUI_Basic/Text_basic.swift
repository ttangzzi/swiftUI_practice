//
//  Text_basic.swift
//  SwiftUI_Basic
//
//  Created by 정기성 on 2023/03/06.
//

import SwiftUI

struct Text_basic: View {
    var body: some View {
        VStack (spacing: 20) {
            //font 사이즈를 title, body, footnote 등 정하면 reponsive
            Text("Hello World")
                .font(.title)
                // .fontWeight(.semibold)
                .bold() // == .fontWeight(.bold)
                .underline(true,color : Color.red)
                .italic()
                // 글 중간에 선 긋기
                .strikethrough(true,color: Color.green)
            
            // 이 방법으로 하게 되면 text 크기를 지정할 수 있습니다. font 12, 40 ... 단점 : 고정식
            Text("Hello World2".uppercased()) // 대문자
                .font(.system(size:25, weight:.semibold,design:.monospaced))
            
            Text("멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다. 멀티라인 텍스트 정렬입니다.")
                .multilineTextAlignment(.trailing) // 오른쪽정렬
            // center (가운데정렬), leading(왼쪽정렬)
                .foregroundColor(.red)
        }
    }
}

struct Text_basic_Previews: PreviewProvider {
    static var previews: some View {
        Text_basic()
    }
}
