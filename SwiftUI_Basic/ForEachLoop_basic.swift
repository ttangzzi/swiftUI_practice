//
//  ForEachLoop_basic.swift
//  SwiftUI_Basic
//
//  Created by 정기성 on 2023/03/11.
//

import SwiftUI

struct ForEachLoop_basic: View {
    var data : [String] = ["Hi", "Hello" , "Hey everyone"] // 0,1,2 이렇게 아이디값을 정해야 사용가능
    var body: some View {
        // 1번
        VStack {
            ForEach(0..<10) { index in
                HStack {
                    Circle()
                        .frame(width: 20,height: 20)
                    
                    Text("인덱스 번호 : \(index)번")
                }
            }
            Divider()
            
            // 2번
            ForEach(data, id: \.self) {item in
                Text(item)
            }
        }
    }
}

struct ForEachLoop_basic_Previews: PreviewProvider {
    static var previews: some View {
        ForEachLoop_basic()
    }
}
