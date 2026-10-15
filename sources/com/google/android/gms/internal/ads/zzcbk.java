package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.google.android.gms.internal.ads.zzfkr;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcbk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f11741a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f11742b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzbzg f11743c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzbbg f11744d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzbbj f11745e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.util.zzbf f11746f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final long[] f11747g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final String[] f11748h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f11749i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f11750j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f11751k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f11752l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f11753m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private zzcap f11754n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f11755o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f11756p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f11757q;

    public zzcbk(Context context, zzbzg zzbzgVar, String str, zzbbj zzbbjVar, zzbbg zzbbgVar) {
        com.google.android.gms.ads.internal.util.zzbd zzbdVar = new com.google.android.gms.ads.internal.util.zzbd();
        zzbdVar.a("min_1", Double.MIN_VALUE, 1.0d);
        zzbdVar.a("1_5", 1.0d, 5.0d);
        zzbdVar.a("5_10", 5.0d, 10.0d);
        zzbdVar.a("10_20", 10.0d, 20.0d);
        zzbdVar.a("20_30", 20.0d, 30.0d);
        zzbdVar.a("30_max", 30.0d, Double.MAX_VALUE);
        this.f11746f = zzbdVar.b();
        this.f11749i = false;
        this.f11750j = false;
        this.f11751k = false;
        this.f11752l = false;
        this.f11757q = -1L;
        this.f11741a = context;
        this.f11743c = zzbzgVar;
        this.f11742b = str;
        this.f11745e = zzbbjVar;
        this.f11744d = zzbbgVar;
        String str2 = (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10422y);
        if (str2 == null) {
            this.f11748h = new String[0];
            this.f11747g = new long[0];
            return;
        }
        String[] strArrSplit = TextUtils.split(str2, ",");
        int length = strArrSplit.length;
        this.f11748h = new String[length];
        this.f11747g = new long[length];
        for (int i10 = 0; i10 < strArrSplit.length; i10++) {
            try {
                this.f11747g[i10] = Long.parseLong(strArrSplit[i10]);
            } catch (NumberFormatException e10) {
                zzbza.h("Unable to parse frame hash target time number.", e10);
                this.f11747g[i10] = -1;
            }
        }
    }

    public final void a(zzcap zzcapVar) {
        zzbbb.a(this.f11745e, this.f11744d, "vpc2");
        this.f11749i = true;
        this.f11745e.d("vpn", zzcapVar.p());
        this.f11754n = zzcapVar;
    }

    public final void b() {
        if (!this.f11749i || this.f11750j) {
            return;
        }
        zzbbb.a(this.f11745e, this.f11744d, "vfr2");
        this.f11750j = true;
    }

    public final void c() {
        this.f11753m = true;
        if (!this.f11750j || this.f11751k) {
            return;
        }
        zzbbb.a(this.f11745e, this.f11744d, "vfp2");
        this.f11751k = true;
    }

    public final void d() {
        if (!((Boolean) zzbcz.f10614a.e()).booleanValue() || this.f11755o) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("type", "native-player-metrics");
        bundle.putString("request", this.f11742b);
        bundle.putString("player", this.f11754n.p());
        for (com.google.android.gms.ads.internal.util.zzbc zzbcVar : this.f11746f.a()) {
            String strValueOf = String.valueOf(zzbcVar.f6107a);
            bundle.putString("fps_c_".concat(strValueOf), Integer.toString(zzbcVar.f6111e));
            String strValueOf2 = String.valueOf(zzbcVar.f6107a);
            bundle.putString("fps_p_".concat(strValueOf2), Double.toString(zzbcVar.f6110d));
        }
        int i10 = 0;
        while (true) {
            long[] jArr = this.f11747g;
            if (i10 >= jArr.length) {
                com.google.android.gms.ads.internal.zzt.r();
                final Context context = this.f11741a;
                final String str = this.f11743c.f11605o;
                com.google.android.gms.ads.internal.zzt.r();
                bundle.putString(DeviceRequestsHelper.DEVICE_INFO_DEVICE, com.google.android.gms.ads.internal.util.zzs.O());
                bundle.putString("eids", TextUtils.join(",", zzbar.a()));
                com.google.android.gms.ads.internal.client.zzay.b();
                zzbyt.C(context, str, "gmob-apps", bundle, true, new zzbys() { // from class: com.google.android.gms.ads.internal.util.zzk
                    @Override // com.google.android.gms.internal.ads.zzbys
                    public final boolean o(String str2) {
                        Context context2 = context;
                        String str3 = str;
                        zzfkr zzfkrVar = zzs.f6190i;
                        com.google.android.gms.ads.internal.zzt.r();
                        zzs.h(context2, str3, str2);
                        return true;
                    }
                });
                this.f11755o = true;
                return;
            }
            String str2 = this.f11748h[i10];
            if (str2 != null) {
                bundle.putString("fh_".concat(Long.valueOf(jArr[i10]).toString()), str2);
            }
            i10++;
        }
    }

    public final void e() {
        this.f11753m = false;
    }

    public final void f(zzcap zzcapVar) {
        if (this.f11751k && !this.f11752l) {
            if (com.google.android.gms.ads.internal.util.zze.m() && !this.f11752l) {
                com.google.android.gms.ads.internal.util.zze.k("VideoMetricsMixin first frame");
            }
            zzbbb.a(this.f11745e, this.f11744d, "vff2");
            this.f11752l = true;
        }
        long jC = com.google.android.gms.ads.internal.zzt.b().c();
        if (this.f11753m && this.f11756p && this.f11757q != -1) {
            double nanos = TimeUnit.SECONDS.toNanos(1L);
            long j10 = jC - this.f11757q;
            com.google.android.gms.ads.internal.util.zzbf zzbfVar = this.f11746f;
            double d10 = j10;
            Double.isNaN(nanos);
            Double.isNaN(d10);
            zzbfVar.b(nanos / d10);
        }
        this.f11756p = this.f11753m;
        this.f11757q = jC;
        long jLongValue = ((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10433z)).longValue();
        long jG = zzcapVar.g();
        int i10 = 0;
        while (true) {
            String[] strArr = this.f11748h;
            if (i10 >= strArr.length) {
                return;
            }
            if (strArr[i10] == null && jLongValue > Math.abs(jG - this.f11747g[i10])) {
                String[] strArr2 = this.f11748h;
                int i11 = 8;
                Bitmap bitmap = zzcapVar.getBitmap(8, 8);
                long j11 = 63;
                long j12 = 0;
                int i12 = 0;
                while (i12 < i11) {
                    int i13 = 0;
                    while (i13 < i11) {
                        int pixel = bitmap.getPixel(i13, i12);
                        j12 |= ((Color.blue(pixel) + Color.red(pixel)) + Color.green(pixel) > 128 ? 1L : 0L) << ((int) j11);
                        j11--;
                        i13++;
                        i11 = 8;
                    }
                    i12++;
                    i11 = 8;
                }
                strArr2[i10] = String.format("%016X", Long.valueOf(j12));
                return;
            }
            i10++;
        }
    }
}
