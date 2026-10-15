package com.tebakgambar.selfie;

import androidx.lifecycle.g0;
import com.tebakgambar.model.BaseEvent;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: EditFrameViewModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class g extends g0 {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    BaseEvent f27157r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f27158s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f27159t;

    String j() {
        String str;
        BaseEvent baseEvent = this.f27157r;
        return (baseEvent == null || (str = baseEvent.extra_hashtag) == null) ? BuildConfig.FLAVOR : str;
    }
}
