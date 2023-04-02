//
//  FruitRowView.swift
//  Fructus
//
//  Created by Rajat Nagvenker on 26/04/21.
//

import SwiftUI

struct FruitRowView: View {
    var fruits: Fruit
    var body: some View {
        HStack{
            Image(fruits.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(LinearGradient(gradient: Gradient(colors: fruits.gradientColors), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5){
                Text(fruits.title)
                    .font(.title2)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text(fruits.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    
            }
        }
    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruits: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
