//
//  WeatherButton.swift
//  WeatherApp
//
//  Created by Eren Aşkın on 28.12.2022.
//

import SwiftUI

struct WeatherButton : View{
    var title : String
    var textColor : Color
    var backgroundColor : Color
    
    var body: some View{
        Text("Change Day Time")
            .frame(width: 280,height: 50)
            .background(Color.white)
            .foregroundColor(.blue)
            .font(.system(size: 20,weight: .bold,design: .default))
            .cornerRadius(20)
    }
}
