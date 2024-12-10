//
//  PriceInfo.swift
//  Homework6SU
//
//  Created by Ruslan Liulka on 09.12.2024.
//

import SwiftUI

struct PriceInfo: View {
    var price: Int
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(alignment: .bottom) {
                Text("\(price) $")
                    .font(.largeTitle)
                    .bold()
            }
            
            HStack(spacing: 0) {
                Text("Самовивіз з наших магазинів - ")
                    .font(.system(size: 16))
                Text("БЕЗКОШТОВНО")
                    .foregroundColor(.green)
            }
            
            Text("Забрати завтра з 12:00")
                .font(.system(size: 12))
                .foregroundStyle(.secondary)
        
        }
    }
}

#Preview {
    PriceInfo(price: 8999)
}

