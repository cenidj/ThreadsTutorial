//
//  CircularProfileImageView.swift
//  ThreadsTutorial
//
//  Created by Cesario Nivar on 6/13/25.
//

import SwiftUI

struct CircularProfileImageView: View {
    
    var body: some View {
        Image("max-verstappen")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView()
}
