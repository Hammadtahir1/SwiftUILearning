//
//  SettingIView.swift
//  swiftUILearning
//
//  Created by Hamza on 16/01/2024.
//

import SwiftUI

struct SettingIView: View {
    @State var lock = ""
    var icon = ["wifi", "airpodsmax","personalhotspot","sun.min.fill","volume.1.fill","house.fill","photo","paintbrush.fill","lock", "gear"]
    
    var titles = ["Wi-FI", "Bluetooth","Portable hotspot","Display","Sound & vibration", "Home Screen", "Wallpaper","Themes", "Password &security", "settings"]
    
    
    var body: some View {
        
        VStack {
            Text("Setting").font(.largeTitle).bold()
            
            List(0..<titles.count, id: \.self) { index in
                HStack {

                    Image(systemName: icon[index] )
                        .frame(width: 20, alignment:.center)
                        .padding(.leading , 5)

                    Text(titles[index])
                        .padding(.leading, 30)
                        .bold()

                    Spacer()
                }
            }

//            ScrollView {
//
//                VStack(spacing: 20) {
//
//                    ForEach(0..<titles.count, id: \.self) { index in
//
//
////                        .foregroundColor(.white)
////                        .padding()
////                        .background(.gray)
////                        .cornerRadius(10)
//                        .padding(.horizontal)
//                    }
//                }
//            }
        }
        
            
//            Text("Settings").font(.largeTitle).bold()
//            ScrollView {
//
//                VStack(spacing: 0) {
//
//                ForEach(0..<titles.count, id: \.self) { index in
//
//                    HStack {
//
//                        Text("\(index)")
//                            .padding()
//
//                        Image(systemName: icon[index]).padding(.leading , 5)
//
//                        TextField(titles[index], text: $lock).padding(.leading, 30)
//
//                    }
//                    .padding(.horizontal)
//                }
//            }
//
//        }

        
    }
}

struct SettingIView_Previews: PreviewProvider {
    static var previews: some View {
        SettingIView()
    }
}
