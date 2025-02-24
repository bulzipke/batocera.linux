################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on February 24, 2025
ES_THEME_KNULLI_VERSION = bd8025bec26a5252f8ce92a5d3bf6f4728c5973a
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
