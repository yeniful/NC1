//
//  SecondView.swift
//  test103
//
//  Created by Yeni Hwang on 2022/04/27.
//

import SwiftUI

struct FoodListView: View {
    var body: some View {
        
        NavigationView{
            
            List {
                
                Section(header: Text("밥")){
                    ForEach(foodDatas, id: \.self.name) { data in
                        if data.foodCategory == .restaurant{
                            Button(
                                action: {
                                    print("selected \(data.name)")
                                }, label: {
                                    HStack{
                                        Text(data.name).foregroundColor(.black)
                                        Text(data.description).font(.caption).foregroundColor(.gray)
                                    }
                                }
                            )
                        }
                    }
                }.headerProminence(.increased)
                
                Section(header: Text("카페")){
                    ForEach(foodDatas, id: \.self.name) { data in
                        if data.foodCategory == .cafe{
                            Button(
                                action: {
                                    print("selected \(data.name)")
                                }, label: {
                                    HStack{
                                        Text(data.name).foregroundColor(.black)
                                        Text(data.description).font(.caption).foregroundColor(.gray)
                                    }
                                }
                            )
                        }
                    }
                }.headerProminence(.increased)
                
                Section(header: Text("술")){
                    ForEach(foodDatas, id: \.self.name) { data in
                        if data.foodCategory == .bar{
                            Button(
                                action: {
                                    print("selected \(data.name)")
                                }, label: {
                                    HStack{
                                        Text(data.name).foregroundColor(.black)
                                        Text(data.description).font(.caption).foregroundColor(.gray)
                                    }
                                }
                            )
                        }
                    }
                }.headerProminence(.increased)

            }.listStyle(.insetGrouped)
            .navigationBarTitle(Text("Food"))

        }
        
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        FoodListView()
    }
}
