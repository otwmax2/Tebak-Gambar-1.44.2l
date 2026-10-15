package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    final String f24664a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f24665b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f24666c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f24667d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ x f24668e;

    /* synthetic */ zzfl(x xVar, String str, long j10, zzfk zzfkVar) {
        this.f24668e = xVar;
        Preconditions.g("health_monitor");
        Preconditions.a(j10 > 0);
        this.f24664a = "health_monitor:start";
        this.f24665b = "health_monitor:count";
        this.f24666c = "health_monitor:value";
        this.f24667d = j10;
    }

    private final long c() {
        return this.f24668e.j().getLong(this.f24664a, 0L);
    }

    private final void d() {
        this.f24668e.c();
        long jA = this.f24668e.f24394a.x().a();
        SharedPreferences.Editor editorEdit = this.f24668e.j().edit();
        editorEdit.remove(this.f24665b);
        editorEdit.remove(this.f24666c);
        editorEdit.putLong(this.f24664a, jA);
        editorEdit.apply();
    }

    public final Pair a() {
        long jAbs;
        this.f24668e.c();
        this.f24668e.c();
        long jC = c();
        if (jC == 0) {
            d();
            jAbs = 0;
        } else {
            jAbs = Math.abs(jC - this.f24668e.f24394a.x().a());
        }
        long j10 = this.f24667d;
        if (jAbs < j10) {
            return null;
        }
        if (jAbs > j10 + j10) {
            d();
            return null;
        }
        String string = this.f24668e.j().getString(this.f24666c, null);
        long j11 = this.f24668e.j().getLong(this.f24665b, 0L);
        d();
        return (string == null || j11 <= 0) ? x.f24357x : new Pair(string, Long.valueOf(j11));
    }

    public final void b(String str, long j10) {
        this.f24668e.c();
        if (c() == 0) {
            d();
        }
        if (str == null) {
            str = BuildConfig.FLAVOR;
        }
        long j11 = this.f24668e.j().getLong(this.f24665b, 0L);
        if (j11 <= 0) {
            SharedPreferences.Editor editorEdit = this.f24668e.j().edit();
            editorEdit.putString(this.f24666c, str);
            editorEdit.putLong(this.f24665b, 1L);
            editorEdit.apply();
            return;
        }
        long jNextLong = this.f24668e.f24394a.L().p().nextLong();
        long j12 = j11 + 1;
        long j13 = Long.MAX_VALUE / j12;
        SharedPreferences.Editor editorEdit2 = this.f24668e.j().edit();
        if ((jNextLong & Long.MAX_VALUE) < j13) {
            editorEdit2.putString(this.f24666c, str);
        }
        editorEdit2.putLong(this.f24665b, j12);
        editorEdit2.apply();
    }
}
