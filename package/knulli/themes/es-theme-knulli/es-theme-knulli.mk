################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on February 21, 2025
ES_THEME_KNULLI_VERSION = 7c22bad19bcb6f25abaab270e0c4629696e0c799
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
