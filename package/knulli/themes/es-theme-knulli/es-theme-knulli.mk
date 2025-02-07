################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on February 07, 2025
ES_THEME_KNULLI_VERSION = 9527b3150a813a746d8ecad0329dcd93ad75a4ba
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
