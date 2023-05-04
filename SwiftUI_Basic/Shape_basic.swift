//
//  Shape_basic.swift
//  SwiftUI_Basic
//
//  Created by 정기성 on 2023/03/06.
//

import SwiftUI

struct Shape_basic: View {
    var body: some View {
        VStack(spacing:20) {
            Text("원형")
                .font(.title)
            Circle()
            // .fill(Color.blue)
            // .foregroundColor(.pink)
            // .stroke(Color.red,lineWidth: 20)
            // .stroke(Color.purple, style: StrokeStyle(lineWidth: 30,lineCap: .butt,dash: [30]))
                .trim(from: 0.2,to:1.0) // from 이 자르는 범위
                .stroke(Color.purple,lineWidth: 50)
                .frame(width: 200, height: 100/* ,alignment: .center 기본값이 center라 굳이 적을필요없다 */)
                .padding() // 설명 부실해서 나중에 다룰예정 (?)
            
            Text("타원형")
                .font(.title)
            Ellipse()
                .fill(Color.green)
                .frame(width: 200,height: 100,alignment: .center)
            
            Text("캡슐형")
                .font(.title)
            Capsule(style: .circular)
                .stroke(Color.blue,lineWidth: 30)
                .frame(width: 200,height: 100,alignment: .center)
        }
        VStack(spacing:20) {
            
            Text("사각형")
                .font(.title)
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 100,alignment: .center)
            
            Text("둥근직사각형")
                .font(.title)
            
            RoundedRectangle(cornerRadius: 20)
                .trim(from: 0.4,to:1.0)
                .frame(width: 300, height: 200,alignment: .center)
        }
    }
    
    struct Shape_basic_Previews: PreviewProvider {
        static var previews: some View {
            Shape_basic()
        }
    }
}

