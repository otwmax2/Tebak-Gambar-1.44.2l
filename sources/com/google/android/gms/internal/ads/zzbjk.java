package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbjk implements zzakh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile zzbix f10797a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f10798b;

    public zzbjk(Context context) {
        this.f10798b = context;
    }

    static /* bridge */ /* synthetic */ void c(zzbjk zzbjkVar) {
        if (zzbjkVar.f10797a == null) {
            return;
        }
        zzbjkVar.f10797a.i();
        Binder.flushPendingCommands();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzakh
    public final zzakk a(zzako zzakoVar) throws zzakx {
        Parcelable.Creator<zzbiy> creator = zzbiy.CREATOR;
        Map mapO = zzakoVar.o();
        int size = mapO.size();
        String[] strArr = new String[size];
        String[] strArr2 = new String[size];
        int i10 = 0;
        int i11 = 0;
        for (Map.Entry entry : mapO.entrySet()) {
            strArr[i11] = (String) entry.getKey();
            strArr2[i11] = (String) entry.getValue();
            i11++;
        }
        zzbiy zzbiyVar = new zzbiy(zzakoVar.n(), strArr, strArr2);
        long jB = com.google.android.gms.ads.internal.zzt.b().b();
        try {
            zzbzs zzbzsVar = new zzbzs();
            this.f10797a = new zzbix(this.f10798b, com.google.android.gms.ads.internal.zzt.v().b(), new zzbji(this, zzbzsVar), new zzbjj(this, zzbzsVar));
            this.f10797a.v();
            zzbjg zzbjgVar = new zzbjg(this, zzbiyVar);
            zzfuu zzfuuVar = zzbzn.f11614a;
            zzfut zzfutVarN = zzfuj.n(zzfuj.m(zzbzsVar, zzbjgVar, zzfuuVar), ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10163a4)).intValue(), TimeUnit.MILLISECONDS, zzbzn.f11617d);
            zzfutVarN.f(new zzbjh(this), zzfuuVar);
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) zzfutVarN.get();
            com.google.android.gms.ads.internal.util.zze.k("Http assets remote cache took " + (com.google.android.gms.ads.internal.zzt.b().b() - jB) + "ms");
            zzbja zzbjaVar = (zzbja) new zzbtl(parcelFileDescriptor).V3(zzbja.CREATOR);
            if (zzbjaVar == null) {
                return null;
            }
            if (zzbjaVar.f10783o) {
                throw new zzakx(zzbjaVar.f10784p);
            }
            if (zzbjaVar.f10787s.length != zzbjaVar.f10788t.length) {
                return null;
            }
            HashMap map = new HashMap();
            while (true) {
                String[] strArr3 = zzbjaVar.f10787s;
                if (i10 >= strArr3.length) {
                    return new zzakk(zzbjaVar.f10785q, zzbjaVar.f10786r, map, zzbjaVar.f10789u, zzbjaVar.f10790v);
                }
                map.put(strArr3[i10], zzbjaVar.f10788t[i10]);
                i10++;
            }
        } catch (InterruptedException | ExecutionException unused) {
            com.google.android.gms.ads.internal.util.zze.k("Http assets remote cache took " + (com.google.android.gms.ads.internal.zzt.b().b() - jB) + "ms");
            return null;
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.util.zze.k("Http assets remote cache took " + (com.google.android.gms.ads.internal.zzt.b().b() - jB) + "ms");
            throw th;
        }
    }
}
