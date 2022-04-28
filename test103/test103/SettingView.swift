//
//  SettingView.swift
//  test103
//
//  Created by Yeni Hwang on 2022/04/27.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        
        NavigationView{
            
            List{
                Section(header: Text("설정")){
                    Text("제보하기")
                    Text("버전정보")
                }.headerProminence(.increased)
            }.navigationBarTitle(Text("Setting"))

        }
        
    }
}

//struct SettingView_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingView()
//    }
//}
