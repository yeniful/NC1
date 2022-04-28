//
//  Menu.swift
//  test103
//
//  Created by Yeni Hwang on 2022/04/27.
//

import Foundation


struct Menu: Codable {
    var id: Int
    var date: Int
    var type: String
    var foods: [Food]
}

struct Food: Codable {
    var id: Int
    var name_kor: String
    var name_eng: String
    var isVegan: Bool
    var isMain: Bool
}

let json = """
[
    {
        "id": 2978,
        "date": 20220427,
        "type": "BREAKFAST_A",
        "foods": [
            {
                "id": 154,
                "name_kor": "순대국",
                "name_eng": "Korean Sausage soup",
                "isVegan": false,
                "isMain": false
            },
            {
                "id": 2462,
                "name_kor": "삼치조림",
                "name_eng": "radish & mackerel boiled in soy sauce with spices",
                "isVegan": true,
                "isMain": true
            },
            {
                "id": 290,
                "name_kor": "도토리묵&양념장",
                "name_eng": "Acorn Jelly & sauce",
                "isVegan": true,
                "isMain": false
            },
            {
                "id": 106,
                "name_kor": "부추겉절이",
                "name_eng": "seasoned leek",
                "isVegan": true,
                "isMain": false
            }
        ],
        "kcal": 1048,
        "protein": 60
    },
    {
        "id": 2979,
        "date": 20220427,
        "type": "BREAKFAST_B",
        "foods": [
            {
                "id": 2441,
                "name_kor": "콤보샌드위치/주스",
                "name_eng": "tuna & chicken sandwich",
                "isVegan": false,
                "isMain": false
            }
        ],
        "kcal": 690,
        "protein": 15
    },
    {
        "id": 2980,
        "date": 20220427,
        "type": "LUNCH",
        "foods": [
            {
                "id": 582,
                "name_kor": "나가사키짬뽕국",
                "name_eng": "Nagasaki Spicy Seafood Soup",
                "isVegan": false,
                "isMain": false
            },
            {
                "id": 2463,
                "name_kor": "탕수육",
                "name_eng": "sweet and sour pork",
                "isVegan": false,
                "isMain": true
            },
            {
                "id": 68,
                "name_kor": "마파두부",
                "name_eng": "mapa tofu",
                "isVegan": false,
                "isMain": false
            },
            {
                "id": 422,
                "name_kor": "도라지생채",
                "name_eng": "seasoned balloon flower",
                "isVegan": true,
                "isMain": false
            }
        ],
        "kcal": 1154,
        "protein": 48
    },
    {
        "id": 2981,
        "date": 20220427,
        "type": "DINNER",
        "foods": [
            {
                "id": 27,
                "name_kor": "꽃게된장국",
                "name_eng": "Blue Crab Soybean Paste Stew",
                "isVegan": true,
                "isMain": false
            },
            {
                "id": 2342,
                "name_kor": "삼겹김치볶음",
                "name_eng": "stir-fried pork with kimchi",
                "isVegan": false,
                "isMain": true
            },
            {
                "id": 224,
                "name_kor": "온두부",
                "name_eng": "steamed tofu",
                "isVegan": true,
                "isMain": false
            },
            {
                "id": 260,
                "name_kor": "김가루무침",
                "name_eng": "seasoned green onion with laver powder",
                "isVegan": true,
                "isMain": false
            }
        ],
        "kcal": 1021,
        "protein": 62
    },
    {
        "id": 3000,
        "date": 20220427,
        "type": "STAFF",
        "foods": [
            {
                "id": 582,
                "name_kor": "나가사키짬뽕국",
                "name_eng": "Nagasaki Spicy Seafood Soup",
                "isVegan": false,
                "isMain": false
            },
            {
                "id": 277,
                "name_kor": "탕수육",
                "name_eng": "sweet and sour pork",
                "isVegan": false,
                "isMain": false
            },
            {
                "id": 68,
                "name_kor": "마파두부",
                "name_eng": "mapa tofu",
                "isVegan": false,
                "isMain": false
            },
            {
                "id": 422,
                "name_kor": "도라지생채",
                "name_eng": "seasoned balloon flower",
                "isVegan": true,
                "isMain": false
            },
            {
                "id": 851,
                "name_kor": "꽈리건새우볶음",
                "name_eng": "stir-fried dry shrimp with green pepper",
                "isVegan": true,
                "isMain": false
            }
        ],
        "kcal": 1198,
        "protein": 52
    },
    {
        "id": 3005,
        "date": 20220427,
        "type": "INTERNATIONAL",
        "foods": [
            {
                "id": 2453,
                "name_kor": "부타동덮밥",
                "name_eng": "rice topped pork topped topped with  teriyaki",
                "isVegan": false,
                "isMain": true
            },
            {
                "id": 45,
                "name_kor": "미소된장국",
                "name_eng": "tofu soup with japanese bean paste",
                "isVegan": true,
                "isMain": false
            },
            {
                "id": 1909,
                "name_kor": "연근튀김",
                "name_eng": "fried rhizome",
                "isVegan": true,
                "isMain": false
            },
            {
                "id": 252,
                "name_kor": "콘샐러드",
                "name_eng": "corn salad",
                "isVegan": true,
                "isMain": false
            },
            {
                "id": 2448,
                "name_kor": "단무지&산고추",
                "name_eng": "pickled radish & pickled peppe",
                "isVegan": true,
                "isMain": false
            }
        ],
        "kcal": 0,
        "protein": 0
    }
]
""".data(using: .utf8)!

let decoder = JSONDecoder()
let menusOfToday = try! decoder.decode([Menu].self, from: json)
