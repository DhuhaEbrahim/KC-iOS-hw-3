//
//  ContentView.swift
//  HW3
//
//  Created by dhuha kaweyani on 25/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var sliderColor: Double = 0
    

    var body: some View {
        ZStack{
            Color.pink
                .opacity(sliderColor)
                .ignoresSafeArea()
            
           
            VStack{

                Text("مصروفاتي").font(.custom("elmessiri-bold", size: 40))

                ScrollView{

                    ForEach(myShoppingList){ shop in
                        HStack{
                            Image(shop.shopName)
                                .resizable()
                                .frame(width: 100, height: 100)
                                .clipShape(RoundedRectangle(cornerRadius: 15))
                            
                            Text("المحل : \(shop.shopName) \n المبلغ : \(shop.price) \n المصروفات : \(shop.stuff)").multilineTextAlignment(.trailing).frame(width: 250, height: 100, alignment: .trailing).font(.custom("elmessiri-regular", size: 18))
                           
                            Divider()
                        }.padding()

                    }
                }
                .padding()
                .background(.white)
                .cornerRadius(15)
                .frame(width: 350, height: 500)
                
                Slider(value: $sliderColor, in: 0...5)
                    .padding()
                   
                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro")
    }
}
