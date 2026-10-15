package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f24659a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f24660b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f24661c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f24662d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ x f24663e;

    public zzfj(x xVar, String str, long j10) {
        this.f24663e = xVar;
        Preconditions.g(str);
        this.f24659a = str;
        this.f24660b = j10;
    }

    public final long a() {
        if (!this.f24661c) {
            this.f24661c = true;
            this.f24662d = this.f24663e.j().getLong(this.f24659a, this.f24660b);
        }
        return this.f24662d;
    }

    public final void b(long j10) {
        SharedPreferences.Editor editorEdit = this.f24663e.j().edit();
        editorEdit.putLong(this.f24659a, j10);
        editorEdit.apply();
        this.f24662d = j10;
    }
}
