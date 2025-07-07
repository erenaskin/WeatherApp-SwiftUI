# ☀️ Simple Weather App – SwiftUI

A minimal weather app built with **SwiftUI** that fetches real-time weather data using a public weather API.  
Ideal for beginners learning about networking, JSON parsing, and SwiftUI layout.

---

## ✨ Features

- Fetches current weather by city name
- Displays temperature, condition, and location
- Clean and simple SwiftUI interface
- Async API request using `URLSession`
- Lightweight & beginner-friendly

---

## 🧰 Tech Stack

- SwiftUI (iOS 17+)
- URLSession (async/await)
- OpenWeatherMap API *(or similar)*
- JSON decoding with `Codable`

---

## 🚀 How to Run

### 1. Clone the Repo

```bash
git clone https://github.com/erenaskin/simple-weather-app.git
cd simple-weather-app
````

### 2. Open in Xcode

```bash
open SimpleWeatherApp.xcodeproj
```

### 3. Insert Your API Key

Replace `"YOUR_API_KEY"` with your actual key from [OpenWeather](https://openweathermap.org/api):

```swift
let apiKey = "your_api_key_here"
```

> Tip: Use a `Secrets.swift` file and exclude it from Git for safety.

### 4. Run on Simulator or Device

---

## 📦 Example Output

* City: **Istanbul**
* Temperature: **28°C**
* Condition: **Clear Sky**

---

## 🧠 Learning Highlights

* SwiftUI Views and State management
* API consumption and JSON decoding
* MVVM pattern (optional)
* Safe API key handling

---

## 👨‍💻 Developer

**Eren AŞKIN**

