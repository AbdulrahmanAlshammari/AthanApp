//
//  JSONManager.swift
//  Athan
//
//  Created by ABDULRAHMAN AL-KHALED on 15/11/2023.
//

//MARK: - SWIFT STRUCTs
struct PrayerTimes: Decodable{
    var data: [PrayerData]
}

struct PrayerData:Decodable{
    var timings: Timing
    var date: DateInfo
}

struct Timing:Decodable{
    var Fajr: String
    var Dhuhr: String
    var Asr: String
    var Maghrib: String
    var Isha: String
}

struct DateInfo: Decodable{
    var readable: String
    var timestamp: String
}
