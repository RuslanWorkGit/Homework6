//
//  Footer.swift
//  Homework6SU
//
//  Created by Ruslan Liulka on 09.12.2024.
//

import SwiftUI

struct Footer: View {
    var body: some View {
        HStack(spacing: 24) {
            Button {
                print("Button compare pressed")
            } label: {
                Text("⚖️")
                    .font((.system(size: 26)))
            }
            
            Button {
                print("Button buy pressed")
            } label: {
                Image(systemName: "cart")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .tint(Color.gray)
            }
            
            Button {
                print("Button like pressed")
            } label: {
                Image(systemName: "heart")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .tint(Color.gray)
            }
            
            Spacer()
            
            Button {
                print("Button Buy now pressed")
            } label: {
                Text("Купити зараз")
                    .font(.system(size: 20))
                    .bold()
                    .foregroundStyle(.white)
                    .padding(8)
                    //.padding(.horizontal, 8)
            }
            
            .buttonStyle(.borderedProminent)
            .tint(.green)

        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    Footer()
}
