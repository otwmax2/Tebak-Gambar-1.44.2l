package com.tebakgambar.database;

import android.content.Context;
import androidx.room.g0;
import androidx.room.h0;
import n8.e;

/* JADX INFO: loaded from: classes2.dex */
public abstract class StickerPackDatabase extends h0 {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static StickerPackDatabase f26867o;

    public static StickerPackDatabase C(Context context) {
        if (f26867o == null) {
            f26867o = (StickerPackDatabase) g0.a(context, StickerPackDatabase.class, "tgstickerpack-db").c().d();
        }
        return f26867o;
    }

    public abstract e D();
}
