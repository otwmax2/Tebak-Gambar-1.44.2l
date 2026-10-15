package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzakz {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final boolean f9468c = zzala.f9472b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List f9469a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f9470b = false;

    zzakz() {
    }

    public final synchronized void a(String str, long j10) {
        if (this.f9470b) {
            throw new IllegalStateException("Marker added to finished log");
        }
        this.f9469a.add(new zzaky(str, j10, SystemClock.elapsedRealtime()));
    }

    public final synchronized void b(String str) {
        long j10;
        this.f9470b = true;
        if (this.f9469a.size() == 0) {
            j10 = 0;
        } else {
            j10 = ((zzaky) this.f9469a.get(r1.size() - 1)).f9467c - ((zzaky) this.f9469a.get(0)).f9467c;
        }
        if (j10 <= 0) {
            return;
        }
        long j11 = ((zzaky) this.f9469a.get(0)).f9467c;
        zzala.a("(%-4d ms) %s", Long.valueOf(j10), str);
        for (zzaky zzakyVar : this.f9469a) {
            long j12 = zzakyVar.f9467c;
            zzala.a("(+%-4d) [%2d] %s", Long.valueOf(j12 - j11), Long.valueOf(zzakyVar.f9466b), zzakyVar.f9465a);
            j11 = j12;
        }
    }

    protected final void finalize() throws Throwable {
        if (this.f9470b) {
            return;
        }
        b("Request on the loose");
        zzala.b("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
    }
}
