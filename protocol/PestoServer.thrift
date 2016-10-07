/*
 * Interface to Pesto, the session manager. A session component uses
 *   this to talk to the session manager.
 */

namespace cpp org.basilviewer.pesto.server.protocol
namespace csharp org.basilviewer.pesto.server.protocol
// namespace js org_basilviewer_pesto_server_protocol
namespace java org.basilviewer.pesto.server.protocol

include "BasilType.thrift"

service Pesto {
    // CONFIGURATION ======================================

    // Set configuration parameters
    void SetConfiguration (
        1: required BasilType.accessAuthorization auth,  // permissions to set
        2: BasilType.traceInfo trace,
        3: required BasilType.propertyList configs,      // a set of configuration parameters and values
        4: BasilType.topicName notifyThis                // topic to generate a notification for changed parameters
    ) throws (99: BasilType.BasilException e),

    // Fetch a list of configuration parameters
    BasilType.propertyList GetConfiguration (
        1: required BasilType.accessAuthorization auth,  // permissions to get
        2: BasilType.traceInfo trace,
        3: string filter   // wildcard match filter for returned configuration list
    ) throws (99: BasilType.BasilException e),

    // NOTIFICATIONS ======================================

    // Subscribe to notifications for some topic
    void Subscribe (
        1: required BasilType.accessAuthorization auth,  // permissions to subscribe
        2: BasilType.traceInfo trace,
        3: required BasilType.topicName topic,
        4: required BasilType.simpleID subscriptionID,   // user gen'ed ID passed to notificiations
        5: BasilType.propertyList topicParameters        // qualifications on the subscription
    ) throws (99: BasilType.BasilException e),

    void UnSubscribe (
        1: required BasilType.accessAuthorization auth,  // permissions to unsubscribe
        2: BasilType.traceInfo trace,
        3: required BasilType.topicName topic,
        4: required BasilType.simpleID subscriptionID
    ) throws (99: BasilType.BasilException e),

    // Fetch a list of topics this client is subscribed to.
    // Race conditions possible.
    BasilType.propertyList GetSubscriptions (
        1: required BasilType.accessAuthorization auth,  // permissions to get subscriptsion
        2: BasilType.traceInfo trace,
        3: string filter   // wildcard match filter for returned topic list
    ) throws (99: BasilType.BasilException e),

    // Tell the session manager about some event for some topic
    oneway void Notify (
        1: required BasilType.accessAuthorization auth,  // permissions to bother other people
        2: BasilType.traceInfo trace,
        3: required BasilType.topicName topic,
        4: required BasilType.propertyList props
    )

}



