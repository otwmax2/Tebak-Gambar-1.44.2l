package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import java.util.concurrent.Future;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzawa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("lock")
    private zzavp f10059a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("lock")
    private boolean f10060b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f10061c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f10062d = new Object();

    zzawa(Context context) {
        this.f10061c = context;
    }

    static /* bridge */ /* synthetic */ void e(zzawa zzawaVar) {
        synchronized (zzawaVar.f10062d) {
            zzavp zzavpVar = zzawaVar.f10059a;
            if (zzavpVar == null) {
                return;
            }
            zzavpVar.i();
            zzawaVar.f10059a = null;
            Binder.flushPendingCommands();
        }
    }

    final Future c(zzavq zzavqVar) {
        zzavu zzavuVar = new zzavu(this);
        zzavy zzavyVar = new zzavy(this, zzavqVar, zzavuVar);
        zzavz zzavzVar = new zzavz(this, zzavuVar);
        synchronized (this.f10062d) {
            zzavp zzavpVar = new zzavp(this.f10061c, com.google.android.gms.ads.internal.zzt.v().b(), zzavyVar, zzavzVar);
            this.f10059a = zzavpVar;
            zzavpVar.v();
        }
        return zzavuVar;
    }
}
