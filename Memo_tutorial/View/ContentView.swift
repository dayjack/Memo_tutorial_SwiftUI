//
//  ContentView.swift
//  Memo_tutorial
//
//  Created by ChoiYujin on 2023/03/16.
//

import SwiftUI

struct ContentView: View {
    
    @State var searchText: String = ""
<<<<<<< HEAD
    
    var body: some View {
        
        
=======
    @State var memoCount: Int = 0
    @State var isMakeNewFolder: Bool = false
    
    var body: some View {
        
>>>>>>> dev
        NavigationStack {
            
            ZStack {
                VStack(alignment: .leading) {
                    
<<<<<<< HEAD
//                    TextField("🔍검색", text: $searchText)
//                        .textFieldStyle(.roundedBorder)
//                        .padding(.horizontal, 20)
//                        .background(Color("MemoBackgroundColor"))
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
=======
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
>>>>>>> dev
                        TextField("검색", text: $searchText)
                    }
                    .padding(.leading , 10)
                    .padding(.vertical, 5)
<<<<<<< HEAD
                    .background(.gray)
                    .cornerRadius(10)
                    .padding(.horizontal,20)
                    .foregroundColor(Color("MemoBackgroundColor"))
                    
                    List {
                        
=======
                    .background(Color("SearchBarColor"))
                    .cornerRadius(10)
                    .padding(.horizontal,20)
                    .foregroundColor(.gray)
                    
                    List {
>>>>>>> dev
                        Section {
                            NavigationLink {
                                Text("이동할 화면")
                            } label: {
                                HStack {
                                    Image(systemName: "folder")
<<<<<<< HEAD
                                        .foregroundColor(.yellow)
                                    Text("모든 iCloud")
=======
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundColor(.yellow)
                                    Text("모든 iCloud")
                                    Spacer()
                                    Text("\(memoCount)")
                                        .foregroundColor(.gray)
>>>>>>> dev
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
<<<<<<< HEAD
                            //
                        } label: {
                            Image(systemName: "folder.badge.plus")
                                .foregroundColor(.yellow)
                        }
                        .padding(20)
                        Spacer()
                        Button {
                            //
                        } label: {
                            Image(systemName: "square.and.pencil")
=======
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
>>>>>>> dev
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
<<<<<<< HEAD
=======
        .accentColor(.yellow)
>>>>>>> dev
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
