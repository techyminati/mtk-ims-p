package com.mediatek.ims.plugin;

import android.content.Context;
import android.os.Handler;
import com.mediatek.ims.ImsCallSessionProxy;
import com.mediatek.ims.ImsService;
import com.mediatek.ims.plugin.impl.ImsCallPluginBase;
import com.mediatek.ims.plugin.impl.ImsSelfActivatorBase;
import com.mediatek.ims.ril.ImsCommandsInterface;
/* loaded from: classes.dex */
public interface ExtensionPluginFactory {
    ImsCallPluginBase makeImsCallPlugin(Context context);

    ImsSelfActivatorBase makeImsSelfActivator(Context context, Handler handler, ImsCallSessionProxy imsCallSessionProxy, ImsCommandsInterface imsCommandsInterface, ImsService imsService, int i);
}
