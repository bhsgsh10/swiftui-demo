//
//  ContentView.swift
//  rooms-landmarks
//
//  Created by Bhaskar Ghosh on 6/15/20.
//  Copyright © 2020 Bhaskar Ghosh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var rooms: [Room] = []
    
    var body: some View {
        NavigationView {
            List(rooms) { room in
                NavigationLink(destination: RoomDetail(room: room)) {
                    Image(room.imageName)
                        .frame(width: 50, height: 50, alignment: .leading)
                        .clipped()
                    VStack(alignment: .leading){
                        Text(room.name)
                        Text("\(room.capacity) people")
                    }
                }
            }.navigationBarTitle(Text("Landmarks/Rooms"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(rooms: testData)
    }
}
