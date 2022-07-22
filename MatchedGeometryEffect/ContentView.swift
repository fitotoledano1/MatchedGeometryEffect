//
//  ContentView.swift
//  MatchedGeometryEffect
//
//  Created by Fito on 22/07/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isHeaderCollapsed = false
    
    @Namespace var profileAnimation
    @Namespace var profileImage
    @Namespace var profileName
    @Namespace var profileSubtitle
    
    var body: some View {
        VStack {
            HeaderView(
                isHeaderCollapsed: $isHeaderCollapsed,
                profileAnimation: profileAnimation,
                profileImage: profileImage,
                profileName: profileName,
                profileSubtitle: profileSubtitle)
            
            PostList(isHeaderCollapsed: $isHeaderCollapsed)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
