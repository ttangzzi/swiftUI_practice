//
//  Nevigation_basic.swift
//  SwiftUI_Basic
//
//  Created by 정기성 on 2023/03/19.
//

import SwiftUI

struct Nevigation_basic: View {
    @State var showSheet : Bool = false
    var body: some View {
        NavigationView {
            VStack{
                NavigationLink {
                    // destiation : 목적지 -> 어디로 이동할것이냐 ? 버튼과비슷한 구조
                    SecondNavigation_basic()
                } label: {
                    Text("Second Navigation 이동")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }

            } // VStack
            // navigationTitle : 페이지 제목
            .navigationTitle("페이지 제목")
            
            // .automatic : 자동 , inline : 상단에 작게, large : leading 쪽으로 크게
            .navigationBarTitleDisplayMode(.large)
            
            // navigationBarHidden - 네비게이션 타이틀 , 바를 감추는 것
            // .navigationBarHidden(true)
            
            // navigationBarItems 상단 좌우에 icon , text , button 을 사용해서 나타낼 수 있음
            .navigationBarItems(leading: Image(systemName: "line.3.horizontal"),
                                trailing: Button(
                                    action: {
                                        showSheet.toggle()
                                    },
                                    label: {
                                        Image(systemName: "gear")
                                    }))
            
        } // NavigationVeiw
        .sheet(isPresented: $showSheet)
        {
            ZStack {
                Color.green.ignoresSafeArea()
                
                Text("설정 페이지입니다.")
                    .font(.largeTitle)
            }
        }
    }
}

struct Nevigation_basic_Previews: PreviewProvider {
    static var previews: some View {
        Nevigation_basic()
    }
}
