//
//  ExtendedHeaderView.swift
//  MatchedGeometryEffect
//
//  Created by Fito on 22/07/2022.
//

import SwiftUI

struct ExtendedHeaderView: View {
    
    let profileAnimation: Namespace.ID
    let profileImage: Namespace.ID
    let profileName: Namespace.ID
    let profileSubtitle: Namespace.ID
    
    var body: some View {
        VStack {
            ProfileImageView(profileAnimation: profileAnimation,
                             profileImage: profileImage)
                    .frame(width: 100, height: 100)
            NameLabel(name: Developer.name,
                      profileAnimation: profileAnimation,
                      profileName: profileName)
            SubtitleLabel(subtitle: Developer.role,
                          profileAnimation: profileAnimation,
                          profileSubtitle: profileSubtitle)
            Text(Developer.bio).padding(.vertical, 5)
        }.padding()
    }
}
