//
//  Stack_basic.swift
//  SwiftUI_Basic
//
//  Created by 정기성 on 2023/03/09.
//


import SwiftUI

struct Stack_basic: View {
    var body: some View {
        // 1. VStack
        VStack(alignment: .leading, spacing: 20) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 150,height: 150)
    
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
        }
        
        // 2. HStack
        HStack(spacing : 20) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 100,height: 100)
    
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
        }
        
        // 3. ZStack
        ZStack(alignment:.topLeading) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 150,height: 150)
    
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
            
            // 모두 같은 크기면 오렌지 네모만 보인다
        }
        
        // 4. V,H,Z Stack
        
        ZStack(alignment: .top) {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350,height: 500)
                    
            VStack(alignment: .leading, spacing: 30) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150,height: 150)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100,height: 100)
                
                HStack(alignment: .bottom,spacing: 10) {
                    Rectangle()
                        .fill(Color.purple)
                        .frame(width: 50,height: 50)
                    
                    Rectangle()
                        .fill(Color.pink)
                        .frame(width: 75,height: 75)
                    
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 25,height: 25)
                }
                .background(Color.white) // 범위 확인
            }
            .background(Color.black) // 범위 확인
        }
        
        // 5. ZStack vs Background
        
        VStack(spacing : 50) {
            // ZStack 을 사용해서 원에 1을 표현 - layer 가 복잡할때 Zstack 사용하면 좋음
            ZStack {
                Circle()
                    .frame(width: 100,height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            // Background 를 사용해서 원에 1을 동일하게 표현 - layer 가 단순할 경우 추천
            Text("1")
                .font(.title)
                .foregroundColor(Color.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
    }
}

struct Stack_basic_Previews: PreviewProvider {
    static var previews: some View {
        Stack_basic()
    }
}
