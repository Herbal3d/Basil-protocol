/*
 * Types that are used in the communications with Basil
 */

// GEOMETRY ==================================
struct Vector3 {
    1: required double X;
    2: required double Y;
    3: required double Z
}

/*
struct Vector3F {
    1: required float X;
    2: required float Y;
    3: required float Z
}
*/

struct Quaternion {
    1: required double X;
    2: required double Y;
    3: required double Z;
    4: required double W
}

/*
struct QuaternionF {
    1: required float X;
    2: required float Y;
    3: required float Z;
    4: required float W
}
*/

struct Transform {
    1: required list<double> matrix;    // 3x3 matrix
    2: required Vector3 origin
}

/*
struct TransformF {
    1: required list<float> matrix;    // 3x3 matrix
    2: required Vector3f origin
}
*/

// MISC ==================================

// signed milliseconds since 0 BCE UTC
typedef i64 timeCode

// Messages have sequence numbers which count up from 0 at the beginning of a session
typedef i32 messageSequenceNumber

// Some items (subscriptions, ...) have IDs to track them.
typedef i32 simpleID

// Objects can have properties that can be read and updated independently
typedef string propertyName
typedef string propertyValue
typedef map<propertyName,propertyValue> propertyList

typedef string topicName        // notifications are based on a topic

typedef i32 exceptionCode       // errors have codes so internationalization is possible
exception BasilException {
    1: required exceptionCode reason;  // code for the exception
    2: optional propertyList hints;   // additional information for recovery. Error dependent.
}

enum coordSystem {
    WGS86 = 1,  // WGS84 earth coordinates
    CAMERA,     // Coordinates relative to camera position (-1..1 range, zero center)
    CAMERAABS,  // Absolute coordinates relative to the camera position (zero center)
    VIRTUAL,    // Zero based un-rooted coordinates
    MOON,       // Earth-moon coordinates
    MARS,       // Mars coordinates
    REL1,       // Mutually agreed base coordinates
    REL2,
    REL3
}
typedef i8 coordRef

enum rotationSystem {
    WORLD = 1,  // rotation is relative to work coordinates
    FOR,        // rotation is relative to current frame of reference
    CAMERA      // rotation is relative to the camera direction
}
typedef i8 rotationRef

struct coordPosition {
    1: required Vector3 pos;
    2: required Quaternion rot;
    3: required coordRef posRef;    // value of type coordSystem
    4: required rotationRef rotRef; // value of type rotationRef
}

// OBJECT INFORMATION ==================================

// The globally unique identifier of an object is a string (text GUID or URI)
typedef string objectIdentifier

// An object is realized in the world as an 'instance' which has position and
//    other individual properties. There can be multiple instances of an object.
//    Instances are referenced by an ID given to them when created.
// ID lifetime is the life of the particular Basil server being used.
typedef i32 instanceIdentifier

// An axis aligned area that contains an object
struct aaBoundingBox {
    1: required Vector3 upperFrontLeft;
    2: required Vector3 lowerBackRight;
}

struct objectDisplayInfo {
    1: required aaBoundingBox aabb;
}

// Description of the asset information for a displayable object
struct assetInformation {
    1: objectIdentifier id;
    2: objectDisplayInfo displayInfo;
}

// Description of a path that the object is moving on. Future
struct pathDescription {
    1: required string pathType;
}

// A specification of object motion/position
struct instancePositionInfo {
    1: required objectIdentifier id;
    2: required coordPosition pos;
    3: optional Vector3 vel;
    4: optional pathDescription path
}

// Requests include authorization for the request.
// It is expected that a client could have multiple authorizations from different
//    sources and with different scopes so this access authorization blob
//    can contain multiple properties which consist of the authorization
//    source and a string representing that authorization. The coding
//    of the authorization follows the 'Authorization:' header line specified
//    in RFC2617 (https://tools.ietf.org/html/rfc2617)
//    which is a scheme token followed by an encoding of the authentication.
struct accessAuthorization {
    1: required propertyList accessProperties
}

// Requests can include trace information (like using Zipkin)
//   to trace calls. It's usually a JSON string.

typedef string traceInfo

