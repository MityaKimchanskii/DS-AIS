// The three main data structures that the standard library provides right out of the box: Array, Dictionary, and Set.

// Array
// an Array is a Sequence, which means that you can iterate
// through it at least once. It is also a Collection, which means it can be traversed
// multiple times, non-destructively, and accessed using a subscript operator. An array
// is also a RandomAccessCollection, which makes guarantees about efficiency.
// The Swift Array is known as a generic collection, because it can work with any type.

// Dictionary
// A dictionary is a generic collection that holds key-value pairs. Dictionaries are unordered.
// It is possible to traverse through the key-values of a dictionary multiple times as the Collection protocol affords.
// Inserting into a dictionary always takes a constant amount of time.
// Lookup operations also take a constant amount of time, which is significantly faster
// than finding a particular element in an array that requires a walk from the beginning
// of the array to the insertion point.
var scores: [String: Int] = ["Eric": 9, "Mark": 12, "Wayne": 1]

// Set
// A set is a container that holds unique values.

// The Swift Collections package
// The Swift standard library only implements the three most important data
// structures: Array, Set, and Dictionary. For additional data structures, you can
// check out the Swift Collections package. This package allows new collection types
// to be developed and tested by the community before they become part of the official
// standard library.

// Deque
// A Deque is a double-ended queue. Therefore, Deque optimizes for modifications from
// both the front and the back of the collection. Unlike Array, inserting or removing an
// lement from the front of a Deque is a cheap O(1) operation.

// The Swift Collections package contains additional data structures, such as
// OrderedDictionary and OrderedSet.


