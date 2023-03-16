//
//  MemoWriteView.swift
//  Memo_tutorial
//
//  Created by ChoiYujin on 2023/03/16.
//

import SwiftUI

struct MemoWriteView: View {
    
    @State var memoString: String = "메모 여기에"
    
    var body: some View {
        
        NavigationStack {
            VStack {
                TextEditor(text: $memoString)
                    .padding(20)
                Spacer()
                HStack {
                    Button {
                        //
                    } label: {
                        Image(systemName: "checklist")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .aspectRatio(contentMode: .fit)
                    }
                    .padding(.horizontal, 20)
                    Spacer()
                    Button {
                        //
                    } label: {
                        Image(systemName: "camera")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .aspectRatio(contentMode: .fit)
                    }.padding(.horizontal, 20)
                    Spacer()
                    Button {
                        //
                    } label: {
                        Image(systemName: "pencil.tip.crop.circle")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .aspectRatio(contentMode: .fit)
                    }.padding(.horizontal, 20)
                    Spacer()
                    Button {
                        //
                    } label: {
                        Image(systemName: "square.and.pencil")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .aspectRatio(contentMode: .fit)
                    }.padding(.horizontal, 20)

                }.foregroundColor(.yellow)
                    
            }.toolbar {
                HStack {
                    Button {
                        //
                    } label: {
                        Image(systemName: "square.and.arrow.up")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .aspectRatio(contentMode: .fit)
                    }
                    .padding(.horizontal, 20)
                    Button {
                        //
                    } label: {
                        Image(systemName: "ellipsis.circle")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .aspectRatio(contentMode: .fit)
                    }
                }
                .foregroundColor(.yellow)
            }
         
            
        }
    }
}

struct MemoWriteView_Previews: PreviewProvider {
    static var previews: some View {
        MemoWriteView()
    }
}
