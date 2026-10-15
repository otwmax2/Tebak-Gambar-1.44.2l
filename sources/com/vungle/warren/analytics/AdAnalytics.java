package com.vungle.warren.analytics;

import com.google.gson.o;

/* JADX INFO: loaded from: classes2.dex */
public interface AdAnalytics {
    String[] ping(String[] strArr);

    String[] retryUnsent();

    void ri(o oVar);

    void saveVungleUrls(String[] strArr);
}
