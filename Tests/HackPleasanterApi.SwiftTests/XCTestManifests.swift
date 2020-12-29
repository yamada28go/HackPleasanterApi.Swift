import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(HackPleasanterApi_SwiftTests.allTests),
    ]
}
#endif
