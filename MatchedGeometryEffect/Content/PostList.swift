//
//  PostList.swift
//  MatchedGeometryEffect
//
//  Created by Fito on 22/07/2022.
//

import SwiftUI

struct PostList: View {
    
    @Binding var isHeaderCollapsed: Bool
    
    var body: some View {
        let dragGesture = DragGesture()
            .onChanged { _ in
                withAnimation { isHeaderCollapsed = true }
            }
        ScrollView {
            ForEach(1..<50, id: \.self) { post in
                PostRow(post: post)
            }
            .padding(.horizontal)
            .gesture(dragGesture)
        }
    }
    
    func collapseHeader() {
        withAnimation { isHeaderCollapsed = true }
    }
}

struct VideoList_Previews: PreviewProvider {
    static var previews: some View {
        PostList(isHeaderCollapsed: .constant(false))
    }
}
