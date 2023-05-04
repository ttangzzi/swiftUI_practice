//
//  Frame_basic.swift
//  SwiftUI_Basic
//
//  Created by 정기성 on 2023/03/08.
//

import SwiftUI

struct Frame_basic: View {
    var body: some View {
        VStack(spacing : 20) {
            Text("Hello World!")
                .font(.title)
                .background(Color.green)
                .frame(width: 200 ,height: 200 ,alignment: .center)
                .background(Color.red)
            Divider()
            
            Text("Hello World!")
                .font(.title)
                .background(Color.green)
                .frame(maxWidth: .infinity , maxHeight : .infinity, alignment:.center )
                .background(Color.red)
            // 차지할수있는 최대 범위로 넓혀준다 == infinity
        }
        
        VStack(spacing : 20) { // 위치를 자유자재로 다루기 위해서 중요한 과정이다 꼭 이해하기 !!
            Text("Hello World!")
                .font(.title)
                .background(Color.red)
                .frame(height: 100, alignment: .top)
                .background(Color.orange)
                .frame(width: 200)
                .background(Color.purple)
                .frame(maxWidth: .infinity,alignment: .leading)
                .background(Color.pink)
                .frame(height: 400)
                .background(Color.green)
                .frame(maxHeight: .infinity , alignment: .top)
                .background(Color.yellow)
        }
    }
}

struct Frame_basic_Previews: PreviewProvider {
    static var previews: some View {
        Frame_basic()
    }
}
