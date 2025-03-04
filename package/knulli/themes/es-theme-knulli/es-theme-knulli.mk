################################################################################
#
# EmulationStation theme "Knulli"
#
################################################################################
# Version: Commits on March 04, 2025
ES_THEME_KNULLI_VERSION = 86bfaeb2e41ada83f3d24aa30ebf8b5b2a8df203
ES_THEME_KNULLI_SITE = $(call github,symbuzzer,es-theme-knulli,$(ES_THEME_KNULLI_VERSION))

define ES_THEME_KNULLI_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
    cp -r $(@D)/* $(TARGET_DIR)/usr/share/emulationstation/themes/es-theme-knulli
endef

$(eval $(generic-package))
