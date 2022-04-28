//
//  API.swift
//  test103
//
//  Created by Yeni Hwang on 2022/04/27.
//

//import Foundation
//
//class RequestAPI: ObservableObject {
//    static let shared = RequestAPI()
//    private init () { }
//    @Published var menus = [Menu]()
//    
//    private let apiKey: String = "2022/04/28"
//    
//    func fetchData(){
//        
//        guard let url = URL(string: "https://food.podac.poapper.com/v1/menus/\(apiKey)") else { return }
//        
//        let session = URLSession(configuration: .default)
//        let task = session.dataTask(with: url) { data, response, error in
//            if let error = error {
//                print(error.localizedDescription)
//                return
//            }
////            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
////                self.
////            }
//
//        }
//        
//    }
//}

//
//struct Menu/*: Decodable, Hashable*/{
//    let type: String
//    let foods: [String]
//}
