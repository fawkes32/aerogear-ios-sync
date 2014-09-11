import UIKit
import XCTest
import AeroGearSync

class ClientSyncEngineTests: XCTestCase {
    
    func testInitialize() {
        let synchonizer = DiffMatchPatchSynchronizer<String>()
        let dataStore = InMemoryDataStore<String>()
        let engine = ClientSyncEngine<String, DiffMatchPatchSynchronizer<String>, InMemoryDataStore<String>>(synchronizer: synchonizer, dataStore: dataStore)
        let clientDoc = ClientDocument<String>(id: "1234", clientId: "client1", content: "testing")
        engine.addDocument(clientDoc)
    }
}

