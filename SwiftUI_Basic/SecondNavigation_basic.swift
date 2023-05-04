//
//  SecondNavigation_basic.swift
//  SwiftUI_Basic
//
//  Created by 정기성 on 2023/03/19.
//

import SwiftUI

struct SecondNavigation_basic: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack (spacing: 20) {
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("이전 페이지로 이동")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }
                
                NavigationLink {
                    ZStack {
                        Color.red.ignoresSafeArea()
                        Text("3번째 페이지 입니다")
                            .font(.largeTitle)
                    }
                } label: {
                    Text("3번째 페이지로 이동")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                }

            }
        }
    }
    
    struct SecondNavigation_basic_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                SecondNavigation_basic()
            }
        }
    }
}
