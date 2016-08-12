/*
 * Interface to Basil. The interface a client talks to a Basil renderer.
 * These fall into several classes:
 *    Connection creation and management.
 *    Object/instance definition and management.
 *    Resource queries and management.
 */

namespace cpp org.basilviewer.basil.server.protocol
namespace csharp org.basilviewer.basil.server.protocol
namespace js org.basilviewer.basil.server.protocol
namespace java org.basilviewer.basil.server.protocol

include "BasilType.thrift"

service BasilServer {
    // OBJECT/INSTANCE MANAGEMENT ===============================================

    // Describe an object to Basil for later display or manipulation
    // This associates an ID with a block of asset information that can be 
    //   later displayed or operated on.
    void IdentifyDisplayableObject (
        1: required BasilType.accessAuthorization auth,
        2: required BasilType.objectIdentifier id,
        3: required BasilType.assetInformation assetInfo,
        4: BasilType.aaBoundingBox aabb
    ) throws (99: BasilType.BasilException e),

    // An object may occur multiple times. This defines one instance
    //   that is at a particular location in the world.
    // Returns an instanceIdentifer that can be used to refer to the instance.
    BasilType.instanceIdentifier CreateObjectInstance (
        1: required BasilType.accessAuthorization auth,
        2: required BasilType.objectIdentifier id,
        3: required BasilType.instancePositionInfo pos,
        4: required BasilType.propertyList propertiesToSet
    ) throws (99: BasilType.BasilException e),

    // Update a property of an object. This could effect all instances.
    void UpdateObjectProperty (
        1: required BasilType.accessAuthorization auth,
        2: required BasilType.objectIdentifier objectId,
        3: required BasilType.propertyList props
    ) throws (99: BasilType.BasilException e),

    // Update a property of an instance
    void UpdateInstanceProperty (
        1: required BasilType.accessAuthorization auth,
        2: required BasilType.instanceIdentifier instanceId,
        3: required BasilType.propertyList props
    ) throws (99: BasilType.BasilException e),

    // A short form that updates the position properties of an instance
    void UpdateInstancePosition (
        1: required BasilType.accessAuthorization auth,
        2: required BasilType.instanceIdentifier instanceId,
        3: required BasilType.instancePositionInfo pos
    ) throws (99: BasilType.BasilException e),

    BasilType.propertyList RequestObjectProperties (
        1: required BasilType.accessAuthorization auth,
        2: required BasilType.messageSequenceNumber sequenceNumber,
        3: required BasilType.objectIdentifier objectId,
        4: string propertyMatch   // wildcard used to match returned properties
    ) throws (99: BasilType.BasilException e),

    BasilType.propertyList RequestInstanceProperties (
        1: required BasilType.accessAuthorization auth,
        2: required BasilType.messageSequenceNumber sequenceNumber,
        3: required BasilType.instanceIdentifier instanceId,
        4: string propertyMatch   // wildcard used to match returned properties
    ) throws (99: BasilType.BasilException e),

    // RESOURCE MANAGEMENT ===============================================

    // CONNECTION MANAGEMENT =============================================

    // A client initiates a connection.
    // Returned property list is a collection of Basil renderer capabilities.
    BasilType.propertyList OpenSession (
        1: required BasilType.accessAuthorization auth,
        2: required BasilType.timeCode time,
        3: required BasilType.messageSequenceNumber sequenceNumber,
        4: BasilType.propertyList features
    ) throws (99: BasilType.BasilException e) ,

    // Client is initiating an end to the session
    void CloseSession (
        1: required BasilType.accessAuthorization auth,
        2: required BasilType.timeCode time,
        3: required BasilType.messageSequenceNumber sequenceNumber,
        4: string reason
    ) throws (99: BasilType.BasilException e),

    // Send this to the other side to get an asynchronous AliveResponse
    oneway void AliveCheck (
        1: required BasilType.accessAuthorization auth,   // not just anyone can see I'm alive
        2: required BasilType.timeCode time,
        3: required BasilType.messageSequenceNumber sequenceNumber
    ),

    oneway void AliveResponse (
        1: required BasilType.accessAuthorization auth,
        2: required BasilType.timeCode time,
        3: required BasilType.messageSequenceNumber sequenceNumber,
        4: required BasilType.timeCode timeReceived,    // When the AliveCheck was received
        5: required BasilType.messageSequenceNumber sequenceNumberReceived  // The sequence number sent in the AliveCheck
    ),
}
