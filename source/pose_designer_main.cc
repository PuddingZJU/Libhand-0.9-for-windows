// Copyright (c) 2011, Marin Saric <marin.saric@gmail.com>
// All rights reserved.
//
// This file is a part of LibHand. LibHand is open-source software. You can
// redistribute it and/or modify it under the terms of the LibHand
// license. The LibHand license is the BSD license with an added clause that
// requires academic citation. You should have received a copy of the
// LibHand license (the license.txt file) along with LibHand. If not, see
// <http://www.libhand.org/>

# include <exception>
# include <iostream>

# include "printfstring.h"

# include "pose_designer.h"
# include "OGRE/OgreQuaternion.h"
# include "OGRE/OgreVector3.h"
# include "OGRE/OgreMatrix3.h"

# include "OGRE/OgreRoot.h"
# include "OGRE/OgreRenderSystem.h"
# include "OGRE/OgreRenderWindow.h"
# include "OGRE/OgreSceneManager.h"
# include "OGRE/OgreTextureManager.h"
# include "OGRE/OgreTexture.h"
# include "OGRE/OgreHardwarePixelBuffer.h"

# include "OGRE/OgreEntity.h"
# include "OGRE/OgreBone.h"
# include "OGRE/OgreSkeleton.h"

# include "OgreGLPlugin.h"
# include "OgreOctreePlugin.h"
# include <qapplication.h>
using namespace std;
using namespace libhand;

int main(int argc, char **argv) {
  PoseDesigner pose_designer;
  QApplication a(argc, argv);
  try {
    pose_designer.Setup(argc, argv);
    pose_designer.Run();
  } catch (const std::exception &e) {
    cerr << "Exception: " << e.what() << endl;
  }

  return 0;
}
