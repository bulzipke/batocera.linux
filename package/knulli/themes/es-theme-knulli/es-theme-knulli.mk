################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on February 16, 2025
ES_THEME_KNULLI_VERSION = ffe723fd493c0adece99b109fd134485c8c5daaf
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
