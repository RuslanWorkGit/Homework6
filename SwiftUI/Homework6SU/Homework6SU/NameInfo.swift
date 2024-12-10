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
    
    @State private var rating: Int = 0
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text(name)
                .fontWeight(.bold)
                .font(.system(size: 23))
            HStack {
                Text("Код \(code)")
                    .fontWeight(.light)
                    .font(.system(size: 14))
                    .foregroundColor(Color(white: 0.5))
                
                Spacer()
                
                HStack {
                    ForEach(1...5, id: \.self) { index in
                        Button {
                            rating = index
                        } label: {
                            Image(systemName: index <= rating ? "star.fill" : "star")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .foregroundStyle(index <= rating ? Color.yellow : Color.gray)
                        }

                    }
                }
                
              
               

            }
        }
        
        .padding(.horizontal, 8)
        .padding(.vertical, 16)
        
    }
}

#Preview {
    NameInfo(name: "Some name bla bla bla jjjj HUFH 488484", code: "74819484")
}
