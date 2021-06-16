# Install script for directory: /home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RELEASE")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/stage/worlds" TYPE FILE FILES
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/amcl-sonar.cfg"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/autolab.cfg"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/camera.cfg"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/everything.cfg"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/lsp_test.cfg"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/mbicp.cfg"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/nd.cfg"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/roomba.cfg"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/simple.cfg"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/test.cfg"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/uoa_robotics_lab.cfg"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/vfh.cfg"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/wavefront-remote.cfg"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/wavefront.cfg"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/wifi.cfg"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/SFU.world"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/autolab.world"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/camera.world"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/circuit.world"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/everything.world"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/fasr.world"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/fasr2.world"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/fasr_plan.world"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/large.world"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/lsp_test.world"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/mbicp.world"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/pioneer_flocking.world"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/pioneer_follow.world"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/pioneer_walle.world"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/roomba.world"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/sensor_noise_demo.world"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/sensor_noise_module_demo.world"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/simple.world"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/uoa_robotics_lab.world"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/wifi.world"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/beacons.inc"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/chatterbox.inc"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/hokuyo.inc"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/irobot.inc"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/map.inc"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/objects.inc"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/pantilt.inc"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/pioneer.inc"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/sick.inc"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/ubot.inc"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/uoa_robotics_lab_models.inc"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/walle.inc"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/cfggen.sh"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/test.sh"
    "/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/worlds/worldgen.sh"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/build/worlds/benchmark/cmake_install.cmake")
  include("/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/build/worlds/bitmaps/cmake_install.cmake")
  include("/home/caopan/bz_robot/ros_ws/ws_stage/src/Stage/build/worlds/wifi/cmake_install.cmake")

endif()

