//
//  Enumerations.swift
//  SSent
//
//  Created by Octavio Hernandez Diaz on 04/08/15.
//  Copyright (c) 2015 Trading. All rights reserved.
//

import Foundation

enum PartOfSpeech {
    case None, Noun, Verb, Adjective, Adverb
}

enum SentSide {
    case None, Economy
}

enum SentSideCtx {
    case None, PositiveIndicator, NegativeIndicator
}

enum Category {
    case None, Relevant, SentCarry, Negator, Amplifier, Downtoner
}