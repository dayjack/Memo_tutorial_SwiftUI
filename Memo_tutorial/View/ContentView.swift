//
//  ContentView.swift
//  Memo_tutorial
//
//  Created by ChoiYujin on 2023/03/16.
// git 충돌

import SwiftUI

struct ContentView: View {
    
    @State var searchText: String = ""
    @State var memoCount: Int  = 0
    @State var isMakeNewFolder: Bool = false
    @State var memoList: [MemoVO] = [MemoVO()]
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                VStack(alignment: .leading) {
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        TextField("검색", text: $searchText)
                    }
                    .padding(.leading , 10)
                    .padding(.vertical, 5)
                    .background(Color("SearchBarColor"))
                    .cornerRadius(10)
                    .padding(.horizontal,20)
                    .foregroundColor(.gray)
                    
                    List {
                        Section {
                            NavigationLink {
                                Text("이동할 화면")
                            } label: {
                                HStack {
                                    Image(systemName: "folder")
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundColor(.yellow)
                                    Text("모든 iCloud")
                                    Spacer()
                                    Text("\(memoCount)")
                                        .foregroundColor(.gray)
                                        .onAppear {
                                            memoCount = memoList.count
                                        }
                                }
                            }
                        } header: {
                            Text("iCloud")
                                .font(.system(size: 25))
                                .background(Color("MemoBackgroundColor"))
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.black)
                                .textCase(nil)
                        }
                    }
                    
                    Spacer()
                    HStack {
                        Button {
                            isMakeNewFolder.toggle()
                        } label: {
                            Image(systemName: "folder.badge.plus")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(.yellow)
                        }
                        .padding(20)
                        .sheet(isPresented: $isMakeNewFolder) {
                            MakeFolderView(isMakeNewFolder: $isMakeNewFolder)
                        }
                        Spacer()
                        
                        
                        NavigationLink {
                            MemoWriteView()
                        } label: {
                            Image(systemName: "square.and.pencil")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(.yellow)
                        }
                        .padding(20)
                    }
                }
                .navigationTitle("폴더")
                .toolbar {
                    NavigationLink {
                        Text("이동할 화면")
                    } label: {
                        Text("편집")
                            .foregroundColor(.yellow)
                    }
                }
            }
            .background(Color("MemoBackgroundColor"))
        }
        .accentColor(.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

