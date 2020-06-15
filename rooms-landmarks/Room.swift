//
//  Room.swift
//  personal
//
//  Created by Bhaskar Ghosh on 6/14/20.
//  Copyright © 2020 Bhaskar Ghosh. All rights reserved.
//



import SwiftUI

struct Room : Identifiable {
    var id = UUID()
    var name: String
    var capacity: Int
    var hasVideo: Bool = false
    
    var imageName: String {return name}
    var thumbnailName: String {return name + "Thumb"}
}

#if DEBUG
let testData = [
    Room(name: "icybay", capacity: 20),
    Room(name: "chilkoottrail", capacity: 40),
    Room(name: "silversalmoncreek", capacity: 24, hasVideo: true)
]
#endif
