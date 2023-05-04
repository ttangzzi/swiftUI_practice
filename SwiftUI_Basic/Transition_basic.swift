//
//  Transition_basic.swift
//  SwiftUI_Basic
//
//  Created by 정기성 on 2023/03/18.
//

import SwiftUI

struct Transition_basic: View {
    
    @State var showTransition : Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button {
                    withAnimation(.easeInOut) {
                        showTransition.toggle()
                    }
                } label: {
                    Text("Button")
                }
                Spacer()
            }
            if showTransition {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .opacity(showTransition ? 1.0 : 0.0)
                    // .move transition 움직여서 나타나기
                    // .transition(.move(edge: .bottom))
                    
                    // .opacity transition 투명하다 나타나기
                    // .transition(.opacity)
                
                    // scale transition 커지면서 나타나기
                    // .transition(.scale)
                
                    // asymmetric transition - 시작점 끝나는 지점을 custom 정해주기 때문에 비대칭 transition
                
                    .transition(.asymmetric(
                        insertion: .move(edge: .leading), // 시작점
                        removal: .move(edge: .trailing))) // 끝점
            }
        }
        .ignoresSafeArea(edges:.bottom)
    }
}

struct Transition_basic_Previews: PreviewProvider {
    static var previews: some View {
        Transition_basic()
    }
}
