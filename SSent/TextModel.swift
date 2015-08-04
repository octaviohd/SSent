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
    // Lexical item as it appears in the text.
    var item: String
    // Zero-based, indicates order of lexical item in text.
    var index: Int
    // Lexical item's part of speech, e.g. noun.
    var partOfSpeech: PartOfSpeech
    // Sentiment side of the text where the lexical item is being used.
    var sentSide: SentSide
    // Sentiment side context of the text where the lexical item is being used.
    var sentSideCtx: SentSideCtx
    // Category of the lexical item, e.g. relevant, negator, etc.
    var category: Category
    // Semantic orientation value of the lexical item.
    var soValue: Double
    // Set to true if the lexical item is negated by another one.
    var isNegated: Bool
    // Set to true if the lexical item is amplified by another one.
    var isAmplified: Bool
    // Set to true if the lexical item is downtoned by another one.
    var isDowntoned: Bool
    // Set to true if the lexical item must be considered for the text score.
    var isConsidered: Bool
    // Initialiser
    init(item: String) {
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

// Instances of this class represent a sentence within a document.  A sentence
// ends whenever there is full-stop/period punctuation mark.
class Sentence {
    // Sentence as it appears in the text.
    var asIs: String
    // Array of LexicalItem instances, 1 instance per item in the sentence.
    var lexicalItems: [LexicalItem]
    // Dictionary of boolean values to indicate the presence of sentiment side contexts in the sentence.
    var sentSideCtxFlags: [SentSideCtx:Bool]
    // Bullish score of the sentence according to its lexical items.
    var bullishScore: Double
    // Bearish score of the sentence according to its lexical items.
    var bearishScore: Double
    // Initialiser
    init(original: String) {
        self.asIs = original
        self.lexicalItems = [LexicalItem]()
        self.sentSideCtxFlags = [SentSideCtx.PositiveIndicator:false, SentSideCtx.NegativeIndicator:false]
        self.bullishScore = 0.0
        self.bearishScore = 0.0
    }
}

// Instances of this class represent a news article.
class News {
    // Title of the news article.
    var title: String
    // Publication date of the news article in the form YYYYMMDD
    var publicationDate: String
    // URL where this article can be found.
    var url: String
    // Array of String instances, each string representing a sentence.
    var asIs: [String]
    // Array of Sentence instances, each instance representing a sentence.
    var sentences: [Sentence]
    // Bullish score of the document according to its lexical items.
    var bullishScore: Double
    // Bearish score of the document according to its lexical items.
    var bearishScore: Double
    // Initialiser
    init () {
        self.title = ""
        self.publicationDate = ""
        self.url = ""
        self.asIs = [String]()
        self.sentences = [Sentence]()
        self.bullishScore = 0.0
        self.bearishScore = 0.0
    }
}