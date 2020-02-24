// Auto-generated. Do not edit!

// (in-package self_learning_communication.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class pose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.camera_id = null;
      this.camera_timestamp = null;
      this.camera_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('camera_id')) {
        this.camera_id = initObj.camera_id
      }
      else {
        this.camera_id = new std_msgs.msg.Int32();
      }
      if (initObj.hasOwnProperty('camera_timestamp')) {
        this.camera_timestamp = initObj.camera_timestamp
      }
      else {
        this.camera_timestamp = new std_msgs.msg.Time();
      }
      if (initObj.hasOwnProperty('camera_pose')) {
        this.camera_pose = initObj.camera_pose
      }
      else {
        this.camera_pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pose
    // Serialize message field [camera_id]
    bufferOffset = std_msgs.msg.Int32.serialize(obj.camera_id, buffer, bufferOffset);
    // Serialize message field [camera_timestamp]
    bufferOffset = std_msgs.msg.Time.serialize(obj.camera_timestamp, buffer, bufferOffset);
    // Serialize message field [camera_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.camera_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pose
    let len;
    let data = new pose(null);
    // Deserialize message field [camera_id]
    data.camera_id = std_msgs.msg.Int32.deserialize(buffer, bufferOffset);
    // Deserialize message field [camera_timestamp]
    data.camera_timestamp = std_msgs.msg.Time.deserialize(buffer, bufferOffset);
    // Deserialize message field [camera_pose]
    data.camera_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'self_learning_communication/pose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '54e782714e2aeb791673a0a14332f140';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Int32 camera_id
    std_msgs/Time camera_timestamp
    geometry_msgs/Pose camera_pose
    
    ================================================================================
    MSG: std_msgs/Int32
    int32 data
    ================================================================================
    MSG: std_msgs/Time
    time data
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pose(null);
    if (msg.camera_id !== undefined) {
      resolved.camera_id = std_msgs.msg.Int32.Resolve(msg.camera_id)
    }
    else {
      resolved.camera_id = new std_msgs.msg.Int32()
    }

    if (msg.camera_timestamp !== undefined) {
      resolved.camera_timestamp = std_msgs.msg.Time.Resolve(msg.camera_timestamp)
    }
    else {
      resolved.camera_timestamp = new std_msgs.msg.Time()
    }

    if (msg.camera_pose !== undefined) {
      resolved.camera_pose = geometry_msgs.msg.Pose.Resolve(msg.camera_pose)
    }
    else {
      resolved.camera_pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = pose;
