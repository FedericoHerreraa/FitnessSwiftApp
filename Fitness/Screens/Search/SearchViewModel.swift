

import SwiftUI

final class SearchViewModel: ObservableObject {
    @Published var searchText = ""
    @Published var isPreviewProfileOpen = false
}
