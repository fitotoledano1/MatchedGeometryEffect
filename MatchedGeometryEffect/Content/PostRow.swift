//
//  PostRow.swift
//  MatchedGeometryEffect
//
//  Created by Fito on 22/07/2022.
//

import SwiftUI

struct PostRow: View {
    
    let post: Int
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .frame(height: 180)
            .foregroundColor(Color(uiColor: .tertiarySystemFill))
    }
}

struct PostRow_Previews: PreviewProvider {
    static var previews: some View {
        PostRow(post: 1)
    }
}
