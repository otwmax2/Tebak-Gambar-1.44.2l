package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f24650a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f24651b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f24652c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f24653d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ x f24654e;

    public zzfh(x xVar, String str, boolean z10) {
        this.f24654e = xVar;
        Preconditions.g(str);
        this.f24650a = str;
        this.f24651b = z10;
    }

    public final void a(boolean z10) {
        SharedPreferences.Editor editorEdit = this.f24654e.j().edit();
        editorEdit.putBoolean(this.f24650a, z10);
        editorEdit.apply();
        this.f24653d = z10;
    }

    public final boolean b() {
        if (!this.f24652c) {
            this.f24652c = true;
            this.f24653d = this.f24654e.j().getBoolean(this.f24650a, this.f24651b);
        }
        return this.f24653d;
    }
}
