//
//  Button_basic.swift
//  SwiftUI_Basic
//
//  Created by 정기성 on 2023/03/11.
//

import SwiftUI

struct Button_basic: View {
    // property
    @State var mainTitle : String = "아직 버튼 안눌림" // State : 상태관리 해주는 것, 상태변경시 업데이트 자동
    var body: some View {
        VStack(spacing : 20) {
            // 리셋 버튼
            Button {
                self.mainTitle = "리셋"
            } label: {
                Text("리셋")
            }

            
            Text(mainTitle)
                .font(.title)
            
            Divider()
            
            // 1번 버튼
            // action 은 button 을 눌렀을때 실행할 event 넣기
            //label 은 button 모양을 디자인하기
            
            Button {
                // action 부분
                self.mainTitle = "기본 버튼 눌림"
            } label: {
                // label 부분
                Text("기본 버튼")
            }
            .accentColor(.red)
            
            Divider()
            
            // 2번 버튼
            Button {
                self.mainTitle = "저장 버튼 눌림"
            } label: {
                Text("저장")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                        )
            }
            Divider()
            
            // 3번 버튼
            Button {
                self.mainTitle = "하트 버튼 눌림"
            } label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75,height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(Color.red)
                    )
            }
            Divider()
            
            // 4번 버튼
            Button {
                self.mainTitle = "완료 버튼 눌림"
            } label: {
                Text("완료")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal,10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.5)
                        
                    )
                
            }

        }
    }
}

struct Button_basic_Previews: PreviewProvider {
    static var previews: some View {
        Button_basic()
    }
}
