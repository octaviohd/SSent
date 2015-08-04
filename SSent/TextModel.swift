//
//  TextModel.swift
//  SSent
//
//  Created by Octavio Hernandez Diaz on 04/08/15.
//  Copyright (c) 2015 Trading. All rights reserved.
//

import Foundation

// Instances of this class represent a lexical item that appears in a document.
// A lexical item is nothing more than a word or an expression, i.e. 2 or more
// words that together refer to a single concept.  Examples: cut, cut off,
// supply, demand, gross domestic product, central bank, saudi arabia.
class LexicalItem {
    // lexical item as it appears in the text
    var item: String
    // zero-based, indicates order of lexical item in text
    var index: Int
    // lexical item's part of speech, e.g. noun
    var partOfSpeech: PartOfSpeech
    // sentiment side of the text where the lexical item is being used
    var sentSide: SentSide
    // sentiment side context of the text where the lexical item is being used
    var sentSideCtx: SentSideCtx
    // category of the lexical item, e.g. relevant, negator, etc.
    var category: Category
    // semantic orientation value of the lexical item
    var soValue: Double
    // set to true if the lexical item is negated by another one
    var isNegated: Bool
    // set to true if the lexical item is amplified by another one
    var isAmplified: Bool
    // set to true if the lexical item is downtoned by another one
    var isDowntoned: Bool
    // set to true if the lexical item must be considered for the text score
    var isConsidered: Bool
    // initialiser
    init(item: String ) {
        self.item = item
        self.index = 0
        self.partOfSpeech = PartOfSpeech.None
        self.sentSide = SentSide.None
        self.sentSideCtx = SentSideCtx.None
        self.category = Category.None
        self.soValue = 0.0
        self.isNegated = false
        self.isAmplified = false
        self.isDowntoned = false
        self.isConsidered = false
    }
}