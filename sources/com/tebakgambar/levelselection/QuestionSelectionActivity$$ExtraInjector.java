package com.tebakgambar.levelselection;

import y2.a;

/* JADX INFO: loaded from: classes2.dex */
public class QuestionSelectionActivity$$ExtraInjector {
    public static void inject(a.b bVar, QuestionSelectionActivity questionSelectionActivity, Object obj) {
        Object objC = bVar.c(obj, "level");
        if (objC == null) {
            throw new IllegalStateException("Required extra with key 'level' for field 'level' was not found. If this extra is optional add '@Nullable' annotation.");
        }
        questionSelectionActivity.level = ((Integer) objC).intValue();
        Object objC2 = bVar.c(obj, "isQuestionNotEligible");
        if (objC2 != null) {
            questionSelectionActivity.isQuestionNotEligible = ((Boolean) objC2).booleanValue();
        }
    }
}
