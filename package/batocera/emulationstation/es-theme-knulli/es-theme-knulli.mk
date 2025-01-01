################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on January 01, 2025
ES_THEME_KNULLI_VERSION = 98948272b0e4a87afef61ac25f2fe887643db3b9
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
