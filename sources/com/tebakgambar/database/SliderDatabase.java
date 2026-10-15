package com.tebakgambar.database;

import androidx.room.g0;
import androidx.room.h0;
import com.tebakgambar.TGApplication;
import n8.c;

/* JADX INFO: loaded from: classes2.dex */
public abstract class SliderDatabase extends h0 {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static SliderDatabase f26864o;

    public static SliderDatabase C() {
        if (f26864o == null) {
            f26864o = (SliderDatabase) g0.a(TGApplication.d(), SliderDatabase.class, "tgslider-db").d();
        }
        return f26864o;
    }

    public abstract c D();
}
