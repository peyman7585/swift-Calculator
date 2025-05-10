//
//  ContentView.swift
//  Calculator
//
//  Created by Peyman on 5/10/25.
//

import SwiftUI

enum CalcButton: String{
    
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case add = "+"
    case subtract = "-"
    case divide = "/"
    case multiply = "*"
    case equal = "="
    case clear = "AC"
    case decimal = "."
    case percent = "%"
    case negative = "-/+"
}
struct ContentView: View {
    
    let buttons: [[CalcButton]] = [
        [.clear, .negative, .percent, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .subtract],
        [.one, .two, .three, .add],
        [.zero, .decimal, .equal]
    ]
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea(.all)
            
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    Text("0")
                        .font(.system(size: 64, weight: .bold, design: .default))
                        .foregroundColor(.white)
                }
                .padding()
                
                ForEach(buttons, id: \.self){ row in
                    HStack(spacing: 12){
                        ForEach(row, id: \.self){ item in
                            Button{
                                
                            }label: {
                             
                                    Text(item.rawValue)
                                    .font(.system(size: 32))
                                        .frame(
                                            width: buttonWidth(item: item),
                                            height: buttonHeight())
                                        .background(Color.orange)
                                        .foregroundColor(.white)
                                        .cornerRadius(buttonWidth(item: item) / 2)
                                
                             
                            }
                        }
                    }
                    .padding(.bottom, 3)
                   
                }
            }
        }
    }
    func buttonWidth(item: CalcButton) -> CGFloat {
        return (UIScreen.main.bounds.width - (5*12)) / 4
    }
   
    func buttonHeight() -> CGFloat {
        return (UIScreen.main.bounds.width - (5*12)) / 4
    }
}

#Preview {
    ContentView()
}
