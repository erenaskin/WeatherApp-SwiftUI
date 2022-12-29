//
//  ContentView.swift
//  WeatherApp
//
//  Created by Eren Aşkın on 28.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack{
            BackgroundView(topColor: isNight ? .black : .blue, bottomColor: isNight ? .gray : Color("lightBlue"))
            VStack{
                CityTextView(cityName: "Izmir, TR")
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" :  "cloud.sun.fill", temperature: isNight ? 10 : 25)

                HStack(spacing:20){
                    WeatherDayView(dayOfWeek: "TUE", imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: isNight ?  8: 15)
                    WeatherDayView(dayOfWeek: "WED", imageName: isNight ? "cloud.bolt.rain.fill" : "sun.max.fill", temperature: isNight ?  10 : 30)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", temperature: 5)
                    WeatherDayView(dayOfWeek: "FRI", imageName: isNight ? "cloud.moon.fill" : "sunset.fill", temperature: isNight ? 7 : 20)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "cloud.rain.fill", temperature: 15)
                    WeatherDayView(dayOfWeek: "MON", imageName: "snow", temperature: -3)
                }
                Spacer()
                Button{
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
                }
                Spacer()
            }
      
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct WeatherDayView : View{
    var dayOfWeek : String
    var imageName : String
    var temperature : Int
    
    var body: some View{
        HStack{
            // WeatherDayView başlangıçı
            VStack{
                Text(dayOfWeek)
                    .font(.system(size: 16,weight: .medium,design: .default))
                    .foregroundColor(.white)
                Image(systemName:imageName)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40,height: 40)
                
                Text("\(temperature)")
                    .font(.system(size: 28,weight: .medium))
                    .foregroundColor(.white)
                
            }
            
        }
    }
}

struct BackgroundView: View {
    var topColor : Color
    var bottomColor : Color
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor,bottomColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
        // Görüntüde renkler kullanır ve renklere özellik verir.
            .edgesIgnoringSafeArea(.all)
    }
}
struct CityTextView : View{
    var cityName : String
    var body: some View{
        Text(cityName)
            .font(.system(size: 32,weight: .medium,design: .default) )
            .foregroundColor(Color.white)
            .padding(20)
    }
}
struct MainWeatherStatusView : View{
    var imageName : String
    var temperature : Int
    var body: some View{
        VStack(spacing: 20){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180,height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70,weight: .medium))
                .foregroundColor(.white)
            
        }.padding(.bottom,40)
    }
}

