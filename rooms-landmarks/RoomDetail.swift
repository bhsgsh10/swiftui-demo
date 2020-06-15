//
//  RoomDetail.swift
//  personal
//
//  Created by Bhaskar Ghosh on 6/15/20.
//  Copyright © 2020 Bhaskar Ghosh. All rights reserved.
//

import SwiftUI

struct RoomDetail: View {
    let room: Room
    @State private var zoomed: Bool = false
    
    var body: some View {
        
        Image(room.imageName)
            .resizable()
            .aspectRatio(contentMode: zoomed ? .fill : .fit)
            .navigationBarTitle(Text(room.name), displayMode: .inline)
            .animation(.easeOut(duration: 1.0))
            .gesture(TapGesture(count: 1).onEnded({
                self.zoomed.toggle()
            }))
    }
}

struct RoomDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RoomDetail(room: testData[0])
        }
        
        
    }
}
