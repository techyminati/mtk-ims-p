package com.mediatek.ims.config;

import com.mediatek.ims.config.ImsConfigContract;
import com.mediatek.ims.config.ImsConfigSettings;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class ImsConfigPolicy {
    private HashMap<Integer, DefaultConfig> mDefConfigs = new HashMap<>();
    private String mTag;

    public abstract boolean onSetDefaultValue(int i, DefaultConfig defaultConfig);

    public ImsConfigPolicy(String tag) {
        this.mTag = "ImsConfigPolicy";
        this.mTag = tag;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HashMap<Integer, DefaultConfig> fetchDefaultValues() {
        Map<Integer, ImsConfigSettings.Setting> settings = ImsConfigSettings.getConfigSettings();
        for (Integer configId : settings.keySet()) {
            DefaultConfig config = new DefaultConfig(configId.intValue());
            boolean handled = onSetDefaultValue(configId.intValue(), config);
            if (handled) {
                if (ImsConfigContract.Validator.isValidUnitId(config.unitId)) {
                    this.mDefConfigs.put(configId, config);
                } else {
                    throw new IllegalArgumentException("Invalid unitId " + config.unitId + " on config " + configId);
                }
            }
        }
        return this.mDefConfigs;
    }

    /* loaded from: classes.dex */
    public static class DefaultConfig {
        int configId;
        public String defVal;
        public int unitId;

        private DefaultConfig() {
            this.configId = 0;
            this.defVal = null;
            this.unitId = -1;
        }

        public DefaultConfig(int _configId) {
            this.configId = 0;
            this.defVal = null;
            this.unitId = -1;
            this.configId = _configId;
        }
    }
}
