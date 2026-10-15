package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdbw extends zzczy implements zzatf {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @GuardedBy("this")
    private final Map f14330p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Context f14331q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzeyc f14332r;

    public zzdbw(Context context, Set set, zzeyc zzeycVar) {
        super(set);
        this.f14330p = new WeakHashMap(1);
        this.f14331q = context;
        this.f14332r = zzeycVar;
    }

    @Override // com.google.android.gms.internal.ads.zzatf
    public final synchronized void H0(final zzate zzateVar) {
        W0(new zzczx() { // from class: com.google.android.gms.internal.ads.zzdbv
            @Override // com.google.android.gms.internal.ads.zzczx
            public final void a(Object obj) {
                ((zzatf) obj).H0(zzateVar);
            }
        });
    }

    public final synchronized void Y0(View view) {
        zzatg zzatgVar = (zzatg) this.f14330p.get(view);
        if (zzatgVar == null) {
            zzatgVar = new zzatg(this.f14331q, view);
            zzatgVar.c(this);
            this.f14330p.put(view, zzatgVar);
        }
        if (this.f14332r.Y) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10237h1)).booleanValue()) {
                zzatgVar.g(((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10226g1)).longValue());
                return;
            }
        }
        zzatgVar.f();
    }

    public final synchronized void c1(View view) {
        if (this.f14330p.containsKey(view)) {
            ((zzatg) this.f14330p.get(view)).e(this);
            this.f14330p.remove(view);
        }
    }
}
