//
//  ContentView.swift
//  Fructus
//
//  Created by Rajat Nagvenker on 24/04/21.
//

import SwiftUI
import AudioToolbox

struct ContentView: View {
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    @State var isShowingSettings:Bool = false
    var fruits: [Fruit] = fruitsData
    var body: some View {
        VStack{
            NavigationView{
                List{
                    ForEach(fruits){i in
                        NavigationLink(destination: FruitDetailView(fruit: i)){
                            FruitRowView(fruits: i)
                        }
                        
                        }    .padding(.vertical, 8)
                }
                .navigationTitle("Fruits")
                .navigationBarItems(trailing: Button(action: {
                    isShowingSettings = true
                    AudioServicesPlaySystemSound(1520)
                })
                {
                    Image(systemName: "slider.horizontal.3")
                }.sheet(isPresented: $isShowingSettings){SettingsView()}.onTapGesture(perform: {
                    AudioServicesPlaySystemSound(1519)
                })
                )
                
            }.navigationViewStyle(StackNavigationViewStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
