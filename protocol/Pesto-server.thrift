/*
 * Interface to Pesto, the session manager. A session component uses
 *   this to talk to the session manager.
 */

namespace cpp org.basilviewer.pesto.server.protocol
namespace csharp org.basilviewer.pesto.server.protocol
namespace js org.basilviewer.pesto.server.protocol
namespace java org.basilviewer.pesto.server.protocol

include "BasilType.thrift"

service Pesto {
    // CONFIGURATION ======================================

    // Set configuration parameters
    void SetConfiguration (
        1: required BasilType.propertyList configs,   // a set of configuration parameters and values
        2: BasilType.topicName notifyThis    // topic to generate a notification for changed parameters
    ) throws (99: BasilType.BasilException e),

    // Fetch a list of configuration parameters
    BasilType.propertyList GetConfiguration (
        1: string filter   // wildcard match filter for returned configuration list
    ) throws (99: BasilType.BasilException e),

    // NOTIFICATIONS ======================================

    // Subscribe to notifications for some topic
    void Subscribe (
        1: required BasilType.topicName topic,
        2: BasilType.propertyList topicParameters    // qualifications on the subscription
    ) throws (99: BasilType.BasilException e),

    void UnSubscribe (
        1: required BasilType.topicName topic
    ) throws (99: BasilType.BasilException e),

    // Fetch a list of topics this client is subscribed to.
    // Race conditions possible.
    BasilType.propertyList GetSubscriptions (
        1: string filter   // wildcard match filter for returned topic list
    ) throws (99: BasilType.BasilException e),

    // Tell the session manager about some event for some topic
    oneway void Notify (
        1: required BasilType.topicName topic,
        2: required BasilType.propertyList props
    ),

}



