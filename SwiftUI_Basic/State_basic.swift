//
//  State_Basic.swift
//  SwiftUI_Basic
//
//  Created by 정기성 on 2023/03/11.
//

import SwiftUI

struct State_Basic: View {
    // property
    @State var backgroundColor : Color = Color.green
    @State var myTitle : String = "아직 버튼 안눌림"
    @State var count : Int = 0
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            VStack(spacing : 20) {
                Text(myTitle)
                    .font(.title)
                Text("카운트 : \(count)")
                
                HStack(spacing: 20) {
                    Button {
                        // action
                        self.backgroundColor = .red
                        self.myTitle = "1번 버튼 눌림"
                        self.count += 1
                        // self 를 생략해도 된다
                    } label: {
                        Text("1번 버튼")
                    }
                    
                    Button {
                        // action
                        backgroundColor = .purple
                        myTitle = "2번 버튼 눌림"
                        count -= 1
                    } label: {
                        Text("2번 버튼")
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct State_Basic_Previews: PreviewProvider {
    static var previews: some View {
        State_Basic()
    }
}
