//
//  Output.swift
//  VSCodeStorageCleaner
//
//  Created by Zehua Chen on 12/23/18.
//

import VSCodeStorage

/// Print storages to std out
///
/// - Parameter storages: the storages to print
internal func print(storages: [VSCodeStorage]) {

    for storage in storages {

        switch storage {
        case .workspace(let storagePath, let workspacePath):
            print(storagePath.baseName, workspacePath.baseName,
                  separator: "\t",
                  terminator: "\n")
        case .other(let path):
            print(path.baseName)
        }

    }

}
