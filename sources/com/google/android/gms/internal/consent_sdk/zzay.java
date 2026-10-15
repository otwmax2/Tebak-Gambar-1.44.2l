package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.app.Dialog;
import java.util.concurrent.atomic.AtomicReference;
import z4.a;

/* JADX INFO: compiled from: com.google.android.ump:user-messaging-platform@@2.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzay implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Application f21724a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzbi f21725b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzam f21726c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Dialog f21727d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private zzbg f21728e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final AtomicReference<zzax> f21729f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final AtomicReference<a.InterfaceC0308a> f21730g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final AtomicReference<zzaw> f21731h;

    private final void f() {
        Dialog dialog = this.f21727d;
        if (dialog != null) {
            dialog.dismiss();
            this.f21727d = null;
        }
        this.f21725b.a(null);
        zzaw andSet = this.f21731h.getAndSet(null);
        if (andSet != null) {
            andSet.f21721p.f21724a.unregisterActivityLifecycleCallbacks(andSet);
        }
    }

    final zzbg a() {
        return this.f21728e;
    }

    final void b(int i10) {
        f();
        a.InterfaceC0308a andSet = this.f21730g.getAndSet(null);
        if (andSet == null) {
            return;
        }
        this.f21726c.d(3);
        andSet.a(null);
    }

    final void c(zzj zzjVar) {
        f();
        a.InterfaceC0308a andSet = this.f21730g.getAndSet(null);
        if (andSet == null) {
            return;
        }
        andSet.a(zzjVar.a());
    }

    final void d() {
        zzax andSet = this.f21729f.getAndSet(null);
        if (andSet == null) {
            return;
        }
        andSet.a(this);
    }

    final void e(zzj zzjVar) {
        zzax andSet = this.f21729f.getAndSet(null);
        if (andSet == null) {
            return;
        }
        andSet.b(zzjVar.a());
    }
}
