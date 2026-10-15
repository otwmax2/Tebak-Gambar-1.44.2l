package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdxz extends zzbtc {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f15909o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzeqv f15910p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzeqt f15911q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzdyh f15912r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zzfuu f15913s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zzdye f15914t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final zzbtz f15915u;

    zzdxz(Context context, zzeqv zzeqvVar, zzeqt zzeqtVar, zzdye zzdyeVar, zzdyh zzdyhVar, zzfuu zzfuuVar, zzbtz zzbtzVar, byte[] bArr) {
        this.f15909o = context;
        this.f15910p = zzeqvVar;
        this.f15911q = zzeqtVar;
        this.f15914t = zzdyeVar;
        this.f15912r = zzdyhVar;
        this.f15913s = zzfuuVar;
        this.f15915u = zzbtzVar;
    }

    private final void Ta(zzfut zzfutVar, zzbtg zzbtgVar) {
        zzfuj.q(zzfuj.m(zzfua.D(zzfutVar), new zzftq() { // from class: com.google.android.gms.internal.ads.zzdxr
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return zzfuj.h(zzezw.a((InputStream) obj));
            }
        }, zzbzn.f11614a), new zzdxy(this, zzbtgVar), zzbzn.f11619f);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00a5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.internal.ads.zzfut Sa(com.google.android.gms.internal.ads.zzbsv r9, int r10) {
        /*
            Method dump skipped, instruction units count: 210
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdxz.Sa(com.google.android.gms.internal.ads.zzbsv, int):com.google.android.gms.internal.ads.zzfut");
    }

    @Override // com.google.android.gms.internal.ads.zzbtd
    public final void X9(zzbsr zzbsrVar, zzbtg zzbtgVar) {
        int callingUid = Binder.getCallingUid();
        zzeqv zzeqvVar = this.f15910p;
        zzeqvVar.a(new zzeqk(zzbsrVar, callingUid));
        final zzeqw zzeqwVarZzb = zzeqvVar.zzb();
        zzfda zzfdaVarB = zzeqwVarZzb.b();
        zzfcf zzfcfVarA = zzfdaVarB.b(zzfcu.GMS_SIGNALS, zzfuj.i()).f(new zzftq() { // from class: com.google.android.gms.internal.ads.zzdxw
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return zzeqwVarZzb.a().a(new JSONObject());
            }
        }).e(new zzfcd() { // from class: com.google.android.gms.internal.ads.zzdxv
            @Override // com.google.android.gms.internal.ads.zzfcd
            public final Object a(Object obj) {
                JSONObject jSONObject = (JSONObject) obj;
                com.google.android.gms.ads.internal.util.zze.k("GMS AdRequest Signals: ");
                com.google.android.gms.ads.internal.util.zze.k(jSONObject.toString(2));
                return jSONObject;
            }
        }).f(new zzftq() { // from class: com.google.android.gms.internal.ads.zzdxu
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return zzfuj.h(new ByteArrayInputStream(((JSONObject) obj).toString().getBytes(StandardCharsets.UTF_8)));
            }
        }).a();
        Ta(zzfcfVarA, zzbtgVar);
        if (((Boolean) zzbck.f10572d.e()).booleanValue()) {
            final zzdyh zzdyhVar = this.f15912r;
            zzdyhVar.getClass();
            zzfcfVarA.f(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdxs
                @Override // java.lang.Runnable
                public final void run() {
                    zzdyhVar.b();
                }
            }, this.f15913s);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbtd
    public final void w2(zzbsv zzbsvVar, zzbtg zzbtgVar) {
        Ta(Sa(zzbsvVar, Binder.getCallingUid()), zzbtgVar);
    }
}
