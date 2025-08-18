//
//  ProductCardBlured.swift
//  TopShop
//
//  Created by Ваган Галстян on 16.08.2025.
//

import SwiftUI

struct ProductCardBlured: View {
    let image: ImageResource
    let name: String
    let price: String
    let description: String
    
    var body: some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .overlay(alignment: .bottom) {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 100, alignment: .bottom)
                    .blur(radius: 4)
                    .clipped()
            }
            .overlay {
                cardInfo()
            }
            .cornerRadius(20)
            .frame(width: 400)
            .padding(.horizontal, 12)
    }
}

private extension ProductCardBlured {
    func button() -> some View {
        Button(action: {
            print("Buy button tapped")
        }) {
            Text("Add to Cart")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(.black)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 16)
                .background(Color.white)
                .cornerRadius(24)
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 12, trailing: 16))
        }
        .buttonStyle(PlainButtonStyle())
    }
    
    func cardInfo() -> some View {
        VStack(alignment: .leading) {
            
            Spacer()
            
            HStack {
                Text(name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(alignment: .leading)
                
                Spacer()
                
                Text(price)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(alignment: .leading)
            }
            
            Text(description)
                .font(.body)
                .foregroundStyle(.white)
                .frame(alignment: .leading)
            
            button()
        }
        .padding(.horizontal, 16)
        .padding(.bottom, 2)
    }
}

#Preview {
    ProductCardBlured(
        image: .mango,
        name: "Strawberry",
        price: "9 $",
        description: "Sweet, juicy and hand-picked."
    )
    
}
