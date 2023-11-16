//
//  ContentView.swift
//  Athan
//
//  Created by ABDULRAHMAN AL-KHALED on 15/11/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = PrayerTimeViewModel()
    @State var timing: Timing?
    //    init(){
    //        if let fajr = vm.getPrayerTimeForToday()?.Fajr,
    //        let dhur = vm.getPrayerTimeForToday()?.Dhuhr,
    //        let asr = vm.getPrayerTimeForToday()?.Asr,
    //        let maghrib = vm.getPrayerTimeForToday()?.Maghrib,
    //        let ish = vm.getPrayerTimeForToday()?.Isha{
    //           timing = Timing(Fajr: fajr,Dhuhr: dhur,Asr: asr,Maghrib: maghrib,Isha: ish)
    //        }
    //    }
    var body: some View {
        ZStack{
            Color.color3
                .ignoresSafeArea()
            VStack{
                Text("﴿إِنَّ الصَّلَاةَ كَانَتْ عَلَى الْمُؤْمِنِينَ كِتَابًا مَوْقُوتًا﴾")
                    .font(.title3)
                    .bold()
                    .foregroundStyle(.color1)
                    .padding()
                    .frame(height: 100)
                VStack{
                    Text(vm.currentDate)
                        .foregroundStyle(.white)
                        .font(.title2)
                    Divider()
                        .frame(width: 300)
                        .background(.color)
                    
                    VStack(alignment: .leading, spacing: 30.0) {
                        HStack{
                            Image(systemName: "sunrise.fill")
                                .foregroundStyle(.yellow)
                            Text("Fajr: \(vm.getPrayerTimeForToday()?.Fajr ?? "") "
                                .replacingOccurrences(of: ("(+03)"), with: ""))
                            .foregroundStyle(.white)
                        }
                        
                        HStack{
                            Image(systemName: "sun.max.fill")
                                .foregroundStyle(.yellow)
                            Text("Dhuhr: \(vm.getPrayerTimeForToday()?.Dhuhr ?? "") "
                                .replacingOccurrences(of: ("(+03)"), with: ""))
                            .foregroundStyle(.white)
                        }
                        HStack{
                            Image(systemName: "sun.min.fill")
                                .foregroundStyle(.yellow)
                            Text("Asr: \(vm.getPrayerTimeForToday()?.Asr ?? "") ".replacingOccurrences(of: ("(+03)"), with: ""))
                                .foregroundStyle(.white)
                        }
                        HStack{
                            Image(systemName: "sunset.fill")
                                .foregroundStyle(.orange)
                            Text("Maghrib: \(vm.getPrayerTimeForToday()?.Maghrib ?? "") ".replacingOccurrences(of: ("(+03)"), with: ""))
                                .foregroundStyle(.white)
                        }
                        HStack{
                            Image(systemName: "moon.stars.fill")
                                .foregroundStyle(.white.opacity(0.9))
                            Text("Isha: \(vm.getPrayerTimeForToday()?.Isha ?? "") "
                                .replacingOccurrences(of: ("(+03)"), with: ""))
                            .foregroundStyle(.white)
                            
                        }
                    }.padding()
                }
                    .bold()
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 25.0)
                        .fill(.gray.opacity(0.5))
                        .frame(width: 360)
                    )
                Spacer()
                    .onAppear(){
                        vm.fetchPrayerTimes()
                    }
                }
            }
    }
}


#Preview {
    ContentView()
}
