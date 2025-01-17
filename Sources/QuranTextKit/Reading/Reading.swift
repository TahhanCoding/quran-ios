//
//  Reading.swift
//
//
//  Created by Mohamed Afifi on 2023-02-14.
//

import Foundation
import QuranKit

public enum Reading: Int, CaseIterable {
    case hafs_1405 = 0
    case hafs_1440 = 1
    case tajweed = 2

    var resourcesTag: String {
        switch self {
        case .hafs_1405: return "hafs_1405"
        case .hafs_1440: return "hafs_1440"
        case .tajweed: return "tajweed"
        }
    }

    public var quran: Quran {
        switch self {
        case .hafs_1405:
            return .hafsMadani1405
        case .hafs_1440:
            return .hafsMadani1440
        case .tajweed:
            return .hafsMadani1405
        }
    }
}
