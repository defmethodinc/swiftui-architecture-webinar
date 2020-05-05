//
//  KeyboardResponsiveView.swift
//  Webinar
//
//  Created by Paul Stefan Ort on 4/30/20.
//  Copyright © 2020 Def Method. All rights reserved.
//

import SwiftUI

// adapted from useful examples of keyboard interactions at https://stackoverflow.com/questions/56491881/move-textfield-up-when-thekeyboard-has-appeared-by-using-swiftui-ios

struct KeyboardResponsiveView<Content: View>: View {
    let view: Content

    @State private var keyboardHeight: CGFloat = 0

    private let keyboardWillShowPublisher = NotificationCenter.Publisher.init(
        center: .default,
        name: UIResponder.keyboardWillShowNotification
    ).map { (notification) -> CGFloat in
        if let rect = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect {
            return rect.size.height
        } else {
            return 0
        }
    }

    private let keyboardWillHidePublisher = NotificationCenter.Publisher.init(
        center: .default,
        name: UIResponder.keyboardWillHideNotification
    ).map {_ -> CGFloat in 0}

    // Like HStack or VStack, the only parameter is the view that this view should layout.
    // (It takes one view rather than the multiple views that Stacks can take)
    init(@ViewBuilder content: () -> Content) {
        view = content()
    }

    var body: some View {
        VStack {
            view
                .padding(.bottom, keyboardHeight)
                .animation(.default)
            
        }.onReceive(keyboardWillShowPublisher.merge(with: keyboardWillHidePublisher)) { (height) in self.keyboardHeight = height }
    }
}
