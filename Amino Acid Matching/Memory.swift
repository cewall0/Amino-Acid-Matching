//
//  Memory.swift
//  Amino Acid Matching
//
//  Created by Chad Wallace on 1/15/24.
//

import Foundation
import SwiftUI


// The card class properties and functions
@Observable
class Card: Identifiable { // Identifiable means this type can be iodfemfied uniquely (because we have the id=UUID. Our other code won't look for what property to use as the Card's identifier, it will now know there is a unique id property.
    var id = UUID()
    var isFaceUp = false
    var isMatched = false
    var name:String
    
    init(name:String){
        self.name = name
    }
    
    func turnOver(){
        self.isFaceUp.toggle()
    }
    
} // end Card class


// The aminoAcidNames string
let aminoAcids = [
    "alanineName", "alaninePic", "arginineName", "argininePic", "asparagineName", "asparaginePic","aspartic acidName", "aspartic acidPic", "cysteineName", "cysteinePic", "glutamineName", "glutaminePic","glutamic acidName", "glutamic acidPic", "glycineName", "glycinePic", "histidineName", "histidinePic", "isoleucineName", "isoleucinePic", "leucineName", "leucinePic", "lysineName", "lysinePic", "methionineName", "methioninePic", "phenylalanineName", "phenylalaninePic", "prolineName", "prolinePic", "serineName", "serinePic", "threonineName", "threoninePic", "tryptophanName", "tryptophanPic", "tyrosineName", "tyrosinePic", "valineName", "valinePic"
]

let aminoAcid3 = [
    "Ala", "Arg", "Asn", "Asp", "Cys", "Gln", "Glu", "Gly", "His", "Ile", "Leu", "Lys", "Met", "Phe", "Pro", "Ser", "Thr", "Trp", "Tyr", "Val"
]

let aminoAcid1 = [
    "A", "R", "N", "D", "C", "Q", "E", "G", "H", "I", "L", "K", "M", "F", "P", "S", "T", "W", "Y", "V"
]

// a function that creates our cardList array. We need two of each sport icon.

func createCardList() -> [Card] {
    // create a blank list
    var cardList = [Card]()  // cardList is an array of Cards. This builds the empty array.
    
    for aminoAcid in aminoAcids { // for each amino acid in the aminoAcid array. . .
        cardList.append(Card(name:aminoAcid)) // add the card class instance once for that amino acid name or name of picture
    }
    return cardList // return the cardList array of Card instances
} // end func createCardList

// The faceDown Card is a card instance with a question mark on it.
let faceDownCard = Card(name: "generalAminoAcidPic")

