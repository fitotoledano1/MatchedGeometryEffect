//
//  SubtitleLabel.swift
//  MatchedGeometryEffect
//
//  Created by Fito on 22/07/2022.
//

import SwiftUI

struct SubtitleLabel: View {

    let subtitle: String
    
    let profileAnimation: Namespace.ID
    let profileSubtitle: Namespace.ID
    
    var body: some View {
        Text(subtitle)
            .foregroundColor(.secondary)
            .font(.subheadline)
            .matchedGeometryEffect(id: profileSubtitle, in: profileAnimation)
    }
}
