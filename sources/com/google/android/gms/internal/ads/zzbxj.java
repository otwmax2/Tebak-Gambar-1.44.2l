package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbxj implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f11489a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzbxk f11490b;

    public zzbxj(zzbxk zzbxkVar, String str) {
        this.f11490b = zzbxkVar;
        this.f11489a = str;
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        synchronized (this.f11490b) {
            for (zzbxi zzbxiVar : this.f11490b.f11492b) {
                zzbxiVar.f11487a.b(zzbxiVar.f11488b, sharedPreferences, this.f11489a, str);
            }
        }
    }
}
