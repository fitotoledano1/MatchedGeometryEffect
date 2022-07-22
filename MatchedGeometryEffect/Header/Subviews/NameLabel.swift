//
//  NameLabel.swift
//  MatchedGeometryEffect
//
//  Created by Fito on 22/07/2022.
//

import SwiftUI

struct NameLabel: View {

    let name: String
    
    let profileAnimation: Namespace.ID
    let profileName: Namespace.ID
    
    var body: some View {
        Text(name)
            .font(.title).bold()
            .matchedGeometryEffect(id: profileName, in: profileAnimation)
    }
}
