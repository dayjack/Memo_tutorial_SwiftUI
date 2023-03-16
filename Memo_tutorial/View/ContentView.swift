//
//  ContentView.swift
//  Memo_tutorial
//
//  Created by ChoiYujin on 2023/03/16.
//

import SwiftUI

struct ContentView: View {
    
    @State var searchText: String = ""
    
    var body: some View {
        
        
        NavigationStack {
            
            ZStack {
                VStack(alignment: .leading) {
                    
//                    TextField("🔍검색", text: $searchText)
//                        .textFieldStyle(.roundedBorder)
//                        .padding(.horizontal, 20)
//                        .background(Color("MemoBackgroundColor"))
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                        TextField("검색", text: $searchText)
                    }
                    .padding(.leading , 10)
                    .padding(.vertical, 5)
                    .background(.gray)
                    .cornerRadius(10)
                    .padding(.horizontal,20)
                    .foregroundColor(Color("MemoBackgroundColor"))
                    
                    List {
                        
                        Section {
                            NavigationLink {
                                Text("이동할 화면")
                            } label: {
                                HStack {
                                    Image(systemName: "folder")
                                        .foregroundColor(.yellow)
                                    Text("모든 iCloud")
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
