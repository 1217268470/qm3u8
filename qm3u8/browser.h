#ifndef BROWSER_H
#define BROWSER_H

#include <QObject>
#include<QWebEngineView>
#include<QWebEngineSettings>
#include<QWebEngineProfile>
#include<QDebug>
#include<mqwebengineurlrequestinterceptor.h>

#include<QMediaPlayer>
#include<QVideoWidget>
#include<QVBoxLayout>

#include "downloadmanagerwidget.h"

#include <QVector>
#include <QWebEngineProfile>

class BrowserWindow;


class Browser
{
public:
    Browser();
    void show();
    void show2();
    QVector<BrowserWindow*> windows() { return m_windows; }

    BrowserWindow *createWindow(bool offTheRecord = false);
    BrowserWindow *createDevToolsWindow();

    DownloadManagerWidget &downloadManagerWidget() { return m_downloadManagerWidget; }

private:
    QVector<BrowserWindow*> m_windows;
    DownloadManagerWidget m_downloadManagerWidget;
    QScopedPointer<QWebEngineProfile> m_otrProfile;
    MQWebEngineUrlRequestInterceptor   *m_requestInterceptor;

};
#endif // BROWSER_H
