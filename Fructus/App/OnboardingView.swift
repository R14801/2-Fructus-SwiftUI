//
//  OnboardingView.swift
//  Fructus
//
//  Created by Rajat Nagvenker on 24/04/21.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView {
            ForEach(0..<5) {i in
                FruitCardView(fruit: fruitsData[i])
                //ext("Card \(i)")
            }
        }.tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
