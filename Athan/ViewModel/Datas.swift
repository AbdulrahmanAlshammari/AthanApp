
import SwiftUI

//MARK: - VIEW MODEL
class PrayerTimeViewModel: ObservableObject{
    @Published var prayerTimes: PrayerTimes?
    var currentDate = ""
    
    init(){
        // Get CURRENT DATE
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMM yyyy"
        currentDate = dateFormatter.string(from: Date())
    }
    
    func fetchPrayerTimes(){
        // DECODE JSON
        guard let jsonData = stringJSON.data(using: .utf8) else {return}
        let decoder = JSONDecoder()
        do{
            prayerTimes = try decoder.decode(PrayerTimes.self, from: jsonData)
        }catch{
            print("Error: \(error)")
        }
    }
    
    func getPrayerTimeForToday()-> Timing?{
        return prayerTimes?.data.first(where: {$0.date.readable == currentDate})?.timings
    }
}


//MARK: - STRING JSON
var stringJSON = """
{
    "code": 200,
    "status": "OK",
    "data": [
        {
            "timings": {
                "Fajr": "04:41 (+03)",
                "Sunrise": "06:00 (+03)",
                "Dhuhr": "11:37 (+03)",
                "Asr": "14:51 (+03)",
                "Sunset": "17:13 (+03)",
                "Maghrib": "17:13 (+03)",
                "Isha": "18:43 (+03)",
                "Imsak": "04:31 (+03)",
                "Midnight": "23:37 (+03)",
                "Firstthird": "21:29 (+03)",
                "Lastthird": "01:45 (+03)"
            },
            "date": {
                "readable": "01 Nov 2023",
                "timestamp": "1698818461",
                "gregorian": {
                    "date": "01-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "01",
                    "weekday": {
                        "en": "Wednesday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "17-04-1445",
                    "format": "DD-MM-YYYY",
                    "day": "17",
                    "weekday": {
                        "en": "Al Arba'a",
                        "ar": "الاربعاء"
                    },
                    "month": {
                        "number": 4,
                        "en": "Rabīʿ al-thānī",
                        "ar": "رَبيع الثاني"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:41 (+03)",
                "Sunrise": "06:01 (+03)",
                "Dhuhr": "11:37 (+03)",
                "Asr": "14:51 (+03)",
                "Sunset": "17:13 (+03)",
                "Maghrib": "17:13 (+03)",
                "Isha": "18:43 (+03)",
                "Imsak": "04:31 (+03)",
                "Midnight": "23:37 (+03)",
                "Firstthird": "21:29 (+03)",
                "Lastthird": "01:45 (+03)"
            },
            "date": {
                "readable": "02 Nov 2023",
                "timestamp": "1698904861",
                "gregorian": {
                    "date": "02-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "02",
                    "weekday": {
                        "en": "Thursday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "18-04-1445",
                    "format": "DD-MM-YYYY",
                    "day": "18",
                    "weekday": {
                        "en": "Al Khamees",
                        "ar": "الخميس"
                    },
                    "month": {
                        "number": 4,
                        "en": "Rabīʿ al-thānī",
                        "ar": "رَبيع الثاني"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:42 (+03)",
                "Sunrise": "06:01 (+03)",
                "Dhuhr": "11:37 (+03)",
                "Asr": "14:50 (+03)",
                "Sunset": "17:12 (+03)",
                "Maghrib": "17:12 (+03)",
                "Isha": "18:42 (+03)",
                "Imsak": "04:32 (+03)",
                "Midnight": "23:37 (+03)",
                "Firstthird": "21:29 (+03)",
                "Lastthird": "01:45 (+03)"
            },
            "date": {
                "readable": "03 Nov 2023",
                "timestamp": "1698991261",
                "gregorian": {
                    "date": "03-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "03",
                    "weekday": {
                        "en": "Friday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "19-04-1445",
                    "format": "DD-MM-YYYY",
                    "day": "19",
                    "weekday": {
                        "en": "Al Juma'a",
                        "ar": "الجمعة"
                    },
                    "month": {
                        "number": 4,
                        "en": "Rabīʿ al-thānī",
                        "ar": "رَبيع الثاني"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:42 (+03)",
                "Sunrise": "06:02 (+03)",
                "Dhuhr": "11:37 (+03)",
                "Asr": "14:50 (+03)",
                "Sunset": "17:12 (+03)",
                "Maghrib": "17:12 (+03)",
                "Isha": "18:42 (+03)",
                "Imsak": "04:32 (+03)",
                "Midnight": "23:37 (+03)",
                "Firstthird": "21:28 (+03)",
                "Lastthird": "01:45 (+03)"
            },
            "date": {
                "readable": "04 Nov 2023",
                "timestamp": "1699077661",
                "gregorian": {
                    "date": "04-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "04",
                    "weekday": {
                        "en": "Saturday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "20-04-1445",
                    "format": "DD-MM-YYYY",
                    "day": "20",
                    "weekday": {
                        "en": "Al Sabt",
                        "ar": "السبت"
                    },
                    "month": {
                        "number": 4,
                        "en": "Rabīʿ al-thānī",
                        "ar": "رَبيع الثاني"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:43 (+03)",
                "Sunrise": "06:02 (+03)",
                "Dhuhr": "11:37 (+03)",
                "Asr": "14:49 (+03)",
                "Sunset": "17:11 (+03)",
                "Maghrib": "17:11 (+03)",
                "Isha": "18:41 (+03)",
                "Imsak": "04:33 (+03)",
                "Midnight": "23:37 (+03)",
                "Firstthird": "21:28 (+03)",
                "Lastthird": "01:45 (+03)"
            },
            "date": {
                "readable": "05 Nov 2023",
                "timestamp": "1699164061",
                "gregorian": {
                    "date": "05-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "05",
                    "weekday": {
                        "en": "Sunday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "21-04-1445",
                    "format": "DD-MM-YYYY",
                    "day": "21",
                    "weekday": {
                        "en": "Al Ahad",
                        "ar": "الاحد"
                    },
                    "month": {
                        "number": 4,
                        "en": "Rabīʿ al-thānī",
                        "ar": "رَبيع الثاني"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:43 (+03)",
                "Sunrise": "06:03 (+03)",
                "Dhuhr": "11:37 (+03)",
                "Asr": "14:49 (+03)",
                "Sunset": "17:10 (+03)",
                "Maghrib": "17:10 (+03)",
                "Isha": "18:40 (+03)",
                "Imsak": "04:33 (+03)",
                "Midnight": "23:37 (+03)",
                "Firstthird": "21:28 (+03)",
                "Lastthird": "01:46 (+03)"
            },
            "date": {
                "readable": "06 Nov 2023",
                "timestamp": "1699250461",
                "gregorian": {
                    "date": "06-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "06",
                    "weekday": {
                        "en": "Monday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "22-04-1445",
                    "format": "DD-MM-YYYY",
                    "day": "22",
                    "weekday": {
                        "en": "Al Athnayn",
                        "ar": "الاثنين"
                    },
                    "month": {
                        "number": 4,
                        "en": "Rabīʿ al-thānī",
                        "ar": "رَبيع الثاني"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:44 (+03)",
                "Sunrise": "06:04 (+03)",
                "Dhuhr": "11:37 (+03)",
                "Asr": "14:49 (+03)",
                "Sunset": "17:10 (+03)",
                "Maghrib": "17:10 (+03)",
                "Isha": "18:40 (+03)",
                "Imsak": "04:34 (+03)",
                "Midnight": "23:37 (+03)",
                "Firstthird": "21:28 (+03)",
                "Lastthird": "01:46 (+03)"
            },
            "date": {
                "readable": "07 Nov 2023",
                "timestamp": "1699336861",
                "gregorian": {
                    "date": "07-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "07",
                    "weekday": {
                        "en": "Tuesday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "23-04-1445",
                    "format": "DD-MM-YYYY",
                    "day": "23",
                    "weekday": {
                        "en": "Al Thalaata",
                        "ar": "الثلاثاء"
                    },
                    "month": {
                        "number": 4,
                        "en": "Rabīʿ al-thānī",
                        "ar": "رَبيع الثاني"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:44 (+03)",
                "Sunrise": "06:04 (+03)",
                "Dhuhr": "11:37 (+03)",
                "Asr": "14:48 (+03)",
                "Sunset": "17:09 (+03)",
                "Maghrib": "17:09 (+03)",
                "Isha": "18:39 (+03)",
                "Imsak": "04:34 (+03)",
                "Midnight": "23:37 (+03)",
                "Firstthird": "21:28 (+03)",
                "Lastthird": "01:46 (+03)"
            },
            "date": {
                "readable": "08 Nov 2023",
                "timestamp": "1699423261",
                "gregorian": {
                    "date": "08-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "08",
                    "weekday": {
                        "en": "Wednesday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "24-04-1445",
                    "format": "DD-MM-YYYY",
                    "day": "24",
                    "weekday": {
                        "en": "Al Arba'a",
                        "ar": "الاربعاء"
                    },
                    "month": {
                        "number": 4,
                        "en": "Rabīʿ al-thānī",
                        "ar": "رَبيع الثاني"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:45 (+03)",
                "Sunrise": "06:05 (+03)",
                "Dhuhr": "11:37 (+03)",
                "Asr": "14:48 (+03)",
                "Sunset": "17:09 (+03)",
                "Maghrib": "17:09 (+03)",
                "Isha": "18:39 (+03)",
                "Imsak": "04:35 (+03)",
                "Midnight": "23:37 (+03)",
                "Firstthird": "21:28 (+03)",
                "Lastthird": "01:46 (+03)"
            },
            "date": {
                "readable": "09 Nov 2023",
                "timestamp": "1699509661",
                "gregorian": {
                    "date": "09-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "09",
                    "weekday": {
                        "en": "Thursday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "25-04-1445",
                    "format": "DD-MM-YYYY",
                    "day": "25",
                    "weekday": {
                        "en": "Al Khamees",
                        "ar": "الخميس"
                    },
                    "month": {
                        "number": 4,
                        "en": "Rabīʿ al-thānī",
                        "ar": "رَبيع الثاني"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:45 (+03)",
                "Sunrise": "06:06 (+03)",
                "Dhuhr": "11:37 (+03)",
                "Asr": "14:48 (+03)",
                "Sunset": "17:08 (+03)",
                "Maghrib": "17:08 (+03)",
                "Isha": "18:38 (+03)",
                "Imsak": "04:35 (+03)",
                "Midnight": "23:37 (+03)",
                "Firstthird": "21:27 (+03)",
                "Lastthird": "01:47 (+03)"
            },
            "date": {
                "readable": "10 Nov 2023",
                "timestamp": "1699596061",
                "gregorian": {
                    "date": "10-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "10",
                    "weekday": {
                        "en": "Friday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "26-04-1445",
                    "format": "DD-MM-YYYY",
                    "day": "26",
                    "weekday": {
                        "en": "Al Juma'a",
                        "ar": "الجمعة"
                    },
                    "month": {
                        "number": 4,
                        "en": "Rabīʿ al-thānī",
                        "ar": "رَبيع الثاني"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:46 (+03)",
                "Sunrise": "06:06 (+03)",
                "Dhuhr": "11:37 (+03)",
                "Asr": "14:47 (+03)",
                "Sunset": "17:08 (+03)",
                "Maghrib": "17:08 (+03)",
                "Isha": "18:38 (+03)",
                "Imsak": "04:36 (+03)",
                "Midnight": "23:37 (+03)",
                "Firstthird": "21:27 (+03)",
                "Lastthird": "01:47 (+03)"
            },
            "date": {
                "readable": "11 Nov 2023",
                "timestamp": "1699682461",
                "gregorian": {
                    "date": "11-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "11",
                    "weekday": {
                        "en": "Saturday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "27-04-1445",
                    "format": "DD-MM-YYYY",
                    "day": "27",
                    "weekday": {
                        "en": "Al Sabt",
                        "ar": "السبت"
                    },
                    "month": {
                        "number": 4,
                        "en": "Rabīʿ al-thānī",
                        "ar": "رَبيع الثاني"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:46 (+03)",
                "Sunrise": "06:07 (+03)",
                "Dhuhr": "11:37 (+03)",
                "Asr": "14:47 (+03)",
                "Sunset": "17:07 (+03)",
                "Maghrib": "17:07 (+03)",
                "Isha": "18:37 (+03)",
                "Imsak": "04:36 (+03)",
                "Midnight": "23:37 (+03)",
                "Firstthird": "21:27 (+03)",
                "Lastthird": "01:47 (+03)"
            },
            "date": {
                "readable": "12 Nov 2023",
                "timestamp": "1699768861",
                "gregorian": {
                    "date": "12-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "12",
                    "weekday": {
                        "en": "Sunday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "28-04-1445",
                    "format": "DD-MM-YYYY",
                    "day": "28",
                    "weekday": {
                        "en": "Al Ahad",
                        "ar": "الاحد"
                    },
                    "month": {
                        "number": 4,
                        "en": "Rabīʿ al-thānī",
                        "ar": "رَبيع الثاني"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:47 (+03)",
                "Sunrise": "06:08 (+03)",
                "Dhuhr": "11:38 (+03)",
                "Asr": "14:47 (+03)",
                "Sunset": "17:07 (+03)",
                "Maghrib": "17:07 (+03)",
                "Isha": "18:37 (+03)",
                "Imsak": "04:37 (+03)",
                "Midnight": "23:37 (+03)",
                "Firstthird": "21:27 (+03)",
                "Lastthird": "01:47 (+03)"
            },
            "date": {
                "readable": "13 Nov 2023",
                "timestamp": "1699855261",
                "gregorian": {
                    "date": "13-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "13",
                    "weekday": {
                        "en": "Monday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "29-04-1445",
                    "format": "DD-MM-YYYY",
                    "day": "29",
                    "weekday": {
                        "en": "Al Athnayn",
                        "ar": "الاثنين"
                    },
                    "month": {
                        "number": 4,
                        "en": "Rabīʿ al-thānī",
                        "ar": "رَبيع الثاني"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:47 (+03)",
                "Sunrise": "06:08 (+03)",
                "Dhuhr": "11:38 (+03)",
                "Asr": "14:46 (+03)",
                "Sunset": "17:07 (+03)",
                "Maghrib": "17:07 (+03)",
                "Isha": "18:37 (+03)",
                "Imsak": "04:37 (+03)",
                "Midnight": "23:38 (+03)",
                "Firstthird": "21:27 (+03)",
                "Lastthird": "01:48 (+03)"
            },
            "date": {
                "readable": "14 Nov 2023",
                "timestamp": "1699941661",
                "gregorian": {
                    "date": "14-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "14",
                    "weekday": {
                        "en": "Tuesday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "01-05-1445",
                    "format": "DD-MM-YYYY",
                    "day": "01",
                    "weekday": {
                        "en": "Al Thalaata",
                        "ar": "الثلاثاء"
                    },
                    "month": {
                        "number": 5,
                        "en": "Jumādá al-ūlá",
                        "ar": "جُمادى الأولى"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:48 (+03)",
                "Sunrise": "06:09 (+03)",
                "Dhuhr": "11:38 (+03)",
                "Asr": "14:46 (+03)",
                "Sunset": "17:06 (+03)",
                "Maghrib": "17:06 (+03)",
                "Isha": "18:36 (+03)",
                "Imsak": "04:38 (+03)",
                "Midnight": "23:38 (+03)",
                "Firstthird": "21:27 (+03)",
                "Lastthird": "01:48 (+03)"
            },
            "date": {
                "readable": "15 Nov 2023",
                "timestamp": "1700028061",
                "gregorian": {
                    "date": "15-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "15",
                    "weekday": {
                        "en": "Wednesday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "02-05-1445",
                    "format": "DD-MM-YYYY",
                    "day": "02",
                    "weekday": {
                        "en": "Al Arba'a",
                        "ar": "الاربعاء"
                    },
                    "month": {
                        "number": 5,
                        "en": "Jumādá al-ūlá",
                        "ar": "جُمادى الأولى"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:49 (+03)",
                "Sunrise": "06:10 (+03)",
                "Dhuhr": "11:38 (+03)",
                "Asr": "14:46 (+03)",
                "Sunset": "17:06 (+03)",
                "Maghrib": "17:06 (+03)",
                "Isha": "18:36 (+03)",
                "Imsak": "04:39 (+03)",
                "Midnight": "23:38 (+03)",
                "Firstthird": "21:27 (+03)",
                "Lastthird": "01:48 (+03)"
            },
            "date": {
                "readable": "16 Nov 2023",
                "timestamp": "1700114461",
                "gregorian": {
                    "date": "16-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "16",
                    "weekday": {
                        "en": "Thursday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "03-05-1445",
                    "format": "DD-MM-YYYY",
                    "day": "03",
                    "weekday": {
                        "en": "Al Khamees",
                        "ar": "الخميس"
                    },
                    "month": {
                        "number": 5,
                        "en": "Jumādá al-ūlá",
                        "ar": "جُمادى الأولى"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:49 (+03)",
                "Sunrise": "06:10 (+03)",
                "Dhuhr": "11:38 (+03)",
                "Asr": "14:46 (+03)",
                "Sunset": "17:06 (+03)",
                "Maghrib": "17:06 (+03)",
                "Isha": "18:36 (+03)",
                "Imsak": "04:39 (+03)",
                "Midnight": "23:38 (+03)",
                "Firstthird": "21:27 (+03)",
                "Lastthird": "01:49 (+03)"
            },
            "date": {
                "readable": "17 Nov 2023",
                "timestamp": "1700200861",
                "gregorian": {
                    "date": "17-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "17",
                    "weekday": {
                        "en": "Friday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "04-05-1445",
                    "format": "DD-MM-YYYY",
                    "day": "04",
                    "weekday": {
                        "en": "Al Juma'a",
                        "ar": "الجمعة"
                    },
                    "month": {
                        "number": 5,
                        "en": "Jumādá al-ūlá",
                        "ar": "جُمادى الأولى"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:50 (+03)",
                "Sunrise": "06:11 (+03)",
                "Dhuhr": "11:38 (+03)",
                "Asr": "14:46 (+03)",
                "Sunset": "17:05 (+03)",
                "Maghrib": "17:05 (+03)",
                "Isha": "18:35 (+03)",
                "Imsak": "04:40 (+03)",
                "Midnight": "23:38 (+03)",
                "Firstthird": "21:27 (+03)",
                "Lastthird": "01:49 (+03)"
            },
            "date": {
                "readable": "18 Nov 2023",
                "timestamp": "1700287261",
                "gregorian": {
                    "date": "18-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "18",
                    "weekday": {
                        "en": "Saturday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "05-05-1445",
                    "format": "DD-MM-YYYY",
                    "day": "05",
                    "weekday": {
                        "en": "Al Sabt",
                        "ar": "السبت"
                    },
                    "month": {
                        "number": 5,
                        "en": "Jumādá al-ūlá",
                        "ar": "جُمادى الأولى"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:50 (+03)",
                "Sunrise": "06:12 (+03)",
                "Dhuhr": "11:39 (+03)",
                "Asr": "14:45 (+03)",
                "Sunset": "17:05 (+03)",
                "Maghrib": "17:05 (+03)",
                "Isha": "18:35 (+03)",
                "Imsak": "04:40 (+03)",
                "Midnight": "23:38 (+03)",
                "Firstthird": "21:27 (+03)",
                "Lastthird": "01:50 (+03)"
            },
            "date": {
                "readable": "19 Nov 2023",
                "timestamp": "1700373661",
                "gregorian": {
                    "date": "19-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "19",
                    "weekday": {
                        "en": "Sunday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "06-05-1445",
                    "format": "DD-MM-YYYY",
                    "day": "06",
                    "weekday": {
                        "en": "Al Ahad",
                        "ar": "الاحد"
                    },
                    "month": {
                        "number": 5,
                        "en": "Jumādá al-ūlá",
                        "ar": "جُمادى الأولى"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:51 (+03)",
                "Sunrise": "06:13 (+03)",
                "Dhuhr": "11:39 (+03)",
                "Asr": "14:45 (+03)",
                "Sunset": "17:05 (+03)",
                "Maghrib": "17:05 (+03)",
                "Isha": "18:35 (+03)",
                "Imsak": "04:41 (+03)",
                "Midnight": "23:39 (+03)",
                "Firstthird": "21:27 (+03)",
                "Lastthird": "01:50 (+03)"
            },
            "date": {
                "readable": "20 Nov 2023",
                "timestamp": "1700460061",
                "gregorian": {
                    "date": "20-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "20",
                    "weekday": {
                        "en": "Monday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "07-05-1445",
                    "format": "DD-MM-YYYY",
                    "day": "07",
                    "weekday": {
                        "en": "Al Athnayn",
                        "ar": "الاثنين"
                    },
                    "month": {
                        "number": 5,
                        "en": "Jumādá al-ūlá",
                        "ar": "جُمادى الأولى"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:52 (+03)",
                "Sunrise": "06:13 (+03)",
                "Dhuhr": "11:39 (+03)",
                "Asr": "14:45 (+03)",
                "Sunset": "17:05 (+03)",
                "Maghrib": "17:05 (+03)",
                "Isha": "18:35 (+03)",
                "Imsak": "04:42 (+03)",
                "Midnight": "23:39 (+03)",
                "Firstthird": "21:28 (+03)",
                "Lastthird": "01:50 (+03)"
            },
            "date": {
                "readable": "21 Nov 2023",
                "timestamp": "1700546461",
                "gregorian": {
                    "date": "21-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "21",
                    "weekday": {
                        "en": "Tuesday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "08-05-1445",
                    "format": "DD-MM-YYYY",
                    "day": "08",
                    "weekday": {
                        "en": "Al Thalaata",
                        "ar": "الثلاثاء"
                    },
                    "month": {
                        "number": 5,
                        "en": "Jumādá al-ūlá",
                        "ar": "جُمادى الأولى"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:52 (+03)",
                "Sunrise": "06:14 (+03)",
                "Dhuhr": "11:39 (+03)",
                "Asr": "14:45 (+03)",
                "Sunset": "17:04 (+03)",
                "Maghrib": "17:04 (+03)",
                "Isha": "18:34 (+03)",
                "Imsak": "04:42 (+03)",
                "Midnight": "23:39 (+03)",
                "Firstthird": "21:28 (+03)",
                "Lastthird": "01:51 (+03)"
            },
            "date": {
                "readable": "22 Nov 2023",
                "timestamp": "1700632861",
                "gregorian": {
                    "date": "22-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "22",
                    "weekday": {
                        "en": "Wednesday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "09-05-1445",
                    "format": "DD-MM-YYYY",
                    "day": "09",
                    "weekday": {
                        "en": "Al Arba'a",
                        "ar": "الاربعاء"
                    },
                    "month": {
                        "number": 5,
                        "en": "Jumādá al-ūlá",
                        "ar": "جُمادى الأولى"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:53 (+03)",
                "Sunrise": "06:15 (+03)",
                "Dhuhr": "11:40 (+03)",
                "Asr": "14:45 (+03)",
                "Sunset": "17:04 (+03)",
                "Maghrib": "17:04 (+03)",
                "Isha": "18:34 (+03)",
                "Imsak": "04:43 (+03)",
                "Midnight": "23:39 (+03)",
                "Firstthird": "21:28 (+03)",
                "Lastthird": "01:51 (+03)"
            },
            "date": {
                "readable": "23 Nov 2023",
                "timestamp": "1700719261",
                "gregorian": {
                    "date": "23-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "23",
                    "weekday": {
                        "en": "Thursday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "10-05-1445",
                    "format": "DD-MM-YYYY",
                    "day": "10",
                    "weekday": {
                        "en": "Al Khamees",
                        "ar": "الخميس"
                    },
                    "month": {
                        "number": 5,
                        "en": "Jumādá al-ūlá",
                        "ar": "جُمادى الأولى"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:53 (+03)",
                "Sunrise": "06:15 (+03)",
                "Dhuhr": "11:40 (+03)",
                "Asr": "14:45 (+03)",
                "Sunset": "17:04 (+03)",
                "Maghrib": "17:04 (+03)",
                "Isha": "18:34 (+03)",
                "Imsak": "04:43 (+03)",
                "Midnight": "23:40 (+03)",
                "Firstthird": "21:28 (+03)",
                "Lastthird": "01:52 (+03)"
            },
            "date": {
                "readable": "24 Nov 2023",
                "timestamp": "1700805661",
                "gregorian": {
                    "date": "24-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "24",
                    "weekday": {
                        "en": "Friday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "11-05-1445",
                    "format": "DD-MM-YYYY",
                    "day": "11",
                    "weekday": {
                        "en": "Al Juma'a",
                        "ar": "الجمعة"
                    },
                    "month": {
                        "number": 5,
                        "en": "Jumādá al-ūlá",
                        "ar": "جُمادى الأولى"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:54 (+03)",
                "Sunrise": "06:16 (+03)",
                "Dhuhr": "11:40 (+03)",
                "Asr": "14:45 (+03)",
                "Sunset": "17:04 (+03)",
                "Maghrib": "17:04 (+03)",
                "Isha": "18:34 (+03)",
                "Imsak": "04:44 (+03)",
                "Midnight": "23:40 (+03)",
                "Firstthird": "21:28 (+03)",
                "Lastthird": "01:52 (+03)"
            },
            "date": {
                "readable": "25 Nov 2023",
                "timestamp": "1700892061",
                "gregorian": {
                    "date": "25-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "25",
                    "weekday": {
                        "en": "Saturday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "12-05-1445",
                    "format": "DD-MM-YYYY",
                    "day": "12",
                    "weekday": {
                        "en": "Al Sabt",
                        "ar": "السبت"
                    },
                    "month": {
                        "number": 5,
                        "en": "Jumādá al-ūlá",
                        "ar": "جُمادى الأولى"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:55 (+03)",
                "Sunrise": "06:17 (+03)",
                "Dhuhr": "11:40 (+03)",
                "Asr": "14:45 (+03)",
                "Sunset": "17:04 (+03)",
                "Maghrib": "17:04 (+03)",
                "Isha": "18:34 (+03)",
                "Imsak": "04:45 (+03)",
                "Midnight": "23:40 (+03)",
                "Firstthird": "21:28 (+03)",
                "Lastthird": "01:53 (+03)"
            },
            "date": {
                "readable": "26 Nov 2023",
                "timestamp": "1700978461",
                "gregorian": {
                    "date": "26-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "26",
                    "weekday": {
                        "en": "Sunday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "13-05-1445",
                    "format": "DD-MM-YYYY",
                    "day": "13",
                    "weekday": {
                        "en": "Al Ahad",
                        "ar": "الاحد"
                    },
                    "month": {
                        "number": 5,
                        "en": "Jumādá al-ūlá",
                        "ar": "جُمادى الأولى"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:55 (+03)",
                "Sunrise": "06:18 (+03)",
                "Dhuhr": "11:41 (+03)",
                "Asr": "14:45 (+03)",
                "Sunset": "17:04 (+03)",
                "Maghrib": "17:04 (+03)",
                "Isha": "18:34 (+03)",
                "Imsak": "04:45 (+03)",
                "Midnight": "23:41 (+03)",
                "Firstthird": "21:28 (+03)",
                "Lastthird": "01:53 (+03)"
            },
            "date": {
                "readable": "27 Nov 2023",
                "timestamp": "1701064861",
                "gregorian": {
                    "date": "27-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "27",
                    "weekday": {
                        "en": "Monday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "14-05-1445",
                    "format": "DD-MM-YYYY",
                    "day": "14",
                    "weekday": {
                        "en": "Al Athnayn",
                        "ar": "الاثنين"
                    },
                    "month": {
                        "number": 5,
                        "en": "Jumādá al-ūlá",
                        "ar": "جُمادى الأولى"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:56 (+03)",
                "Sunrise": "06:18 (+03)",
                "Dhuhr": "11:41 (+03)",
                "Asr": "14:45 (+03)",
                "Sunset": "17:04 (+03)",
                "Maghrib": "17:04 (+03)",
                "Isha": "18:34 (+03)",
                "Imsak": "04:46 (+03)",
                "Midnight": "23:41 (+03)",
                "Firstthird": "21:29 (+03)",
                "Lastthird": "01:53 (+03)"
            },
            "date": {
                "readable": "16 Nov 2023",
                "timestamp": "1701151261",
                "gregorian": {
                    "date": "28-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "28",
                    "weekday": {
                        "en": "Tuesday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "15-05-1445",
                    "format": "DD-MM-YYYY",
                    "day": "15",
                    "weekday": {
                        "en": "Al Thalaata",
                        "ar": "الثلاثاء"
                    },
                    "month": {
                        "number": 5,
                        "en": "Jumādá al-ūlá",
                        "ar": "جُمادى الأولى"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:56 (+03)",
                "Sunrise": "06:19 (+03)",
                "Dhuhr": "11:41 (+03)",
                "Asr": "14:45 (+03)",
                "Sunset": "17:04 (+03)",
                "Maghrib": "17:04 (+03)",
                "Isha": "18:34 (+03)",
                "Imsak": "04:46 (+03)",
                "Midnight": "23:41 (+03)",
                "Firstthird": "21:29 (+03)",
                "Lastthird": "01:54 (+03)"
            },
            "date": {
                "readable": "29 Nov 2023",
                "timestamp": "1701237661",
                "gregorian": {
                    "date": "29-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "29",
                    "weekday": {
                        "en": "Wednesday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "16-05-1445",
                    "format": "DD-MM-YYYY",
                    "day": "16",
                    "weekday": {
                        "en": "Al Arba'a",
                        "ar": "الاربعاء"
                    },
                    "month": {
                        "number": 5,
                        "en": "Jumādá al-ūlá",
                        "ar": "جُمادى الأولى"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        },
        {
            "timings": {
                "Fajr": "04:57 (+03)",
                "Sunrise": "06:20 (+03)",
                "Dhuhr": "11:42 (+03)",
                "Asr": "14:45 (+03)",
                "Sunset": "17:04 (+03)",
                "Maghrib": "17:04 (+03)",
                "Isha": "18:34 (+03)",
                "Imsak": "04:47 (+03)",
                "Midnight": "23:42 (+03)",
                "Firstthird": "21:29 (+03)",
                "Lastthird": "01:54 (+03)"
            },
            "date": {
                "readable": "30 Nov 2023",
                "timestamp": "1701324061",
                "gregorian": {
                    "date": "30-11-2023",
                    "format": "DD-MM-YYYY",
                    "day": "30",
                    "weekday": {
                        "en": "Thursday"
                    },
                    "month": {
                        "number": 11,
                        "en": "November"
                    },
                    "year": "2023",
                    "designation": {
                        "abbreviated": "AD",
                        "expanded": "Anno Domini"
                    }
                },
                "hijri": {
                    "date": "17-05-1445",
                    "format": "DD-MM-YYYY",
                    "day": "17",
                    "weekday": {
                        "en": "Al Khamees",
                        "ar": "الخميس"
                    },
                    "month": {
                        "number": 5,
                        "en": "Jumādá al-ūlá",
                        "ar": "جُمادى الأولى"
                    },
                    "year": "1445",
                    "designation": {
                        "abbreviated": "AH",
                        "expanded": "Anno Hegirae"
                    },
                    "holidays": []
                }
            },
            "meta": {
                "latitude": 24.7136,
                "longitude": 46.6753,
                "timezone": "Asia/Riyadh",
                "method": {
                    "id": 4,
                    "name": "Umm Al-Qura University, Makkah",
                    "params": {
                        "Fajr": 18.5,
                        "Isha": "90 min"
                    },
                    "location": {
                        "latitude": 21.3890824,
                        "longitude": 39.8579118
                    }
                },
                "latitudeAdjustmentMethod": "ANGLE_BASED",
                "midnightMode": "STANDARD",
                "school": "STANDARD",
                "offset": {
                    "Imsak": 0,
                    "Fajr": 0,
                    "Sunrise": 0,
                    "Dhuhr": 0,
                    "Asr": 0,
                    "Maghrib": 0,
                    "Sunset": 0,
                    "Isha": 0,
                    "Midnight": 0
                }
            }
        }
    ]
}
"""
