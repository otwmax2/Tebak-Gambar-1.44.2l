package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcnb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f13542a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzbmo f13543b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Executor f13544c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzcng f13545d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzbhp f13546e = new zzcmy(this);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzbhp f13547f = new zzcna(this);

    public zzcnb(String str, zzbmo zzbmoVar, Executor executor) {
        this.f13542a = str;
        this.f13543b = zzbmoVar;
        this.f13544c = executor;
    }

    static /* bridge */ /* synthetic */ boolean g(zzcnb zzcnbVar, Map map) {
        if (map == null) {
            return false;
        }
        String str = (String) map.get("hashCode");
        return !TextUtils.isEmpty(str) && str.equals(zzcnbVar.f13542a);
    }

    public final void c(zzcng zzcngVar) {
        this.f13543b.b("/updateActiveView", this.f13546e);
        this.f13543b.b("/untrackActiveViewUnit", this.f13547f);
        this.f13545d = zzcngVar;
    }

    public final void d(zzcei zzceiVar) {
        zzceiVar.c0("/updateActiveView", this.f13546e);
        zzceiVar.c0("/untrackActiveViewUnit", this.f13547f);
    }

    public final void e() {
        this.f13543b.c("/updateActiveView", this.f13546e);
        this.f13543b.c("/untrackActiveViewUnit", this.f13547f);
    }

    public final void f(zzcei zzceiVar) {
        zzceiVar.e0("/updateActiveView", this.f13546e);
        zzceiVar.e0("/untrackActiveViewUnit", this.f13547f);
    }
}
