//
//  EntityIdentifier.swift
//  FirebladeECS
//
//  Created by Christian Treffs on 08.10.17.
//

public struct EntityIdentifier: RawRepresentable {
    public typealias Idx = Int
    public let rawValue: UInt32

    public static let invalid = EntityIdentifier(.max)

    /// provides 4294967295 unique identifiers since it's constrained to UInt32 - invalid.
    @usableFromInline var id: Idx {
        return Idx(rawValue)
    }

    @inlinable
    public init(_ uint32: UInt32) {
        self.rawValue = uint32
    }

    @inlinable
    public init(rawValue: UInt32) {
        self.rawValue = rawValue
    }

}

extension EntityIdentifier: Equatable { }
extension EntityIdentifier: Hashable { }
