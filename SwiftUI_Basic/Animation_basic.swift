//
//  Animation_basic.swift
//  SwiftUI_Basic
//
//  Created by 정기성 on 2023/03/18.
//

import SwiftUI


struct Animation_basic: View {
    @State var isAnimated : Bool = false // 1번 뷰에 사용할 변수값
    let timing : Double = 5.0 // 2번 뷰에 사용할 변수값
    var body: some View {
        
        // 1번 뷰
        
        VStack {
            Button {
                withAnimation( // 애니메이션 주기
                    .default // 애플의 기본적인 제공 애니메이션 효과
                    .repeatCount(5)
                ) {
                    isAnimated.toggle()
                }
            } label: {
                Text("Button")
            }
                Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 0)
                .fill(isAnimated ? Color.red : Color.green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                    )
                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                .offset(y: isAnimated ? 300 : 0)
            Spacer()
        }
        
        // 2번 뷰 - liner , ease
        
        VStack {
            Button {
                isAnimated.toggle()
            } label: {
                Text("Button")
            }
                
            // liner animatior : 처음부터 끝까지 속도가 일정하다
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50 , height: 100)
                .animation(.linear(duration: timing), value: isAnimated) // value 값 넣어주기 중요 !
            
            // easeIn animatior : 처음엔 느렸다가 끝에 빨라지는 효과
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50 , height: 100)
                .animation(.easeIn(duration: timing), value: isAnimated)
            
            // easeOut animatior : 처음엔 빨랐다가 끝에 느려지는 효과
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50 , height: 100)
                .animation(.easeOut(duration: timing), value: isAnimated)

            // easeInOut animatio : 처음,끝에 느렸다가 중간에 빨라지는 효과
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50 , height: 100)
                .animation(.easeInOut(duration: timing), value: isAnimated)
        }
        
        // 3번 뷰 Spring animation
        VStack {
            Button {
                withAnimation(.spring(
                    response: 0.5, // 단일 진동을 완료하는 데에 걸리는 시간 (초)
                    dampingFraction: 0.5, // 얼마나 빠르게 스프링 정지하는 속도 제어
                    blendDuration: 0)) { // 다른 애니메이션간의 전환 길이 제어, 단일일땐 주지않음
                        isAnimated.toggle()
                    }
            } label: {
                Text("Button")
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimated ? 350 : 50,height: 100)
        }
        
    }
}

struct Animation_basic_Previews: PreviewProvider {
    static var previews: some View {
        Animation_basic()
    }
}
