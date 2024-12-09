//
//  NameInfo.swift
//  Homework6SU
//
//  Created by Ruslan Liulka on 09.12.2024.
//

import SwiftUI

struct NameInfo: View {
    var name: String
    var code: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(name)
                .fontWeight(.bold)
                .font(.system(size: 23))
            Text("Код \(code)")
                .fontWeight(.light)
                .font(.system(size: 14))
                .foregroundColor(Color(white: 0.5))
        }
        
        .padding(.horizontal, 8)
        .padding(.vertical, 16)
        
    }
}

#Preview {
    NameInfo(name: "Some name bla bla bla jjjj HUFH 488484", code: "74819484")
}
