//
//  RecordDetail.swift
//  GDReaderSUI
//
//  Created by Jim on 6/2/22.
//

import SwiftUI

struct RecordDetail: View {
  @State var recordText: String
    var body: some View {
      TextEditor(text: $recordText)
          .font(.body)
     }
}

struct RecordDetail_Previews: PreviewProvider {
    static var previews: some View {
      RecordDetail(recordText: "SOUR\n1 TITL Source One")
    }
}
