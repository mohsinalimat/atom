// Atom
//
// Copyright (c) 2020 Alaska Airlines
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation

extension URLSessionTask {
    /// Returns a textual representation of this instance, suitable for debugging.
    override open var debugDescription: String {
        let serverError = error?.localizedDescription ?? .init()
        let identifier = String("❗️Task id: \(taskIdentifier)")
        let request = originalRequest?.debugDescription ?? .init()
        let serverResponse = response?.debugDescription ?? .init()

        return """

        \(identifier)
        \(request)
        \(serverResponse)
        \(serverError)
        """
    }
}
