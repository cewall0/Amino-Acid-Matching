//
//  ContentView.swift
//  Amino Acid Matching
//
//  Created by Chad Wallace on 1/15/24.
//

import Foundation
import SwiftUI

struct ContentView: View {
    
    private var fourColumnGrid = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    private var tenColumnGrid = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    @State var cards = createCardList().shuffled()
    @State var MatchedCards = [Card]()
    @State var UserChoices = [Card]()
    
    var body: some View {
        ZStack{
            
            Color(.sRGB, red: 0.922, green: 0.918, blue: 0.773)
                .opacity(0.5)
                .ignoresSafeArea()
            
            GeometryReader{geo in
                VStack {
                    Text("Amino Acid Memory Game")
                        .font(.largeTitle)
                    
                    LazyVGrid(columns: fourColumnGrid, spacing: 8) {
                        ForEach(cards) {card in
                            CardView(card: card,
                                     width: Int(geo.size.width/4 - 5),
                                     height: Int(geo.size.height/10 - 15),
                                     MatchedCards: $MatchedCards,
                                     UserChoices: $UserChoices)
                        } // end ForEach
                    } // end LazyVGrid
                    
//                    VStack{
//                        Text("Match these cards to win:")
//                        LazyVGrid(columns: tenColumnGrid, spacing: 5) {
//                            ForEach (aminoAcids, id:\.self){aminoAcid in // for each card with a unique identifier in the cardValues array of sports String icons...  the identifier is the string itself since these are all unique values. If not, this is where I would need to make a struct (labeled Identifiable to let the rest of the code know it has an identifiable uuid in it, and use an id=UUID() in the struct and make id:\.id
//                                if !MatchedCards.contains(where: {$0.name == aminoAcid}){
//                                    Text(aminoAcid)
//                                        .font(.system(size:30))
//                                } // end if
//                            } // end ForEach
//                        } // end LazyVGrid sixColumns
//                    } // end VStack for items to match
                } // end VStack for the bigger contentView
            } // end geometryReader
        } // end ZStack
    } // end body View
} // end struct ContentView

#Preview {
    ContentView()
}

