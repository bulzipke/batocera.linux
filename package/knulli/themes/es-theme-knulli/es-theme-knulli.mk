################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on February 22, 2025
ES_THEME_KNULLI_VERSION = a01a2a1c76577ca4f19211c95d971639a6ac4861
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
