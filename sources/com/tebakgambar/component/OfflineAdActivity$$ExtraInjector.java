package com.tebakgambar.component;

import y2.a;

/* JADX INFO: loaded from: classes2.dex */
public class OfflineAdActivity$$ExtraInjector {
    public static void inject(a.b bVar, OfflineAdActivity offlineAdActivity, Object obj) {
        Object objC = bVar.c(obj, "isFromIncreaseDialog");
        if (objC != null) {
            offlineAdActivity.isFromIncreaseDialog = ((Boolean) objC).booleanValue();
        }
    }
}
