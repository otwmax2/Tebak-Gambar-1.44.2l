package com.tebakgambar.tutorial;

import com.tebakgambar.model.ResultEventClue;
import y2.a;

/* JADX INFO: loaded from: classes2.dex */
public class ClueEventTutorialActivity$$ExtraInjector {
    public static void inject(a.b bVar, ClueEventTutorialActivity clueEventTutorialActivity, Object obj) {
        Object objC = bVar.c(obj, "clueEvent");
        if (objC == null) {
            throw new IllegalStateException("Required extra with key 'clueEvent' for field 'clueEvent' was not found. If this extra is optional add '@Nullable' annotation.");
        }
        clueEventTutorialActivity.clueEvent = (ResultEventClue) objC;
    }
}
