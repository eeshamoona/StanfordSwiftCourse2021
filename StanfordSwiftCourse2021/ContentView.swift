//
//  ContentView.swift
//  StanfordSwiftCourse2021
//
//  Created by Eesha Moona on 3/16/21.
//

import SwiftUI

enum State {
    case info
    case threwAway
    case used
}

struct ContentView: View {
    var body: some View {
        return VStack( spacing: 15) {
            Text("Soon to Expire").font(.largeTitle)
            ForEach(0..<4) { index in
                ExpireCard(stateOfCard: State.info)
            } 
            MenuBar()
        }.padding().foregroundColor(Color.black).font(Font.title)
    }
}

struct ExpireCard: View {
    var stateOfCard: State
    var body: some View {
        switch stateOfCard {
        case .info:
            return ZStack() {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
                Text("Item 1 Due in 4 Days ")
           }
        case .threwAway:
            return ZStack() {
               RoundedRectangle(cornerRadius: 10.0).fill(Color.red)
               RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
               Text("X")
           }
        case .used:
            return ZStack() {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.green)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
                Text("✔︎")
            }
        }
    }
}

struct MenuBar: View {
    var body: some View {
        return HStack( spacing: 15) {
            Button {
                print("Button pressed")
            } label: {
                Text("Add Item")
                    .padding(20).foregroundColor(.blue)
            }
            .contentShape(Rectangle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
