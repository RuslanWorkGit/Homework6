//
//  MainImage.swift
//  Homework6SU
//
//  Created by Ruslan Liulka on 09.12.2024.
//

import SwiftUI

struct MainImage: View {
    var body: some View {
        
        ZStack {
            Image("MotherBoard")
                .resizable()
                .frame(width: UIScreen.main.bounds.width * 0.7, height: UIScreen.main.bounds.height * 0.4)

            Image("FreeSend")
                .resizable()
                .frame(width: 80, height: 80)
                .offset(x: 120, y: -150)
        }
        
    }
}

#Preview {
    MainImage()
}
