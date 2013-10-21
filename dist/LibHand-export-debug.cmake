#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "tinyxml" for configuration "Debug"
set_property(TARGET tinyxml APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(tinyxml PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "D:/Users/leon/Desktop/libhand-0.9/hand_cpp/dist/tinyxml.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS tinyxml )
list(APPEND _IMPORT_CHECK_FILES_FOR_tinyxml "D:/Users/leon/Desktop/libhand-0.9/hand_cpp/dist/tinyxml.lib" )

# Import target "dot_sceneloader" for configuration "Debug"
set_property(TARGET dot_sceneloader APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(dot_sceneloader PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "tinyxml"
  IMPORTED_LOCATION_DEBUG "D:/Users/leon/Desktop/libhand-0.9/hand_cpp/dist/dot_sceneloader.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS dot_sceneloader )
list(APPEND _IMPORT_CHECK_FILES_FOR_dot_sceneloader "D:/Users/leon/Desktop/libhand-0.9/hand_cpp/dist/dot_sceneloader.lib" )

# Import target "hand_hog" for configuration "Debug"
set_property(TARGET hand_hog APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(hand_hog PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "hand_utils;opencv_gpu231d;opencv_contrib231d;opencv_legacy231d;opencv_objdetect231d;opencv_calib3d231d;opencv_features2d231d;opencv_video231d;opencv_highgui231d;opencv_ml231d;opencv_imgproc231d;opencv_flann231d;opencv_core231d"
  IMPORTED_LOCATION_DEBUG "D:/Users/leon/Desktop/libhand-0.9/hand_cpp/dist/hand_hog.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS hand_hog )
list(APPEND _IMPORT_CHECK_FILES_FOR_hand_hog "D:/Users/leon/Desktop/libhand-0.9/hand_cpp/dist/hand_hog.lib" )

# Import target "hand_renderer" for configuration "Debug"
set_property(TARGET hand_renderer APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(hand_renderer PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "dot_sceneloader;hand_utils;opencv_gpu231d;opencv_contrib231d;opencv_legacy231d;opencv_objdetect231d;opencv_calib3d231d;opencv_features2d231d;opencv_video231d;opencv_highgui231d;opencv_ml231d;opencv_imgproc231d;opencv_flann231d;opencv_core231d;C:/Program Files (x86)/OGRE/lib/debug/OgreMain_d.lib;C:/Program Files (x86)/OGRE/lib/debug/opt/RenderSystem_GL_d.lib;C:/Program Files (x86)/OGRE/lib/debug/OgreMain_d.lib;C:/Program Files (x86)/OGRE/lib/debug/opt/Plugin_OctreeSceneManager_d.lib"
  IMPORTED_LOCATION_DEBUG "D:/Users/leon/Desktop/libhand-0.9/hand_cpp/dist/hand_renderer.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS hand_renderer )
list(APPEND _IMPORT_CHECK_FILES_FOR_hand_renderer "D:/Users/leon/Desktop/libhand-0.9/hand_cpp/dist/hand_renderer.lib" )

# Import target "hand_utils" for configuration "Debug"
set_property(TARGET hand_utils APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(hand_utils PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_DEBUG "opencv_gpu231d;opencv_contrib231d;opencv_legacy231d;opencv_objdetect231d;opencv_calib3d231d;opencv_features2d231d;opencv_video231d;opencv_highgui231d;opencv_ml231d;opencv_imgproc231d;opencv_flann231d;opencv_core231d"
  IMPORTED_LOCATION_DEBUG "D:/Users/leon/Desktop/libhand-0.9/hand_cpp/dist/hand_utils.lib"
  )

list(APPEND _IMPORT_CHECK_TARGETS hand_utils )
list(APPEND _IMPORT_CHECK_FILES_FOR_hand_utils "D:/Users/leon/Desktop/libhand-0.9/hand_cpp/dist/hand_utils.lib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
