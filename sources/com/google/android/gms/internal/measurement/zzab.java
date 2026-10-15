package com.google.android.gms.internal.measurement;

import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private zzaa f23258a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zzaa f23259b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List f23260c;

    public zzab() {
        this.f23258a = new zzaa(BuildConfig.FLAVOR, 0L, null);
        this.f23259b = new zzaa(BuildConfig.FLAVOR, 0L, null);
        this.f23260c = new ArrayList();
    }

    public final zzaa a() {
        return this.f23258a;
    }

    public final zzaa b() {
        return this.f23259b;
    }

    public final List c() {
        return this.f23260c;
    }

    public final /* bridge */ /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzab zzabVar = new zzab(this.f23258a.clone());
        Iterator it = this.f23260c.iterator();
        while (it.hasNext()) {
            zzabVar.f23260c.add(((zzaa) it.next()).clone());
        }
        return zzabVar;
    }

    public final void d(zzaa zzaaVar) {
        this.f23258a = zzaaVar;
        this.f23259b = zzaaVar.clone();
        this.f23260c.clear();
    }

    public final void e(String str, long j10, Map map) {
        this.f23260c.add(new zzaa(str, j10, map));
    }

    public final void f(zzaa zzaaVar) {
        this.f23259b = zzaaVar;
    }

    public zzab(zzaa zzaaVar) {
        this.f23258a = zzaaVar;
        this.f23259b = zzaaVar.clone();
        this.f23260c = new ArrayList();
    }
}
