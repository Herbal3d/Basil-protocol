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

// OBJECT INFORMATION ==================================

// The globally unique identifier of an object is a string (text GUID or URI)
typedef string objectIdentifier

// An object is realized in the world as an 'instance' which has position and
//    other individual properties. There can be multiple instances of an object.
//    Instances are referenced by an ID given to them when created.
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
    2: required Vector3 pos;
    3: required Quaternion rot;
    4: optional Vector3 vel;
    5: optional pathDescription path
}

struct accessAuthorization {
    1: required propertyList accessProperties
}

