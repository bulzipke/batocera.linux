################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on February 22, 2025
ES_THEME_KNULLI_VERSION = 48e47a0c4c5ac1f8e7437378dad42de298332929
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
