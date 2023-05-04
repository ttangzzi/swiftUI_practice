//
//  Gradient_basic.swift
//  SwiftUI_Basic
//
//  Created by 정기성 on 2023/03/07.
//

import SwiftUI

struct Gradient_basic: View {
    var body: some View {
        VStack(spacing : 20) {
            
            // Linear Gradient 선형 그라디언트
            Text("Linear Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]),
                                   startPoint: .topLeading,
                                   endPoint: .bottom)
                    )
                .frame(width: 300, height: 200)
            
            Text("Radial Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    RadialGradient(gradient: Gradient(colors: [Color.yellow,Color.purple]),
                                   center: .leading, // 중심점
                                   startRadius: 5, // 처음 시작할때 Radial 크기
                                   endRadius: 300) // 얼마나 퍼져나갈지
                    )
                .frame(width: 300, height: 200)
            
            Text("Angular Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    AngularGradient(gradient: Gradient(colors: [Color.blue,Color.green]),
                                    center: .topLeading,
                                    angle: .degrees(180)) // 도는 각도?
                    )
                .frame(width: 300, height: 200)
            
        }
    }
}

struct Gradient_basic_Previews: PreviewProvider {
    static var previews: some View {
        Gradient_basic()
    }
}
