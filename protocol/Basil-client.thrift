/*
 * Interface to a Basil client. Basil talks to it's clients with  this interface.
 */

namespace cpp org.basilviewer.basil.client.protocol
namespace csharp org.basilviewer.basil.client.protocol
namespace js org.basilviewer.basil.client.protocol
namespace java org.basilviewer.basil.client.protocol

include "BasilType.thrift"

service BasilClient {
    // OBJECT/INSTANCE MANAGEMENT =======================================
    
    // RESOURCE MANAGEMENT ==============================================

    // SESSION MANAGEMENT ===============================================

    // The renderer is initiating the end of the session
    void CloseSession (
        1: BasilType.timeCode time,
        2: BasilType.messageSequenceNumber sequenceNumber,
        3: string reason
    ) throws (99: BasilType.BasilException e),

    // Send this to the other side to get an asynchronous AliveResponse
    oneway void AliveCheck (
        1: required BasilType.timeCode time,
        2: required BasilType.messageSequenceNumber sequenceNumber
    ),

    oneway void AliveResponse (
        1: required BasilType.timeCode time,
        2: required BasilType.messageSequenceNumber sequenceNumber
        3: required BasilType.timeCode timeReceived,    // When the AliveCheck was received
        4: required BasilType.messageSequenceNumber sequenceNumberReceived  // The sequence number sent in the AliveCheck
    ),
}
