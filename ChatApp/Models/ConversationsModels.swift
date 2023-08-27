//
//  ConversationsModels.swift
//  ChatApp
//
//  Created by Hoang Nhan Nguyen Dinh on 2023-03-31.
//

import Foundation

struct Conversation {
    let id: String
    let name: String
    let otherUserEmail: String
    let latestMessage: LatestMessage
}

struct LatestMessage {
    let date: String
    let text: String
    let isRead: Bool
}
