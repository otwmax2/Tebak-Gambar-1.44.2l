package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzffz {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final zzffz f18147c = new zzffz();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList f18148a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList f18149b = new ArrayList();

    private zzffz() {
    }

    public static zzffz a() {
        return f18147c;
    }

    public final Collection b() {
        return Collections.unmodifiableCollection(this.f18149b);
    }

    public final Collection c() {
        return Collections.unmodifiableCollection(this.f18148a);
    }

    public final void d(zzffo zzffoVar) {
        this.f18148a.add(zzffoVar);
    }

    public final void e(zzffo zzffoVar) {
        boolean zG = g();
        this.f18148a.remove(zzffoVar);
        this.f18149b.remove(zzffoVar);
        if (!zG || g()) {
            return;
        }
        zzfgf.b().f();
    }

    public final void f(zzffo zzffoVar) {
        boolean zG = g();
        this.f18149b.add(zzffoVar);
        if (zG) {
            return;
        }
        zzfgf.b().e();
    }

    public final boolean g() {
        return this.f18149b.size() > 0;
    }
}
