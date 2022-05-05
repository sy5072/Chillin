//
//  CardStruct.swift
//  chillin
//
//  Created by Seungyun Kim on 2022/05/04.
//

import Foundation

struct TownCard: Identifiable, Hashable {
    let id: UUID
    let townName: String
    var image: [String]?
    let townGuide: String
    var isAdded: Bool
    
    init(id: UUID = UUID(), townName: String, image: [String]?, townGuide: String, isAdded: Bool){
        self.id = id
        self.townName = townName
        self.image = image
        self.townGuide = townGuide
        self.isAdded = isAdded
    }
}

extension TownCard {
    static let sampleData: [TownCard] =
    [
        TownCard(townName: "기계면", image: nil, townGuide: "기계면 개쩐당 꼭 가보자 꼭꼭꼭 !!!!! 기계면 개쩐당 꼭 가보자 꼭꼭꼭 !!!!! 기계면 개쩐당 꼭 가보자 꼭꼭꼭 !!!!! 기계면 개쩐당 꼭 가보자 꼭꼭꼭 !!!!! 기계면 개쩐당 꼭 가보자 꼭꼭꼭 !!!!! 기계면 개쩐당 꼭 가보자 꼭꼭꼭 !!!!! 기계면 개쩐당 꼭 가보자 꼭꼭꼭 !!!!! 기계면 개쩐당 꼭 가보자 꼭꼭꼭 !!!!! 기계면 개쩐당 꼭 가보자 꼭꼭꼭 !!!!! 기계면 개쩐당 꼭 가보자 꼭꼭꼭 !!!!! 기계면 개쩐당 꼭 가보자 꼭꼭꼭 !!!!! 기계면 개쩐당 꼭 가보자 꼭꼭꼭 !!!!! 기계면 개쩐당 꼭 가보자 꼭꼭꼭 !!!!! 기계면 개쩐당 꼭 가보자 꼭꼭꼭 !!!!! 기계면 개쩐당 꼭 가보자 꼭꼭꼭 !!!!! 기계면 개쩐당 꼭 가보자 꼭꼭꼭 !!!!! ", isAdded: false)
    ]
}

