################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on February 28, 2025
ES_THEME_KNULLI_VERSION = eb5e8c92d0081fa2d5a9b9081fcc2d07113591cb
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
