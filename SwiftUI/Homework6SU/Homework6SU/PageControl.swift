//
//  PageControl.swift
//  Homework6SU
//
//  Created by Ruslan Liulka on 09.12.2024.
//

import SwiftUI

struct PageControl: View {
    var totalPage: Int
    @State var currentPage: Int
    
    var body: some View {
        HStack {
            ForEach(0..<totalPage, id: \.self) { index in
                Circle()
                    .frame(width: 10, height: 10)
                    .foregroundColor(index == currentPage ? .green : .gray)
                
            }
        }
    }
}

#Preview {
    PageControl(totalPage: 5, currentPage: 0)
}
