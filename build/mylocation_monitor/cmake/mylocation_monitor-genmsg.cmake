# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mylocation_monitor: 1 messages, 0 services")

set(MSG_I_FLAGS "-Imylocation_monitor:/home/rcsa-gs/my_ros_cpp_ws/src/mylocation_monitor/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mylocation_monitor_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/rcsa-gs/my_ros_cpp_ws/src/mylocation_monitor/msg/MyLandmarkDistance.msg" NAME_WE)
add_custom_target(_mylocation_monitor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mylocation_monitor" "/home/rcsa-gs/my_ros_cpp_ws/src/mylocation_monitor/msg/MyLandmarkDistance.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mylocation_monitor
  "/home/rcsa-gs/my_ros_cpp_ws/src/mylocation_monitor/msg/MyLandmarkDistance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mylocation_monitor
)

### Generating Services

### Generating Module File
_generate_module_cpp(mylocation_monitor
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mylocation_monitor
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mylocation_monitor_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mylocation_monitor_generate_messages mylocation_monitor_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rcsa-gs/my_ros_cpp_ws/src/mylocation_monitor/msg/MyLandmarkDistance.msg" NAME_WE)
add_dependencies(mylocation_monitor_generate_messages_cpp _mylocation_monitor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mylocation_monitor_gencpp)
add_dependencies(mylocation_monitor_gencpp mylocation_monitor_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mylocation_monitor_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mylocation_monitor
  "/home/rcsa-gs/my_ros_cpp_ws/src/mylocation_monitor/msg/MyLandmarkDistance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mylocation_monitor
)

### Generating Services

### Generating Module File
_generate_module_eus(mylocation_monitor
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mylocation_monitor
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mylocation_monitor_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mylocation_monitor_generate_messages mylocation_monitor_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rcsa-gs/my_ros_cpp_ws/src/mylocation_monitor/msg/MyLandmarkDistance.msg" NAME_WE)
add_dependencies(mylocation_monitor_generate_messages_eus _mylocation_monitor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mylocation_monitor_geneus)
add_dependencies(mylocation_monitor_geneus mylocation_monitor_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mylocation_monitor_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mylocation_monitor
  "/home/rcsa-gs/my_ros_cpp_ws/src/mylocation_monitor/msg/MyLandmarkDistance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mylocation_monitor
)

### Generating Services

### Generating Module File
_generate_module_lisp(mylocation_monitor
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mylocation_monitor
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mylocation_monitor_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mylocation_monitor_generate_messages mylocation_monitor_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rcsa-gs/my_ros_cpp_ws/src/mylocation_monitor/msg/MyLandmarkDistance.msg" NAME_WE)
add_dependencies(mylocation_monitor_generate_messages_lisp _mylocation_monitor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mylocation_monitor_genlisp)
add_dependencies(mylocation_monitor_genlisp mylocation_monitor_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mylocation_monitor_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mylocation_monitor
  "/home/rcsa-gs/my_ros_cpp_ws/src/mylocation_monitor/msg/MyLandmarkDistance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mylocation_monitor
)

### Generating Services

### Generating Module File
_generate_module_nodejs(mylocation_monitor
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mylocation_monitor
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mylocation_monitor_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mylocation_monitor_generate_messages mylocation_monitor_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rcsa-gs/my_ros_cpp_ws/src/mylocation_monitor/msg/MyLandmarkDistance.msg" NAME_WE)
add_dependencies(mylocation_monitor_generate_messages_nodejs _mylocation_monitor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mylocation_monitor_gennodejs)
add_dependencies(mylocation_monitor_gennodejs mylocation_monitor_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mylocation_monitor_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mylocation_monitor
  "/home/rcsa-gs/my_ros_cpp_ws/src/mylocation_monitor/msg/MyLandmarkDistance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mylocation_monitor
)

### Generating Services

### Generating Module File
_generate_module_py(mylocation_monitor
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mylocation_monitor
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mylocation_monitor_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mylocation_monitor_generate_messages mylocation_monitor_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rcsa-gs/my_ros_cpp_ws/src/mylocation_monitor/msg/MyLandmarkDistance.msg" NAME_WE)
add_dependencies(mylocation_monitor_generate_messages_py _mylocation_monitor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mylocation_monitor_genpy)
add_dependencies(mylocation_monitor_genpy mylocation_monitor_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mylocation_monitor_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mylocation_monitor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mylocation_monitor
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mylocation_monitor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mylocation_monitor
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mylocation_monitor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mylocation_monitor
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mylocation_monitor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mylocation_monitor
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mylocation_monitor)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mylocation_monitor\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mylocation_monitor
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
