package com.tebakgambar.levelselection;

import y2.a;

/* JADX INFO: loaded from: classes2.dex */
public class LevelLoadingActivity$$ExtraInjector {
    public static void inject(a.b bVar, LevelLoadingActivity levelLoadingActivity, Object obj) {
        Object objC = bVar.c(obj, "level");
        if (objC == null) {
            throw new IllegalStateException("Required extra with key 'level' for field 'level' was not found. If this extra is optional add '@Nullable' annotation.");
        }
        levelLoadingActivity.level = ((Integer) objC).intValue();
    }
}
