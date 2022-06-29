//
//  StringExtension.swift
//
//  Returns the remainder of a line, starting after an input prefix String.
//
//  Self may be a multi-line string, so returned is not merely a suffix.
//  The input prefix need not be the beginning of the line. It will be
//  the first occurrence in the input String.
//  Developed for use with a GEDCOM file, where normally the input
//  String will specify the beginning of a line, consisting of a level
//  number and a tag, including adjacent spaces. Returned is the
//  following value. It is assumed that value is short enough to be
//  contained on one line. Subsequent concatenation or continuation lines
//  are not followed.
//  Created by Jim Toth on 6/16/22.
//

import SwiftUI

extension String {
  func restOfLineFrom(_ prefixString: String) -> Substring? {
    guard let prefixStringRange = self.range(of: prefixString) else { return nil }
    let temp = self[prefixStringRange]
    let prefixStringEndIdx = temp.endIndex
    let returnStringEndIdx = self[prefixStringEndIdx...].firstIndex(where: \.isNewline)
                          ?? self.endIndex
    return self[prefixStringEndIdx..<returnStringEndIdx]
  }
}
