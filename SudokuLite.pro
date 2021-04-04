QT += core gui widgets sql

TEMPLATE = app

CONFIG += c++11

SOURCES += main.cpp \
    mainwindow.cpp \
    data.cpp \
    tableio.cpp \
    timer.cpp \
    changecellcommand.cpp \
    internalsudoku.cpp \
    exactcovermatrix.cpp

RESOURCES += res.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

FORMS += \
    mainwindow.ui

HEADERS += \
    mainwindow.h \
    data.h \
    tableio.h \
    timer.h \
    common.h \
    changecellcommand.h \
    internalsudoku.h \
    exactcovermatrix.h

PRECOMPILED_HEADER = common.h

RC_ICONS = res/sudoku.ico
RC_LANG = 0x0004

VERSION = 0.0.0.1
QMAKE_TARGET_COMPANY = "Harry Chen"
QMAKE_TARGET_PRODUCT = "Sudoku Lite"
QMAKE_TARGET_DESCRIPTION = "A naive sudoku game"
QMAKE_TARGET_COPYRIGHT = "Copyright Harry Chen 2017. All rights Reserved."

TRANSLATIONS += lang/en_US.ts \
                lang/zh_CN.ts
