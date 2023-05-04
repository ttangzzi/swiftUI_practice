//
//  Icon_basic.swift
//  SwiftUI_Basic
//
//  Created by 정기성 on 2023/03/07.
//

import SwiftUI

struct Icon_basic: View {
    var body: some View {
        VStack(spacing : 20) {
            Image(systemName:"pencil")
                .resizable()
            // rederingMode 에서 original 로 하게되면 실제 color 에서 multi color 로 변경됨
            // 즉, 고유 값 컬러로 변경되어서 color 를 변경하더라도 변경되지 않는 컬러 값이 된다
                .renderingMode(.original)
                .scaledToFill()
                .foregroundColor(Color.red)
                .frame(width: 300,height: 300)
        }
    }
}

struct Icon_basic_Previews: PreviewProvider {
    static var previews: some View {
        Icon_basic()
    }
}
