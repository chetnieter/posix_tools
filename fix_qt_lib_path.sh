#!/bin/bash

install_name_tool -change @rpath/QtWidgets.framework/Versions/5/QtWidgets /Users/chet.nieter/repos/fletch/build/install/lib/QtWidgets.framework/Versions/5/QtWidgets /Users/chet.nieter/repos/fletch/build/install/bin/qte-amc

install_name_tool -change @rpath/QtXml.framework/Versions/5/QtXml /Users/chet.nieter/repos/fletch/build/install/lib/QtXml.framework/Versions/5/QtXml /Users/chet.nieter/repos/fletch/build/install/bin/qte-amc

install_name_tool -change @rpath/QtGui.framework/Versions/5/QtGui /Users/chet.nieter/repos/fletch/build/install/lib/QtGui.framework/Versions/5/QtGui /Users/chet.nieter/repos/fletch/build/install/bin/qte-amc

install_name_tool -change @rpath/QtCore.framework/Versions/5/QtCore /Users/chet.nieter/repos/fletch/build/install/lib/QtCore.framework/Versions/5/QtCore /Users/chet.nieter/repos/fletch/build/install/bin/qte-amc
