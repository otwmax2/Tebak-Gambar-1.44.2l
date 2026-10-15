package com.tebakgambar.question;

import y2.a;

/* JADX INFO: loaded from: classes2.dex */
public class RegularQuestionActivity$$ExtraInjector {
    public static void inject(a.b bVar, RegularQuestionActivity regularQuestionActivity, Object obj) {
        Object objC = bVar.c(obj, "questionGlobalIndex");
        if (objC != null) {
            regularQuestionActivity.questionGlobalIndex = ((Integer) objC).intValue();
        }
    }
}
