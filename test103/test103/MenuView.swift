//
//  MenuView.swift
//  test103
//
//  Created by Yeni Hwang on 2022/04/27.
//

import SwiftUI

struct MenuView: View {
    
    @State var isTapped: Bool = false
    
    var body: some View {
        
        NavigationView{
            List {
                ForEach(menusOfToday, id: \.self.id) { menu in
                    Section(header: Text(menu.type)){
                        ForEach(menu.foods, id: \.self.id) { food in
                            Button(action: {
            
                            }, label: {
                                Text(food.name_kor)
                            })
                        }

                    }.headerProminence(.increased)
                }
            }.navigationBarTitle(Text("학식 메뉴"))
        }
        
        
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
