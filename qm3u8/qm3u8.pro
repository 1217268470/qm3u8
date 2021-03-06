QT       += core gui
QT       += network
QT       += webenginewidgets
QT       += sql
QT       += multimedia
QT       += multimediawidgets

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11
#CONFIG += console

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    browser.cpp \
    browserwindow.cpp \
    downloadmanagerwidget.cpp \
    downloadwidget.cpp \
    dto/EXTINF.cpp \
    localplayer.cpp \
    main.cpp \
    mainwindow.cpp \
    mqwebengineurlrequestinterceptor.cpp \
    runnable/downloadtsrunnable.cpp \
    runnable/sig.cpp \
    runnable/slo.cpp \
    tabwidget.cpp \
    webcookie.cpp \
    webpage.cpp \
    webpopupwindow.cpp \
    webview.cpp

HEADERS += \
    browser.h \
    browserwindow.h \
    downloadmanagerwidget.h \
    downloadwidget.h \
    dto/EXTINF.h \
    localplayer.h \
    mainwindow.h \
    mqwebengineurlrequestinterceptor.h \
    runnable/downloadtsrunnable.h \
    runnable/sig.h \
    runnable/slo.h \
    tabwidget.h \
    webcookie.h \
    webpage.h \
    webpopupwindow.h \
    webview.h

FORMS += \
    certificateerrordialog.ui \
    downloadmanagerwidget.ui \
    downloadwidget.ui \
    mainwindow.ui \
    passworddialog.ui

TRANSLATIONS += \
    qm3u8_zh_CN.ts

# Edit below for custom library location
#LIBS       += -L/usr/local/lib -lVLCQtCore -lVLCQtWidgets
#INCLUDEPATH += /usr/local/include

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    icons/AppLogoColor.png \
    icons/addtab.png \
    icons/closetab.png \
    icons/defaulticon.png \
    icons/dialog-error.png \
    icons/edit-clear.png \
    icons/favicon.png \
    icons/go-bottom.png \
    icons/go-next.png \
    icons/go-previous.png \
    icons/history.png \
    icons/image.png \
    icons/image2.png \
    icons/model.png \
    icons/ninja.png \
    icons/process-stop.png \
    icons/small-favicon.png \
    icons/text-html.png \
    icons/view-refresh.png \
    info/info.txt

RESOURCES += \
    icons/icons.qrc
