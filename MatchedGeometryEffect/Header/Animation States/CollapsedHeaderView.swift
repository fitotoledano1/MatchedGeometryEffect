//
//  CollapsedHeaderView.swift
//  MatchedGeometryEffect
//
//  Created by Fito on 22/07/2022.
//

import SwiftUI

struct CollapsedHeaderView: View {
        
    let profileAnimation: Namespace.ID
    let profileImage: Namespace.ID
    let profileName: Namespace.ID
    let profileSubtitle: Namespace.ID
    
    var body: some View {
        HStack(spacing: 12) {
            ProfileImageView(profileAnimation: profileAnimation,
                             profileImage: profileImage)
                .frame(width: 50, height: 50)
            VStack(alignment: .leading) {
                NameLabel(name: Developer.name,
                          profileAnimation: profileAnimation,
                          profileName: profileName)
                SubtitleLabel(subtitle: Developer.role,
                              profileAnimation: profileAnimation,
                              profileSubtitle: profileSubtitle)
            }
            Spacer()
        }.padding(.horizontal)
    }
}
