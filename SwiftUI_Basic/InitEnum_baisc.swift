//
//  InitEnum_baisc.swift
//  SwiftUI_Basic
//
//  Created by 정기성 on 2023/03/09.
//

import SwiftUI

struct InitEnum_baisc: View {
    
    // 변수 선언
    let backgroudColor : Color
    let count : Int // self.count 는 이것을 가르킴
    let title : String
    
    // enum 생성
    enum Fruit {
        case apple
        case orange
    }
    
    // init 함수 생성
    init(count : Int, fruit : Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "사과"
            self.backgroudColor = .red
        } else {
            self.title = "오렌지"
            self.backgroudColor = .orange
        }
    }
    
    
    var body: some View {
        VStack (spacing : 20) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundColor(Color.white)
        }
        .frame(width: 150,height: 150)
        .background(backgroudColor)
        .cornerRadius(10)
    }
}

struct InitEnum_baisc_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            InitEnum_baisc(count: 100, fruit: .apple)
            InitEnum_baisc(count: 46, fruit: .orange)
        }
    }
}
