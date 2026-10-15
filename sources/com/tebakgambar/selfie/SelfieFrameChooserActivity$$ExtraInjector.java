package com.tebakgambar.selfie;

import y2.a;

/* JADX INFO: loaded from: classes2.dex */
public class SelfieFrameChooserActivity$$ExtraInjector {
    public static void inject(a.b bVar, SelfieFrameChooserActivity selfieFrameChooserActivity, Object obj) {
        Object objC = bVar.c(obj, "questionGlobalIndex");
        if (objC != null) {
            selfieFrameChooserActivity.questionGlobalIndex = ((Integer) objC).intValue();
        }
    }
}
