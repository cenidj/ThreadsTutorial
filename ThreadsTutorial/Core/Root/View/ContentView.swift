//
//  ContentView.swift
//  ThreadsTutorial
//
//  Created by Cesario Nivar on 6/12/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = ContentViewModel()
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                ThreadsTabView()
            } else {
                LoginView()
            }
        }
    }
}

#Preview {
    ContentView()
}
