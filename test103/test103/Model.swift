//
//  Model.swift
//  test103
//
//  Created by Yeni Hwang on 2022/04/27.
//

import Foundation
import MapKit

struct Place {
    let type: placeType
    let name: String
    let description: String
    let position: CLLocationCoordinate2D
    let foodCategory: foodCategoryType?
    let spotCategory: spotCategoryType?
    
    enum placeType {
        case food
        case spot
    }
    
    enum foodCategoryType {
        case restaurant
        case cafe
        case bar
        case none
    }
    
    enum spotCategoryType {
        case shopping
        case activity
        case landmark
        case none
    }
    
    init (type: placeType, name: String, description: String, position: [Double], foodCategory: foodCategoryType, spotCategory: spotCategoryType){
        self.type = type
        self.name = name
        self.description = description
        self.position = CLLocationCoordinate2D(latitude: position[0], longitude: position[1])
        self.foodCategory = foodCategory
        self.spotCategory = spotCategory
        }
}


var foodDatas = [
    // 식당
    Place(type: .food, name: "버거킹", description: "JMT", position: [36.0156822, 129.3224559], foodCategory: .restaurant, spotCategory: .none),
    Place(type: .food, name: "미미짬뽕", description: "중식이 땡길 때", position: [36.0156363, 129.3223365], foodCategory: .restaurant, spotCategory: .none),
    Place(type: .food, name: "그여든", description: "마늘보쌈 맛집", position: [36.0155807, 129.3222493], foodCategory: .restaurant, spotCategory: .none),
    
    // 카페
    Place(type: .food, name: "테라로사", description: "교내에 테라로사가 있다? 뿌숑빠숑", position: [36.0155807, 129.3222493], foodCategory: .cafe, spotCategory: .none),
    
    // 술집
    Place(type: .food, name: "콜로세움", description: "간단하게 맥주 마시기 좋은", position: [36.0155807, 129.3222493], foodCategory: .bar, spotCategory: .none)
]

var spotDatas = [
    // 쇼핑
    Place(type: .spot, name: "롯데백화점", description: "영일대 근처에 있는 포항 유일 백화점", position: [36.0156822, 129.3224559], foodCategory: .none, spotCategory: .shopping),
    Place(type: .spot, name: "롯데마트", description: "학교에서 가장 가까운 대형마트", position: [36.0156363, 129.3223365], foodCategory: .none, spotCategory: .shopping),
    Place(type: .spot, name: "이마트", description: "난나나나나나난난나 라라라라랄랄라", position: [36.0155807, 129.3222493], foodCategory: .none, spotCategory: .shopping),
    
    // 액티비티
    Place(type: .spot, name: "비비 클라이밍", description: "사장님이 친절해요", position: [36.0155807, 129.3222493], foodCategory: .none, spotCategory: .activity),
    
    // 랜드마크
    Place(type: .spot, name: "영일대", description: "해변을 바라보며, 낮엔 커피를 밤엔 술을", position: [36.0155807, 129.3222493], foodCategory: .none, spotCategory: .landmark),
    Place(type: .spot, name: "스페이스 워크", description: "유명함 암튼 유명함", position: [36.0155807, 129.3222493], foodCategory: .none, spotCategory: .landmark)
]
