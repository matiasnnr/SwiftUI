//
//  UserData.swift
//  Landmarks
//
//  Created by Matías Nicolás Núñez Rivas on 06-08-20.
//  Copyright © 2020 Matías Nicolás Núñez Rivas. All rights reserved.
//

import Combine
import SwiftUI

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    @Published var profile = Profile.default
}
