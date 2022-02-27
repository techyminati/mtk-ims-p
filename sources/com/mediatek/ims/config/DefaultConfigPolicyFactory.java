package com.mediatek.ims.config;

import android.os.SystemProperties;
import android.util.Log;
import com.mediatek.ims.config.ImsConfigPolicy;
import com.mediatek.ims.config.op.DefaultConfigPolicy;
import com.mediatek.ims.config.op.Op06ConfigPolicy;
import com.mediatek.ims.config.op.Op08ConfigPolicy;
import com.mediatek.ims.config.op.Op12ConfigPolicy;
import java.util.HashMap;
/* loaded from: classes.dex */
public class DefaultConfigPolicyFactory {
    private static final String TAG = "DefaultCfgPolicyFactory";
    private ImsConfigPolicy mConfigPolicy;
    private HashMap<Integer, ImsConfigPolicy.DefaultConfig> mDefConfigs;

    private DefaultConfigPolicyFactory() {
        this.mDefConfigs = new HashMap<>();
        this.mConfigPolicy = null;
    }

    public static DefaultConfigPolicyFactory getInstance(int phoneId) {
        String optr = SystemProperties.get("persist.vendor.operator.optr");
        int opCode = 0;
        if (optr != null && optr.length() > 2) {
            opCode = Integer.parseInt(optr.substring(2));
        }
        return getInstanceByOpCode(opCode);
    }

    public static DefaultConfigPolicyFactory getInstanceByOpCode(int opCode) {
        return new DefaultConfigPolicyFactory(opCode);
    }

    private DefaultConfigPolicyFactory(int op) {
        this.mDefConfigs = new HashMap<>();
        this.mConfigPolicy = null;
        Log.d(TAG, "Load defalut policy operator: " + op);
        if (op == 6) {
            this.mConfigPolicy = new Op06ConfigPolicy();
        } else if (op == 8) {
            this.mConfigPolicy = new Op08ConfigPolicy();
        } else if (op != 12) {
            this.mConfigPolicy = new DefaultConfigPolicy();
        } else {
            this.mConfigPolicy = new Op12ConfigPolicy();
        }
    }

    public HashMap load() {
        if (this.mConfigPolicy != null) {
            this.mDefConfigs = this.mConfigPolicy.fetchDefaultValues();
        }
        return this.mDefConfigs;
    }

    public void clear() {
        this.mDefConfigs = null;
    }

    public boolean hasDefaultValue(int configId) {
        return this.mDefConfigs.containsKey(Integer.valueOf(configId));
    }
}
