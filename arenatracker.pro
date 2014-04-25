CONFIG += qt console precompile_header debug
CONFIG -= app_bundle

PRECOMPILED_HEADER = src/local.h

DESTDIR = build
OBJECTS_DIR = tmp
MOC_DIR = tmp
RCC_DIR = tmp

HEADERS = src/local.h \
          src/window_capture.h \
          src/hearthstone.h \
          src/dhasher.h \
          src/scene_manager.h \
          src/tracker.h \
          src/window.h \
          src/core.h

SOURCES = src/main.cpp \
          src/hearthstone.cpp \
          src/dhasher.cpp \
          src/scene_manager.cpp \
          src/tracker.cpp \
          src/window.cpp \
          src/core.cpp

RESOURCES = arenatracker.qrc

mac {
  HEADERS += src/osx_window_capture.h
  SOURCES += src/osx_window_capture.cpp

  LIBS += -framework ApplicationServices
}