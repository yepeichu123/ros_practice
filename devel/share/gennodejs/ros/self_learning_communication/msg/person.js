// Auto-generated. Do not edit!

// (in-package self_learning_communication.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class person {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.age = null;
      this.sex = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('age')) {
        this.age = initObj.age
      }
      else {
        this.age = new std_msgs.msg.Int8();
      }
      if (initObj.hasOwnProperty('sex')) {
        this.sex = initObj.sex
      }
      else {
        this.sex = new std_msgs.msg.Int8();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type person
    // Serialize message field [name]
    bufferOffset = std_msgs.msg.String.serialize(obj.name, buffer, bufferOffset);
    // Serialize message field [age]
    bufferOffset = std_msgs.msg.Int8.serialize(obj.age, buffer, bufferOffset);
    // Serialize message field [sex]
    bufferOffset = std_msgs.msg.Int8.serialize(obj.sex, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type person
    let len;
    let data = new person(null);
    // Deserialize message field [name]
    data.name = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [age]
    data.age = std_msgs.msg.Int8.deserialize(buffer, bufferOffset);
    // Deserialize message field [sex]
    data.sex = std_msgs.msg.Int8.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.name);
    return length + 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'self_learning_communication/person';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '04c7bee12efe24fd3e4de6b8844645fb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String name
    std_msgs/Int8 age
    std_msgs/Int8 sex
    ================================================================================
    MSG: std_msgs/String
    string data
    
    ================================================================================
    MSG: std_msgs/Int8
    int8 data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new person(null);
    if (msg.name !== undefined) {
      resolved.name = std_msgs.msg.String.Resolve(msg.name)
    }
    else {
      resolved.name = new std_msgs.msg.String()
    }

    if (msg.age !== undefined) {
      resolved.age = std_msgs.msg.Int8.Resolve(msg.age)
    }
    else {
      resolved.age = new std_msgs.msg.Int8()
    }

    if (msg.sex !== undefined) {
      resolved.sex = std_msgs.msg.Int8.Resolve(msg.sex)
    }
    else {
      resolved.sex = new std_msgs.msg.Int8()
    }

    return resolved;
    }
};

module.exports = person;
