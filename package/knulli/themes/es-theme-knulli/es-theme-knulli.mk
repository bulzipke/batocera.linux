################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on March 08, 2025
ES_THEME_KNULLI_VERSION = fd9017a4b06df39a918a5c30c95a14e1bd9129be
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
