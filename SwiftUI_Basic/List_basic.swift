//
//  List_basic.swift
//  SwiftUI_Basic
//
//  Created by 정기성 on 2023/03/19.
//

import SwiftUI

struct List_basic: View {
    @State var fruits : [String] = [
        "사과", "오렌지","바나나","수박"
    ]
    
    @State var meats : [String] = [
        "소고기", "돼지고기","닭고기"
    ]
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(fruits, id:\.self) {fruits in
                        Text(fruits)
                            .font(.body)
                            .foregroundColor(.white)
                            .padding(.vertical)
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: move)
                    .listRowBackground(Color.blue)
                } header: {
                    Text("과일 종류")
                        .font(.headline)
                        .foregroundColor(.brown)
                } // :Section
                
                Section {
                    ForEach(meats, id:\.self) {meats in
                        Text(meats)
                    }
                } header: {
                    Text("고기종류")
                        .font(.headline)
                        .foregroundColor(.red)
                }

            } // :List
            .navigationTitle("우리 동네 마트")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(leading: EditButton(), trailing: addButton)
        } // :Navigation
    } // :Body
    
    // Function
    func delete(indexSet : IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices : IndexSet, newoffset : Int) {
        fruits.move(fromOffsets: indices, toOffset: newoffset)
    }
    
    var addButton: some View {
        Button {
            fruits.append("딸기")
        } label: {
            Text("Add")
        }

    }
}

struct List_basic_Previews: PreviewProvider {
    static var previews: some View {
        List_basic()
    }
}
