// Auto-generated. Do not edit!

// (in-package lab1.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class range {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.overall_range_min = null;
      this.overall_range_max = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('overall_range_min')) {
        this.overall_range_min = initObj.overall_range_min
      }
      else {
        this.overall_range_min = new std_msgs.msg.Float64();
      }
      if (initObj.hasOwnProperty('overall_range_max')) {
        this.overall_range_max = initObj.overall_range_max
      }
      else {
        this.overall_range_max = new std_msgs.msg.Float64();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type range
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [overall_range_min]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.overall_range_min, buffer, bufferOffset);
    // Serialize message field [overall_range_max]
    bufferOffset = std_msgs.msg.Float64.serialize(obj.overall_range_max, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type range
    let len;
    let data = new range(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [overall_range_min]
    data.overall_range_min = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    // Deserialize message field [overall_range_max]
    data.overall_range_max = std_msgs.msg.Float64.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lab1/range';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b9a0dadad90f0aa59a1e41e20d3b947a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    std_msgs/Float64 overall_range_min
    std_msgs/Float64 overall_range_max
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: std_msgs/Float64
    float64 data
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new range(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.overall_range_min !== undefined) {
      resolved.overall_range_min = std_msgs.msg.Float64.Resolve(msg.overall_range_min)
    }
    else {
      resolved.overall_range_min = new std_msgs.msg.Float64()
    }

    if (msg.overall_range_max !== undefined) {
      resolved.overall_range_max = std_msgs.msg.Float64.Resolve(msg.overall_range_max)
    }
    else {
      resolved.overall_range_max = new std_msgs.msg.Float64()
    }

    return resolved;
    }
};

module.exports = range;
