package com.mediatek.common.amsplus;
/* loaded from: classes.dex */
public interface IAmsPlusProcessRecord {
    int getAdj();

    String getPackageName();

    long getPause3DUsage();

    long getPauseAppMemUsage();

    int getPid();

    boolean isLowMemory();

    int setKilledLTK(boolean z);
}
