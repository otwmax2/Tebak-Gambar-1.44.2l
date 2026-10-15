package com.tebakgambar.levelselection;

import com.tebakgambar.model.BaseEvent;
import y2.a;

/* JADX INFO: loaded from: classes2.dex */
public class LevelSelectionActivity$$ExtraInjector {
    public static void inject(a.b bVar, LevelSelectionActivity levelSelectionActivity, Object obj) {
        Object objC = bVar.c(obj, "failedLevel");
        if (objC != null) {
            levelSelectionActivity.failedLevel = ((Integer) objC).intValue();
        }
        Object objC2 = bVar.c(obj, "eventId");
        if (objC2 != null) {
            levelSelectionActivity.eventId = ((Integer) objC2).intValue();
        }
        Object objC3 = bVar.c(obj, "homeEvent");
        if (objC3 != null) {
            levelSelectionActivity.homeEvent = (BaseEvent) objC3;
        }
        Object objC4 = bVar.c(obj, "isLevelNotEligible");
        if (objC4 != null) {
            levelSelectionActivity.isLevelNotEligible = ((Boolean) objC4).booleanValue();
        }
    }
}
