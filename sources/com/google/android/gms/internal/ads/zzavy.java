package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.BaseGmsClient;
import java.io.IOException;
import java.util.concurrent.Future;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzavy implements BaseGmsClient.BaseConnectionCallbacks {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzavq f10042o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzbzs f10043p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzawa f10044q;

    zzavy(zzawa zzawaVar, zzavq zzavqVar, zzbzs zzbzsVar) {
        this.f10044q = zzawaVar;
        this.f10042o = zzavqVar;
        this.f10043p = zzbzsVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void P0(int i10) {
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void t1(Bundle bundle) {
        synchronized (this.f10044q.f10062d) {
            zzawa zzawaVar = this.f10044q;
            if (zzawaVar.f10060b) {
                return;
            }
            zzawaVar.f10060b = true;
            final zzavp zzavpVar = this.f10044q.f10059a;
            if (zzavpVar == null) {
                return;
            }
            zzfuu zzfuuVar = zzbzn.f11614a;
            final zzavq zzavqVar = this.f10042o;
            final zzbzs zzbzsVar = this.f10043p;
            final zzfut zzfutVarG = zzfuuVar.g(new Runnable() { // from class: com.google.android.gms.internal.ads.zzavv
                @Override // java.lang.Runnable
                public final void run() {
                    zzavy zzavyVar = this.f10035o;
                    zzavp zzavpVar2 = zzavpVar;
                    zzavq zzavqVar2 = zzavqVar;
                    zzbzs zzbzsVar2 = zzbzsVar;
                    try {
                        zzavs zzavsVarP0 = zzavpVar2.p0();
                        zzavn zzavnVarSa = zzavpVar2.o0() ? zzavsVarP0.Sa(zzavqVar2) : zzavsVarP0.Ra(zzavqVar2);
                        if (!zzavnVarSa.b()) {
                            zzbzsVar2.d(new RuntimeException("No entry contents."));
                            zzawa.e(zzavyVar.f10044q);
                            return;
                        }
                        zzavx zzavxVar = new zzavx(zzavyVar, zzavnVarSa.X3(), 1);
                        int i10 = zzavxVar.read();
                        if (i10 == -1) {
                            throw new IOException("Unable to read from cache.");
                        }
                        zzavxVar.unread(i10);
                        zzbzsVar2.c(zzawc.b(zzavxVar, zzavnVarSa.d(), zzavnVarSa.e(), zzavnVarSa.V3(), zzavnVarSa.Y3()));
                    } catch (RemoteException | IOException e10) {
                        zzbza.e("Unable to obtain a cache service instance.", e10);
                        zzbzsVar2.d(e10);
                        zzawa.e(zzavyVar.f10044q);
                    }
                }
            });
            final zzbzs zzbzsVar2 = this.f10043p;
            zzbzsVar2.f(new Runnable() { // from class: com.google.android.gms.internal.ads.zzavw
                @Override // java.lang.Runnable
                public final void run() {
                    zzbzs zzbzsVar3 = zzbzsVar2;
                    Future future = zzfutVarG;
                    if (zzbzsVar3.isCancelled()) {
                        future.cancel(true);
                    }
                }
            }, zzbzn.f11619f);
        }
    }
}
