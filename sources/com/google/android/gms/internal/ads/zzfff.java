package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfff {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f18077a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f18078b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzbzf f18079c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzfep f18080d;

    zzfff(Context context, Executor executor, zzbzf zzbzfVar, zzfep zzfepVar) {
        this.f18077a = context;
        this.f18078b = executor;
        this.f18079c = zzbzfVar;
        this.f18080d = zzfepVar;
    }

    final /* synthetic */ void a(String str) {
        this.f18079c.o(str);
    }

    final /* synthetic */ void b(String str, zzfen zzfenVar) {
        zzfec zzfecVarA = zzfeb.a(this.f18077a, 14);
        zzfecVarA.f();
        zzfecVarA.y0(this.f18079c.o(str));
        if (zzfenVar == null) {
            this.f18080d.b(zzfecVarA.j());
        } else {
            zzfenVar.a(zzfecVarA);
            zzfenVar.g();
        }
    }

    public final void c(final String str, final zzfen zzfenVar) {
        if (zzfep.a() && ((Boolean) zzbcd.f10515d.e()).booleanValue()) {
            this.f18078b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzffe
                @Override // java.lang.Runnable
                public final void run() {
                    this.f18074o.b(str, zzfenVar);
                }
            });
        } else {
            this.f18078b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzffd
                @Override // java.lang.Runnable
                public final void run() {
                    this.f18072o.a(str);
                }
            });
        }
    }

    public final void d(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            c((String) it.next(), null);
        }
    }
}
