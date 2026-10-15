package com.tebakgambar.tutorial;

import android.app.Application;
import androidx.lifecycle.t;
import com.tebakgambar.model.ResultEventClue;

/* JADX INFO: compiled from: ClueEventTutorialViewModel.java */
/* JADX INFO: loaded from: classes2.dex */
public class d extends androidx.lifecycle.a {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    ResultEventClue f27246s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    t<Boolean> f27247t;

    public d(Application application) {
        super(application);
        this.f27247t = new t<>();
    }

    void k(ResultEventClue resultEventClue) {
        this.f27246s = resultEventClue;
        this.f27247t.n(Boolean.valueOf(resultEventClue.isAdBannerAvailable()));
    }
}
