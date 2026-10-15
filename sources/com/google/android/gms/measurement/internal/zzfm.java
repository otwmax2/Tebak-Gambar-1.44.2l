package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f24669a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f24670b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f24671c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ x f24672d;

    public zzfm(x xVar, String str, String str2) {
        this.f24672d = xVar;
        Preconditions.g(str);
        this.f24669a = str;
    }

    public final String a() {
        if (!this.f24670b) {
            this.f24670b = true;
            this.f24671c = this.f24672d.j().getString(this.f24669a, null);
        }
        return this.f24671c;
    }

    public final void b(String str) {
        SharedPreferences.Editor editorEdit = this.f24672d.j().edit();
        editorEdit.putString(this.f24669a, str);
        editorEdit.apply();
        this.f24671c = str;
    }
}
