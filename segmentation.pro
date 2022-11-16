QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
TARGET = segmentation
CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0
#INCLUDEPATH += ../segmentation
SOURCES += \
    ImageSegmentationUI.cpp \
    ImageSegmentor.cpp \
    main.cpp

HEADERS += \
    ImageSegmentationUI.h \
    ImageSegmentor.h

FORMS += \
    ImageSegmentationUI.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RESOURCES += \
    ImageSegmentationUI.qrc

#Linux opencv link
# OpenCv Configuration opencv-4.2.0
linux{
INCLUDEPATH += "/usr/include/opencv4/opencv2"
INCLUDEPATH += "/usr/include/opencv4"

 LIBS += -L~/usr/lib/x86_64-linux-gnu \
    -lopencv_core \
    -lopencv_highgui \
    -lopencv_imgproc \
    -lopencv_imgcodecs \
    -lopencv_features2d \
    -lopencv_calib3d \
    -lopencv_video\
    -lopencv_videoio\
    -lopencv_aruco
}
