/*
 * Interface to Pesto client
 */

namespace cpp org.basilviewer.pesto.client.protocol
namespace csharp org.basilviewer.pesto.client.protocol
// namespace js org_basilviewer_pesto_client_protocol
namespace java org.basilviewer.pesto.client.protocol

include "BasilType.thrift"

service PestoClient {

    // NOTIFICATIONS ======================================

    // Something happened on a subscribed topic
    oneway void Notify (
        1: required BasilType.accessAuthorization auth, // permissions
        2: BasilType.traceInfo trace,
        3: required BasilType.topicName topic,
        4: required BasilType.simpleID subscriptionID,  // the subscription that gen'ed the notify
        5: required BasilType.propertyList props
    )
}



