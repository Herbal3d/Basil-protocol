/*
 * Interface to Pesto client
 */

namespace cpp org.basilviewer.pesto.client.protocol
namespace csharp org.basilviewer.pesto.client.protocol
namespace js org.basilviewer.pesto.client.protocol
namespace java org.basilviewer.pesto.client.protocol

include "BasilType.thrift"

service PestoClient {

    // NOTIFICATIONS ======================================

    // Something happened on a subscribed topic
    oneway void Notify (
        1: required BasilType.topicName topic,
        2: required BasilType.propertyList props
    )
}



