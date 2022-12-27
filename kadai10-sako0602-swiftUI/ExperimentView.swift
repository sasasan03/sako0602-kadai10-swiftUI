//
//  ExperimentView.swift
//  kadai10-sako0602-swiftUI
//
//  Created by sako0602 on 2022/12/26.
//

import SwiftUI

enum fruits: Int, CaseIterable, Identifiable {
    
    var id: fruits { self }
    
    case apple
    case nasi
    case grape
//    case orange
//    case storobery
//    case banana
//    case peach

    var num: Int {
        switch self {
        case .apple: return 0
        case .nasi: return 1
        case .grape: return 2
//        case .orange: return 3
//        case .storobery: return 4
//        case .banana: return 5
//        case .peach: return 6
        }
    }
    
    var name: String {
        switch self {
        case .apple: return "りんご"
        case .nasi: return "なし"
        case .grape: return "ぶどう"
//        case .orange: return "オレンジ"
//        case .storobery: return "いちご"
//        case .banana: return "バナナ"
//        case .peach: return "もも"
            
        }
    }
}

struct ExperimentView: View {
    
    @State var flag = false
    let color: [Color] = [.green, .red, .blue]
    let numberTest:[Int] = [1,2,3,4,5,6,7]
    @State var name = ""
    
    var body: some View {
        VStack {
            List {
                ForEach(fruits.allCases) { fruit in
                    HStack {
                        Text(fruit.name)
                        Spacer()
                        Text("\(fruit.rawValue + 1)番目の数")
                    }
                    .listRowBackground(configure(index: fruit.rawValue))
//                    (
//                        switch fruit.rawValue
//                    )
                    //                        ForEach(numberTest, id: \.self) { fruit in
                    //                            if fruit % 3 == 0 {
                    //                                Color.red
                    //                            } else if fruit % 3 == 1 {
                    //                                Color.green
                    //                            } else {
                    //                                Color.blue
                    //                            }
                    //                        }
                    //                    )
                    //                        for i in fruit.num {
                    //                            if fruit.num % 3 == 0 {
                    //                                color[0]
                    //                            } else if fruit.num % 3 == 1 {
                    //                                color[1]
                    //                            } else {
                    //                                color[2]
                    //                            }
                    //                        }
                }
            }
            Button("button"){
                flag = true
            }
        }
    }
        func configure(index : Int) -> Color {
            if index % 3 == 0 {
                return Color.red
            } else if index % 3 == 1 {
                return Color.green
            } else {
                return Color.yellow
            }
        }
    }


struct ExperimentView_Previews: PreviewProvider {
    static var previews: some View {
        ExperimentView()
    }
}
