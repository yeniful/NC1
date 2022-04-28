//
//  ThirdView.swift
//  test103
//
//  Created by Yeni Hwang on 2022/04/27.
//

import SwiftUI

struct SpotListView: View {
    var body: some View {
        
        NavigationView{
            
            List {
                
                Section(header: Text("쇼핑")){
                    ForEach(spotDatas, id: \.self.name) { data in
                        if data.spotCategory == .shopping{
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
                
                Section(header: Text("액티비티")){
                    ForEach(spotDatas, id: \.self.name) { data in
                        if data.spotCategory == .activity{
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
                
                Section(header: Text("랜드마크")){
                    ForEach(spotDatas, id: \.self.name) { data in
                        if data.spotCategory == .landmark{
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
                .navigationBarTitle(Text("Experience"))

        }
        
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        SpotListView()
    }
}
