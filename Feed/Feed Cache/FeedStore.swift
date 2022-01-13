//
//  Created by César on 12/01/22.
//

import Foundation

public protocol FeedStore {
    typealias DeletionCompetion = (Error?) -> Void
    typealias InsertionCompetion = (Error?) -> Void
    
    func deleteCachedFeed(completion: @escaping DeletionCompetion)
    func insert(_ items: [LocalFeedItem], timestamp: Date, completion: @escaping InsertionCompetion)
}

public struct LocalFeedItem: Equatable {
    public let id: UUID
    public let description: String?
    public let location: String?
    public let imageURL: URL
    
    public init(id: UUID, description: String?, location: String?, imageURL: URL) {
        self.id = id
        self.description = description
        self.location = location
        self.imageURL = imageURL
    }
}
