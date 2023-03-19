//
//  MemoListView.swift
//  Memo_tutorial
//
//  Created by ChoiYujin on 2023/03/19.
//

import SwiftUI

struct MemoListView: View {
    
    @State var searchText:String = ""
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                VStack {
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
                    Spacer()
                    
                    List {
                        Section {
                            VStack(alignment: .leading) {
                                Text("메모 제목")
                                    .foregroundColor(.black)
                                HStack {
                                    Text("2023-01-01")
                                    Text("메모내용 중략")
                                }
                                HStack {
                                    Image(systemName: "folder")
                                    Text("폴더이름")
                                }
                            }
                            .foregroundColor(.gray)
                            
                        } header: {
                            Text("오늘")
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                        }
                        Section {
                            VStack(alignment: .leading) {
                                Text("메모 제목")
                                    .foregroundColor(.black)
                                HStack {
                                    Text("2023-01-01")
                                    Text("메모내용 중략")
                                }
                                HStack {
                                    Image(systemName: "folder")
                                    Text("폴더이름")
                                }
                            }
                            .foregroundColor(.gray)
                            
                        } header: {
                            Text("오늘")
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                        }
                        Section {
                            VStack(alignment: .leading) {
                                Text("메모 제목")
                                    .foregroundColor(.black)
                                HStack {
                                    Text("2023-01-01")
                                    Text("메모내용 중략")
                                }
                                HStack {
                                    Image(systemName: "folder")
                                    Text("폴더이름")
                                }
                            }
                            .foregroundColor(.gray)
                            
                        } header: {
                            Text("오늘")
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                        }
                        Section {
                            VStack(alignment: .leading) {
                                Text("메모 제목")
                                    .foregroundColor(.black)
                                HStack {
                                    Text("2023-01-01")
                                    Text("메모내용 중략")
                                }
                                HStack {
                                    Image(systemName: "folder")
                                    Text("폴더이름")
                                }
                            }
                            .foregroundColor(.gray)
                            
                        } header: {
                            Text("오늘")
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                        }
                        Section {
                            VStack(alignment: .leading) {
                                Text("메모 제목")
                                    .foregroundColor(.black)
                                HStack {
                                    Text("2023-01-01")
                                    Text("메모내용 중략")
                                }
                                HStack {
                                    Image(systemName: "folder")
                                    Text("폴더이름")
                                }
                            }
                            .foregroundColor(.gray)
                            
                        } header: {
                            Text("오늘")
                                .font(.system(size: 20))
                                .foregroundColor(.black)
                        }

                    }

                }
                .navigationTitle("모든 iCloud")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            //
                        } label: {
                            Image(systemName: "ellipsis.circle")
                        }
                        .foregroundColor(.yellow)
                    }
            }
                
                VStack {
                    
                    Spacer()
                    VStack {
                        Divider()
                        HStack {
                            Text("")
                                .padding(.horizontal,20)
                            Spacer()
                            Text("11개의 메모")
                                .padding(.horizontal,20)
                            Spacer()
                            Image(systemName: "square.and.pencil")
                                .resizable()
                                .foregroundColor(.yellow)
                                .frame(width: 25,height: 25)
                                .padding(.horizontal,20)
                                
                        }
                        .frame(maxWidth: .infinity)
                    }
                    .background(Color("MemoBackgroundColor"))
                    
                }
                .zIndex(1)
               
                
            }.background(Color("MemoBackgroundColor"))
        }
    }
}

struct MemoListView_Previews: PreviewProvider {
    static var previews: some View {
        MemoListView()
    }
}
