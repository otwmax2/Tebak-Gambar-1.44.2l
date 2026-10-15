package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;
import android.os.Bundle;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzbaj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f10139a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f10140b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f10141c;

    /* synthetic */ zzbaj(int i10, String str, Object obj, zzbai zzbaiVar) {
        this.f10139a = i10;
        this.f10140b = str;
        this.f10141c = obj;
        com.google.android.gms.ads.internal.client.zzba.a().d(this);
    }

    public static zzbaj f(int i10, String str, float f10) {
        return new zzbag(1, str, Float.valueOf(f10));
    }

    public static zzbaj g(int i10, String str, int i11) {
        return new zzbae(1, str, Integer.valueOf(i11));
    }

    public static zzbaj h(int i10, String str, long j10) {
        return new zzbaf(1, str, Long.valueOf(j10));
    }

    public static zzbaj i(int i10, String str, Boolean bool) {
        return new zzbad(i10, str, bool);
    }

    public static zzbaj j(int i10, String str, String str2) {
        return new zzbah(1, str, str2);
    }

    public static zzbaj k(int i10, String str) {
        zzbaj zzbajVarJ = j(1, "gads:sdk_core_constants:experiment_id", null);
        com.google.android.gms.ads.internal.client.zzba.a().c(zzbajVarJ);
        return zzbajVarJ;
    }

    protected abstract Object a(JSONObject jSONObject);

    public abstract Object b(Bundle bundle);

    protected abstract Object c(SharedPreferences sharedPreferences);

    public abstract void d(SharedPreferences.Editor editor, Object obj);

    public final int e() {
        return this.f10139a;
    }

    public final Object l() {
        return com.google.android.gms.ads.internal.client.zzba.c().b(this);
    }

    public final Object m() {
        return this.f10141c;
    }

    public final String n() {
        return this.f10140b;
    }
}
