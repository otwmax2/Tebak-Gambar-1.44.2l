package com.tebakgambar.levelselection;

import y2.a;

/* JADX INFO: loaded from: classes2.dex */
public class SliderActivity$$ExtraInjector {
    public static void inject(a.b bVar, SliderActivity sliderActivity, Object obj) {
        Object objC = bVar.c(obj, "levelId");
        if (objC != null) {
            sliderActivity.levelId = ((Integer) objC).intValue();
        }
    }
}
