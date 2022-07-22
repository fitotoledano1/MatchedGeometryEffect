//
//  ProfileImageView.swift
//  MatchedGeometryEffect
//
//  Created by Fito on 22/07/2022.
//

import SwiftUI

struct ProfileImageView: View {
    
    let profileAnimation: Namespace.ID
    let profileImage: Namespace.ID
    
    var body: some View {
        Image(Developer.profileImage)
            .resizable()
            .clipShape(Circle())
            .matchedGeometryEffect(id: profileImage, in: profileAnimation)
    }
}
