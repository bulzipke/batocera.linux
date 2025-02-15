################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on February 15, 2025
ES_THEME_KNULLI_VERSION = 1a26fe86399e4f418a539b0c3b720dda65a24506
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
