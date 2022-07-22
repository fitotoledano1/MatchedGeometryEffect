//
//  HeaderView.swift
//  MatchedGeometryEffect
//
//  Created by Fito on 22/07/2022.
//

import SwiftUI

struct HeaderView: View {
    
    @Binding var isHeaderCollapsed: Bool
    
    let profileAnimation: Namespace.ID
    let profileImage: Namespace.ID
    let profileName: Namespace.ID
    let profileSubtitle: Namespace.ID
    
    var body: some View {
        if isHeaderCollapsed {
            CollapsedHeaderView(
                profileAnimation: profileAnimation,
                profileImage: profileImage,
                profileName: profileName,
                profileSubtitle: profileSubtitle)
            .onTapGesture {
                toggleHeader()
            }
        } else {
            ExtendedHeaderView(
                profileAnimation: profileAnimation,
                profileImage: profileImage,
                profileName: profileName,
                profileSubtitle: profileSubtitle)
            .onTapGesture {
                toggleHeader()
            }
        }
    }
    
    func toggleHeader() {
        withAnimation { isHeaderCollapsed.toggle() }
    }
}
