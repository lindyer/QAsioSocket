CONFIG += C++11
#DEFINES += ASIO_STANDALONE

SOURCES += \
    $$PWD/qasiotcpsocket.cpp \
    $$PWD/ioserverthread.cpp \
    $$PWD/qasiotcpserver.cpp \
    $$PWD/qasiotcpsocketparent.cpp \
    $$PWD/qasiotcpserverparent.cpp

HEADERS += \
    $$PWD/qasiotcpsocket.h \
    $$PWD/ioserverthread.h \
    $$PWD/qasiotcpserver.h \
    $$PWD/qasiotcpsocketparent.h \
    $$PWD/qasiotcpserverparent.h \
    $$PWD/qasiosocket.h

INCLUDEPATH += $$PWD
#INCLUDEPATH += $$PWD/include_asio
win32:LIBS += -lws2_32
win32:win32-g++:LIBS += -lMswsock
win32:DEFINES += _WIN32_WINNT=0x0601
win32:win32-g++:DEFINES += __USE_W32_SOCKETS
#win32:win32-g++:DEFINES += D_WIN32_WINNT=0X0601