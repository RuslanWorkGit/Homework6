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
            
            

            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
