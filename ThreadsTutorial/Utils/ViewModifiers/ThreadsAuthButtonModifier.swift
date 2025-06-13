//
//  ThreadsAuthButtonModifier.swift
//  ThreadsTutorial
//
//  Created by Cesario Nivar on 6/12/25.
//

import SwiftUI

struct ThreadsAuthButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .frame(width: 352, height: 44)
            .background(.black)
            .clipShape(.rect(cornerRadius: 8))
    }
}
