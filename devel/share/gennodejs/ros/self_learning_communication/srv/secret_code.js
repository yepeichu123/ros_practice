// Auto-generated. Do not edit!

// (in-package self_learning_communication.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class secret_codeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.secret_code_front = null;
    }
    else {
      if (initObj.hasOwnProperty('secret_code_front')) {
        this.secret_code_front = initObj.secret_code_front
      }
      else {
        this.secret_code_front = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type secret_codeRequest
    // Serialize message field [secret_code_front]
    bufferOffset = std_msgs.msg.String.serialize(obj.secret_code_front, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type secret_codeRequest
    let len;
    let data = new secret_codeRequest(null);
    // Deserialize message field [secret_code_front]
    data.secret_code_front = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.secret_code_front);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'self_learning_communication/secret_codeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bc0f51fcb9ed599c4982acdc11a3fd85';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String secret_code_front
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new secret_codeRequest(null);
    if (msg.secret_code_front !== undefined) {
      resolved.secret_code_front = std_msgs.msg.String.Resolve(msg.secret_code_front)
    }
    else {
      resolved.secret_code_front = new std_msgs.msg.String()
    }

    return resolved;
    }
};

class secret_codeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.secret_code_next = null;
    }
    else {
      if (initObj.hasOwnProperty('secret_code_next')) {
        this.secret_code_next = initObj.secret_code_next
      }
      else {
        this.secret_code_next = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type secret_codeResponse
    // Serialize message field [secret_code_next]
    bufferOffset = std_msgs.msg.String.serialize(obj.secret_code_next, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type secret_codeResponse
    let len;
    let data = new secret_codeResponse(null);
    // Deserialize message field [secret_code_next]
    data.secret_code_next = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.secret_code_next);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'self_learning_communication/secret_codeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b35be3a85ffc9ac17a62916db1229bb1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String secret_code_next
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new secret_codeResponse(null);
    if (msg.secret_code_next !== undefined) {
      resolved.secret_code_next = std_msgs.msg.String.Resolve(msg.secret_code_next)
    }
    else {
      resolved.secret_code_next = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = {
  Request: secret_codeRequest,
  Response: secret_codeResponse,
  md5sum() { return '4808b418c9da88e8e5bd0ad4c2770375'; },
  datatype() { return 'self_learning_communication/secret_code'; }
};
