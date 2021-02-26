/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view wrapping a UIPageControl.
*/

import SwiftUI
import UIKit

struct PageControl: UIViewRepresentable {
    var numberOfPages: Int
    @Binding var currentPage: Int

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    func makeUIView(context: Context) -> UIPageControl {
        let control = UIPageControl()
        control.currentPageIndicatorTintColor = UIColor(red: 0.80, green: 0.62, blue: 0.46, alpha: 1.00)
        control.pageIndicatorTintColor = UIColor(red: 0.97, green: 0.97, blue: 0.97, alpha: 0.30)
        control.numberOfPages = numberOfPages
    
        control.addTarget(
            context.coordinator,
            action: #selector(Coordinator.updateCurrentPage(sender:)),
            for: .valueChanged)

        return control
    }

    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }

    class Coordinator: NSObject {
        var control: PageControl

        init(_ control: PageControl) {
            self.control = control
        }

        @objc
        func updateCurrentPage(sender: UIPageControl) {
            control.currentPage = sender.currentPage
        }
    }
}
