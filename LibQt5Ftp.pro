#-------------------------------------------------
#
# Project created by QtCreator 2023-10-24T14:23:04
#
#-------------------------------------------------

QT       += widgets network

QT       -= gui

TARGET = Qt5Ftp
TEMPLATE = lib

DEFINES += LIBQT5FTP_LIBRARY

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    qftp.cpp \
    qurlinfo.cpp

HEADERS += \
    qftp.h \
    qurlinfo.h

linux-g++ {
    message("qt5 FTP LIB")
    INSTALLPATH = ../install_pc_qt5/lib
    INSTALLPATH_INCLUDE = ../install_pc_qt5/include/Qt5Ftp

    target.path = $$INSTALLPATH
    headers_lib.files = $$HEADERS
    headers_lib.path = $$INSTALLPATH_INCLUDE

    INSTALLS += headers_lib
    INSTALLS += target
}

linux-oe-g++ {
    message("RK3588-Qt5Ftp")
    INSTALLPATH = /opt/DataSync_RK3588/lib
    INSTALLPATH_INCLUDE = /opt/DataSync_RK3588/include/Qt5Ftp

    target.path = $$INSTALLPATH
    headers_lib.files = $$HEADERS
    headers_lib.path = $$INSTALLPATH_INCLUDE

    INSTALLS += headers_lib
    INSTALLS += target
}


