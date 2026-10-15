package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import com.facebook.internal.NativeProtocol;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbtr {
    private int A;
    private final String B;
    private boolean C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f11297a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f11298b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f11299c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f11300d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f11301e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f11302f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f11303g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f11304h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f11305i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f11306j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f11307k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f11308l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private double f11309m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f11310n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f11311o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private String f11312p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final boolean f11313q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final boolean f11314r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final String f11315s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final boolean f11316t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final boolean f11317u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final boolean f11318v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final String f11319w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final String f11320x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float f11321y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f11322z;

    /* JADX WARN: Removed duplicated region for block: B:12:0x0061  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public zzbtr(android.content.Context r7) {
        /*
            Method dump skipped, instruction units count: 207
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbtr.<init>(android.content.Context):void");
    }

    private static ResolveInfo b(PackageManager packageManager, String str) {
        try {
            return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzt.q().u(th, "DeviceInfo.getResolveInfo");
            return null;
        }
    }

    private final void c(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService("audio");
        if (audioManager != null) {
            try {
                this.f11297a = audioManager.getMode();
                this.f11298b = audioManager.isMusicActive();
                this.f11299c = audioManager.isSpeakerphoneOn();
                this.f11300d = audioManager.getStreamVolume(3);
                this.f11301e = audioManager.getRingerMode();
                this.f11302f = audioManager.getStreamVolume(2);
                return;
            } catch (Throwable th) {
                com.google.android.gms.ads.internal.zzt.q().u(th, "DeviceInfo.gatherAudioInfo");
            }
        }
        this.f11297a = -2;
        this.f11298b = false;
        this.f11299c = false;
        this.f11300d = 0;
        this.f11301e = 2;
        this.f11302f = 0;
    }

    @SuppressLint({"UnprotectedReceiver"})
    private final void d(Context context) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
        Intent intentRegisterReceiver = (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10311n9)).booleanValue() || Build.VERSION.SDK_INT < 33) ? context.registerReceiver(null, intentFilter) : context.registerReceiver(null, intentFilter, 4);
        if (intentRegisterReceiver == null) {
            this.f11309m = -1.0d;
            this.f11310n = false;
        } else {
            int intExtra = intentRegisterReceiver.getIntExtra("status", -1);
            this.f11309m = intentRegisterReceiver.getIntExtra("level", -1) / intentRegisterReceiver.getIntExtra("scale", -1);
            this.f11310n = intExtra == 2 || intExtra == 5;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void e(android.content.Context r6) {
        /*
            r5 = this;
            java.lang.String r0 = "phone"
            java.lang.Object r0 = r6.getSystemService(r0)
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0
            java.lang.String r1 = "connectivity"
            java.lang.Object r1 = r6.getSystemService(r1)
            android.net.ConnectivityManager r1 = (android.net.ConnectivityManager) r1
            java.lang.String r2 = r0.getNetworkOperator()
            r5.f11303g = r2
            boolean r2 = com.google.android.gms.common.util.PlatformVersion.m()
            r3 = 0
            if (r2 == 0) goto L31
            com.google.android.gms.internal.ads.zzbaj r2 = com.google.android.gms.internal.ads.zzbar.N7
            com.google.android.gms.internal.ads.zzbap r4 = com.google.android.gms.ads.internal.client.zzba.c()
            java.lang.Object r2 = r4.b(r2)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto L31
            r2 = 0
            goto L35
        L31:
            int r2 = r0.getNetworkType()
        L35:
            r5.f11305i = r2
            int r0 = r0.getPhoneType()
            r5.f11306j = r0
            r0 = -2
            r5.f11304h = r0
            r5.f11307k = r3
            r0 = -1
            r5.f11308l = r0
            com.google.android.gms.ads.internal.zzt.r()
            java.lang.String r2 = "android.permission.ACCESS_NETWORK_STATE"
            boolean r6 = com.google.android.gms.ads.internal.util.zzs.V(r6, r2)
            if (r6 == 0) goto L6f
            android.net.NetworkInfo r6 = r1.getActiveNetworkInfo()
            if (r6 == 0) goto L67
            int r0 = r6.getType()
            r5.f11304h = r0
            android.net.NetworkInfo$DetailedState r6 = r6.getDetailedState()
            int r6 = r6.ordinal()
            r5.f11308l = r6
            goto L69
        L67:
            r5.f11304h = r0
        L69:
            boolean r6 = r1.isActiveNetworkMetered()
            r5.f11307k = r6
        L6f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbtr.e(android.content.Context):void");
    }

    public final zzbts a() {
        return new zzbts(this.f11297a, this.f11313q, this.f11314r, this.f11303g, this.f11315s, this.f11316t, this.f11317u, this.f11318v, this.f11298b, this.f11299c, this.f11319w, this.f11320x, this.B, this.f11300d, this.f11304h, this.f11305i, this.f11306j, this.f11301e, this.f11302f, this.f11321y, this.f11322z, this.A, this.f11309m, this.f11310n, this.f11307k, this.f11308l, this.f11311o, this.C, this.f11312p);
    }

    public zzbtr(Context context, zzbts zzbtsVar) {
        zzbar.c(context);
        c(context);
        e(context);
        d(context);
        this.f11311o = Build.FINGERPRINT;
        this.f11312p = Build.DEVICE;
        this.C = zzbbs.g(context);
        this.f11313q = zzbtsVar.f11323a;
        this.f11314r = zzbtsVar.f11324b;
        this.f11315s = zzbtsVar.f11326d;
        this.f11316t = zzbtsVar.f11327e;
        this.f11317u = zzbtsVar.f11328f;
        this.f11318v = zzbtsVar.f11329g;
        this.f11319w = zzbtsVar.f11330h;
        this.f11320x = zzbtsVar.f11331i;
        this.B = zzbtsVar.f11332j;
        this.f11321y = zzbtsVar.f11335m;
        this.f11322z = zzbtsVar.f11336n;
        this.A = zzbtsVar.f11337o;
    }
}
