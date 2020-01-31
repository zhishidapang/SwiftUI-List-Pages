//
//  STAuthor.swift
//  SwiftUI_scroll_flashcard
//
//  Created by cf on 2020/1/29.
//  Copyright © 2020 cf. All rights reserved.
//

import Foundation

struct STAuthor:Hashable, Decodable,Identifiable {
    var id = UUID()
    var name = ""
    var intro = ""
    var dynasty = ""
    var birth_year = ""
    var views_count = ""
    var quotes_count = ""
    var works_count = ""
    var works_ci_count = ""
    var works_wen_count = ""
    var works_qu_count = ""
    var works_fu_count = ""
}
