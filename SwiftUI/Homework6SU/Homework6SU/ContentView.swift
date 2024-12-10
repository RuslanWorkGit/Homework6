//
//  ContentView.swift
//  Homework6SU
//
//  Created by Ruslan Liulka on 06.12.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MainImage()
      
            PageControl(totalPage: 5, currentPage: 0)
            
            NameInfo(name: "Материнська плата Asus TUF Gaming B550M-Plus (sAM4, AMD B550, PCI-Ex16)", code: "218525893")

            Divider()
            
            PriceInfo(price: 8703)
            
            Divider()
            
            CreditBuyButton()
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
            
            Divider()
            
            Footer()
        }

    }
}

#Preview {
    ContentView()
}
