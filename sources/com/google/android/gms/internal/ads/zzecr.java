package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzecr extends zzbun implements zzcvy {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @GuardedBy("this")
    private zzbuo f16265o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @GuardedBy("this")
    private zzcvx f16266p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @GuardedBy("this")
    private zzdcn f16267q;

    @Override // com.google.android.gms.internal.ads.zzcvy
    public final synchronized void A9(zzcvx zzcvxVar) {
        this.f16266p = zzcvxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbuo
    public final synchronized void B0(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzbuo zzbuoVar = this.f16265o;
        if (zzbuoVar != null) {
            zzbuoVar.B0(iObjectWrapper);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuo
    public final synchronized void K2(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzbuo zzbuoVar = this.f16265o;
        if (zzbuoVar != null) {
            ((zzefm) zzbuoVar).f16540r.a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuo
    public final synchronized void Q3(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzbuo zzbuoVar = this.f16265o;
        if (zzbuoVar != null) {
            ((zzefm) zzbuoVar).f16539q.b();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuo
    public final synchronized void T0(IObjectWrapper iObjectWrapper, int i10) throws RemoteException {
        zzcvx zzcvxVar = this.f16266p;
        if (zzcvxVar != null) {
            zzcvxVar.h(i10);
        }
    }

    public final synchronized void Ta(zzbuo zzbuoVar) {
        this.f16265o = zzbuoVar;
    }

    public final synchronized void Ua(zzdcn zzdcnVar) {
        this.f16267q = zzdcnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbuo
    public final synchronized void e0(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzbuo zzbuoVar = this.f16265o;
        if (zzbuoVar != null) {
            ((zzefm) zzbuoVar).f16537o.zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuo
    public final synchronized void ja(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzdcn zzdcnVar = this.f16267q;
        if (zzdcnVar != null) {
            Executor executor = ((zzefl) zzdcnVar).f16536d.f16542b;
            final zzeyo zzeyoVar = ((zzefl) zzdcnVar).f16533a;
            final zzeyc zzeycVar = ((zzefl) zzdcnVar).f16534b;
            final zzeaw zzeawVar = ((zzefl) zzdcnVar).f16535c;
            final zzefl zzeflVar = (zzefl) zzdcnVar;
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzefk
                @Override // java.lang.Runnable
                public final void run() {
                    zzefl zzeflVar2 = zzeflVar;
                    zzeyo zzeyoVar2 = zzeyoVar;
                    zzeyc zzeycVar2 = zzeycVar;
                    zzeaw zzeawVar2 = zzeawVar;
                    zzefn zzefnVar = zzeflVar2.f16536d;
                    zzefn.e(zzeyoVar2, zzeycVar2, zzeawVar2);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuo
    public final synchronized void q4(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzbuo zzbuoVar = this.f16265o;
        if (zzbuoVar != null) {
            ((zzefm) zzbuoVar).f16539q.zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuo
    public final synchronized void t7(IObjectWrapper iObjectWrapper, zzbup zzbupVar) throws RemoteException {
        zzbuo zzbuoVar = this.f16265o;
        if (zzbuoVar != null) {
            ((zzefm) zzbuoVar).f16540r.I(zzbupVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuo
    public final synchronized void u0(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzcvx zzcvxVar = this.f16266p;
        if (zzcvxVar != null) {
            zzcvxVar.d();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuo
    public final synchronized void z2(IObjectWrapper iObjectWrapper, int i10) throws RemoteException {
        zzdcn zzdcnVar = this.f16267q;
        if (zzdcnVar != null) {
            zzbza.g("Fail to initialize adapter ".concat(String.valueOf(((zzefl) zzdcnVar).f16535c.f16126a)));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuo
    public final synchronized void zze(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzbuo zzbuoVar = this.f16265o;
        if (zzbuoVar != null) {
            ((zzefm) zzbuoVar).f16538p.w0();
        }
    }
}
