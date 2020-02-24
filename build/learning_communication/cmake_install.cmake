# Install script for directory: /home/xiaoc/xiaoc/code/ros_practice/src/learning_communication

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/xiaoc/xiaoc/code/ros_practice/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/learning_communication/msg" TYPE FILE FILES "/home/xiaoc/xiaoc/code/ros_practice/src/learning_communication/msg/Person.msg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/learning_communication/srv" TYPE FILE FILES "/home/xiaoc/xiaoc/code/ros_practice/src/learning_communication/srv/AddTwoInts.srv")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/learning_communication/action" TYPE FILE FILES "/home/xiaoc/xiaoc/code/ros_practice/src/learning_communication/action/DoDishes.action")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/learning_communication/msg" TYPE FILE FILES
    "/home/xiaoc/xiaoc/code/ros_practice/devel/share/learning_communication/msg/DoDishesAction.msg"
    "/home/xiaoc/xiaoc/code/ros_practice/devel/share/learning_communication/msg/DoDishesActionGoal.msg"
    "/home/xiaoc/xiaoc/code/ros_practice/devel/share/learning_communication/msg/DoDishesActionResult.msg"
    "/home/xiaoc/xiaoc/code/ros_practice/devel/share/learning_communication/msg/DoDishesActionFeedback.msg"
    "/home/xiaoc/xiaoc/code/ros_practice/devel/share/learning_communication/msg/DoDishesGoal.msg"
    "/home/xiaoc/xiaoc/code/ros_practice/devel/share/learning_communication/msg/DoDishesResult.msg"
    "/home/xiaoc/xiaoc/code/ros_practice/devel/share/learning_communication/msg/DoDishesFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/learning_communication/cmake" TYPE FILE FILES "/home/xiaoc/xiaoc/code/ros_practice/build/learning_communication/catkin_generated/installspace/learning_communication-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/xiaoc/xiaoc/code/ros_practice/devel/include/learning_communication")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/xiaoc/xiaoc/code/ros_practice/devel/share/roseus/ros/learning_communication")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/xiaoc/xiaoc/code/ros_practice/devel/share/common-lisp/ros/learning_communication")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/xiaoc/xiaoc/code/ros_practice/devel/share/gennodejs/ros/learning_communication")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/xiaoc/xiaoc/code/ros_practice/devel/lib/python2.7/dist-packages/learning_communication")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/xiaoc/xiaoc/code/ros_practice/devel/lib/python2.7/dist-packages/learning_communication")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/xiaoc/xiaoc/code/ros_practice/build/learning_communication/catkin_generated/installspace/learning_communication.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/learning_communication/cmake" TYPE FILE FILES "/home/xiaoc/xiaoc/code/ros_practice/build/learning_communication/catkin_generated/installspace/learning_communication-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/learning_communication/cmake" TYPE FILE FILES
    "/home/xiaoc/xiaoc/code/ros_practice/build/learning_communication/catkin_generated/installspace/learning_communicationConfig.cmake"
    "/home/xiaoc/xiaoc/code/ros_practice/build/learning_communication/catkin_generated/installspace/learning_communicationConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/learning_communication" TYPE FILE FILES "/home/xiaoc/xiaoc/code/ros_practice/src/learning_communication/package.xml")
endif()

