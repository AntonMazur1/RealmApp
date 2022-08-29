//
//  Extension + UITableViewCell.swift
//  RealmApp
//
//  Created by Клоун on 29.08.2022.
//  Copyright © 2022 Alexey Efimov. All rights reserved.
//

import Foundation
import UIKit

extension UITableViewCell {
    func configureCell(with taskList: TaskList) {
        var content = defaultContentConfiguration()
        content.text = taskList.name
        
        if taskList.tasks.isEmpty {
            content.secondaryText = "0"
            accessoryType = .none
        } else if taskList.tasks.filter("isComplete = false").isEmpty {
            accessoryType = .checkmark
        } else {
            content.secondaryText = "\(taskList.tasks.filter("isComplete = false").count)"
            accessoryType = .none
        }
        
        contentConfiguration = content
    }
}
