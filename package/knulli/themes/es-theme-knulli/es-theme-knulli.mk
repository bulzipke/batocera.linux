################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on March 08, 2025
ES_THEME_KNULLI_VERSION = 9ad8eed4a59639088ac1daf86801a0a5a827981e
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
