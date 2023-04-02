//
//  StartButtonView.swift
//  Fructus
//
//  Created by Rajat Nagvenker on 24/04/21.
//

import SwiftUI
import AudioToolbox

struct StartButtonView: View {
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    var body: some View {
        Button(action: {
            isOnboarding=false
            AudioServicesPlaySystemSound(1520)
        }, label: {
            HStack(spacing: 8){
                 
                Text("Start ")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }.padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        }
        ).accentColor(Color.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
