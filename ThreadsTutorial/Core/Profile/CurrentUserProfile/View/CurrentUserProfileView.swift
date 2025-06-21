//
//  CurrentUserProfileView.swift
//  ThreadsTutorial
//
//  Created by Cesario Nivar on 6/16/25.
//

import SwiftUI

struct CurrentUserProfileView: View {
    @StateObject var viewModel = CurrentProfileViewModel()
    @State private var showEditProfile = false
    
    private var currentUser: User? {
        return viewModel.currentUser
    }
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20) {
                    ProfileHeaderView(user: currentUser)
                    
                    Button {
                        showEditProfile.toggle()
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(.black)
                            .frame(width: 352, height: 32)
                            .background(.white)
                            .overlay {
                                RoundedRectangle(cornerRadius: 8)
                                    .stroke(Color(.systemGray4), lineWidth: 1)
                            }
                    }
                    if let user = currentUser {
                        UserContentListView(user: user)
                    }
                }
                .sheet(isPresented: $showEditProfile, content: {
                    if let user = currentUser {
                    
                        EditProfileView(user: user)
                    }
                })
                .toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            AuthService.shared.signOut()
                        } label: {
                            Image(systemName: "line.3.horizontal")
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    CurrentUserProfileView()
}
