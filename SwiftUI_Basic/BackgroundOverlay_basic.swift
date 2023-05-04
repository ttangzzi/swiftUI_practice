//
//  BackgroundOverlay_basic.swift
//  SwiftUI_Basic
//
//  Created by 정기성 on 2023/03/08.
//

import SwiftUI

struct BackgroundOverlay_basic: View {
    var body: some View {
        VStack(spacing : 20) {
            // 1. Background
            Text("Hello, World")
                .frame(width: 100, height: 100)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.red,Color.blue]),
                                startPoint: .leading,
                                endPoint: .trailing)
                        )
                )
                .frame(width: 120,height: 120)
                .background(
                    Circle()
                        .fill(Color.red)
                )
            Divider()
            
            // 2. Overlay
            Circle()
                .fill(Color.pink)
                .frame(width: 100,height: 100)
                .overlay( // 숫자 1은 pink circle 앞에 나타나게 됨
                    Text("1")
                        .font(.title)
                        .foregroundColor(Color.white)
                )
                .background( // purple circle 은 pink circle 뒤에 나타나게 됨
                    Circle()
                        .fill(Color.purple)
                        .frame(width: 120,height: 120)
                )
            Divider()
            // 3.Background and Overlay
            Rectangle() // 검정 네모
                .frame(width: 200,height: 200)
                .overlay(
                    Rectangle() // 파란 네모
                        .fill(Color.blue)
                        .frame(width: 100,height: 100)
                    ,alignment: .leading
                )
                .background(
                    Rectangle() // 빨강 네모
                        .fill(Color.red)
                        .frame(width: 250,height: 250)
                )
                .padding() // Divider() 와 좀 더 벌어지게 됨
            Divider()
            
            Image(systemName: "heart.fill")
                .font(.system(size: 40)) // 정확한 사이즈 측정 방법
                .foregroundColor(Color.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.cyan,Color.blue]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)
                        )
                        .frame(width: 100,height: 100)
                        .shadow(color: Color.blue, radius: 10,x:0,y:10)
                        .overlay(
                            Circle()
                                .fill(Color.red)
                                .frame(width: 35,height: 35)
                                .overlay(
                                    Text("2")
                                        .font(.headline)
                                        .foregroundColor(Color.white)
                                )
                                .shadow(color: Color.red, radius: 10,x:5,y:5)
                            ,alignment: .bottomTrailing
                        )
                )
                .padding()
        }
    }
}

struct BackgroundOverlay_basic_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundOverlay_basic()
    }
}
