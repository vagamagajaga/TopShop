//
//  ProductCardGradient.swift
//  TopShop
//
//  Created by Ваган Галстян on 17.08.2025.
//

import SwiftUI

struct ProductCardGradient: View {
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(.mango)
                .resizable()
                .scaledToFill()
                .frame(height: 250)
                .clipped()
            
            LinearGradient(
                colors: [.black.opacity(0.6), .clear],
                startPoint: .bottom,
                endPoint: .top
            )
            .frame(height: 120)
            
            
            Text("Beautiful Mountains")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
        }
        .cornerRadius(16)
        .shadow(radius: 8)
        .padding()
        
    }
}

#Preview {
    ProductCardGradient()
}
