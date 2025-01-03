################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on January 03, 2025
ES_THEME_KNULLI_VERSION = 7d97e8d391c3c43b255670ba03e14abb70c01eb9
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
