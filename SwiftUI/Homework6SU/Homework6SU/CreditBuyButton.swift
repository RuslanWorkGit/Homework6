//
//  CreditBuyButton.swift
//  Homework6SU
//
//  Created by Ruslan Liulka on 09.12.2024.
//

import SwiftUI

struct CreditBuyButton: View {
    var body: some View {
        Button {
            print("Button buy on credit pressed!")
        } label: {
            Text("Купити в кредит")
                .bold()
                .foregroundStyle(.green)
                .font(.system(size: 20))
        }
        .frame(maxWidth: .infinity)
        .padding(16)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.gray, lineWidth: 1)
        )
        
        
        
        
    }
}

#Preview {
    CreditBuyButton()
}
