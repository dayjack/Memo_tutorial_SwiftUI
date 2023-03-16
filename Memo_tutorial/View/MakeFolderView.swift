//
//  MakeFolderView.swift
//  Memo_tutorial
//
//  Created by ChoiYujin on 2023/03/16.
//

import SwiftUI

struct MakeFolderView: View {
    
    @Binding var isMakeNewFolder: Bool
    @State var folderName: String = ""
    
    var body: some View {
        
        ZStack {
            Color("MemoBackgroundColor")
                .ignoresSafeArea(.all)
            NavigationStack {
                VStack {
                    TextField("" , text: $folderName).modifier(ClearButton(text: $folderName))
                        .padding(.horizontal,20)
                        .textFieldStyle(.roundedBorder)
                        .frame(height: 40)
                    
                    List {
                        NavigationLink {
                            Text("이동할 화면")
                        } label: {
                            
                            HStack {
                                Image(systemName: "folder.badge.gearshape")
                                    .padding(10)
                                    .background(.yellow)
                                    .cornerRadius(10)
                                    .foregroundColor(.white)
                                
                                VStack(alignment: .leading) {
                                    Text("스마트 폴더로 만들기")
                                    Text("태그 및 기타 필터를 사용하여 정리")
                                }
                            }
                            
                        }
                    }
                    
                    Spacer()
                }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("새로운 폴더")
                            .accessibilityAddTraits(.isHeader)
                    }
                }
                .background(Color("MemoBackgroundColor"))
                .toolbar {
                    Button {
                        isMakeNewFolder = false
                    } label: {
                        Text("완료")
                    }
                    .foregroundColor(.yellow)
                    
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            isMakeNewFolder = false
                        } label: {
                            Text("취소")
                        }
                        .foregroundColor(.yellow)
                    }
                }
            }
            .background(Color("MemoBackgroundColor"))
            .ignoresSafeArea(.all)
        }
    }
}

struct ClearButton: ViewModifier
{
    @Binding var text: String
    
    public func body(content: Content) -> some View
    {
        ZStack(alignment: .trailing)
        {
            content
            
            if !text.isEmpty
            {
                Button(action:
                        {
                    self.text = ""
                })
                {
                    Image(systemName: "x.circle.fill")
                        .foregroundColor(Color(UIColor.opaqueSeparator))
                }
                .padding(.trailing, 8)
            }
        }
    }
}


struct MakeFolderView_Previews: PreviewProvider {
    static var previews: some View {
        MakeFolderView(isMakeNewFolder: .constant(false))
    }
}

