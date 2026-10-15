package com.tebakgambar.howtoplay;

import y2.a;

/* JADX INFO: loaded from: classes2.dex */
public class HowToPlayActivity$$ExtraInjector {
    public static void inject(a.b bVar, HowToPlayActivity howToPlayActivity, Object obj) {
        Object objC = bVar.c(obj, "jumpToQuiz");
        if (objC != null) {
            howToPlayActivity.jumpToQuiz = ((Boolean) objC).booleanValue();
        }
    }
}
