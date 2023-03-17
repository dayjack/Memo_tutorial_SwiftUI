//
//  MemoWriteView.swift
//  Memo_tutorial
//
//  Created by ChoiYujin on 2023/03/16.
//

import SwiftUI

struct MemoWriteView: View {
    
    @State var memoString: String = "메모 여기에"
    @State var isEdited: Bool = false
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                VStack  {
                    TextEditor(text: $memoString)
                        .onReceive(NotificationCenter.default.publisher(for: UIResponder.keyboardDidChangeFrameNotification)) { _ in
                            isEdited = true
                        }
                        .padding(20)
                    Spacer()
                    
                    
                    
                    
                    
                }.toolbar {
                    if isEdited {
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
                            Button {
                                //
                            } label: {
                                Text("완료")
                            }
                        }.foregroundColor(.yellow)
                        
                    } else {
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
                Spacer()
                
                if isEdited {
                    // + Button
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            Button {
                                
                            } label: {
                                Text("+")
                                    .font(.system(.largeTitle))
                                    .frame(width: 54, height: 50)
                                    .foregroundColor(Color.white)
                                    .padding(.bottom, 7)
                            }
                            .background(Color.gray)
                            .cornerRadius(25)
                            .padding()
                            .shadow(color: Color.black.opacity(0.3),
                                    radius: 3,
                                    x: 3,
                                    y: 3)
                        }
                    }
                } else {
                    // bottom bar
                    VStack {
                        Spacer()
                        HStack {
                            Button {
                                
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
                    }
                    
                }
                
            }
        }
    }
}

struct MemoWriteView_Previews: PreviewProvider {
    static var previews: some View {
        MemoWriteView()
    }
}
