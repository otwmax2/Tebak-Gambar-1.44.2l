package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.wrappers.Wrappers;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.ParametersAreNonnullByDefault;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzbyj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f11540a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.util.zzj f11541b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzbyn f11542c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f11543d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f11544e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private zzbzg f11545f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f11546g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private zzbaz f11547h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private Boolean f11548i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final AtomicInteger f11549j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzbyi f11550k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final Object f11551l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private zzfut f11552m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final AtomicBoolean f11553n;

    public zzbyj() {
        com.google.android.gms.ads.internal.util.zzj zzjVar = new com.google.android.gms.ads.internal.util.zzj();
        this.f11541b = zzjVar;
        this.f11542c = new zzbyn(com.google.android.gms.ads.internal.client.zzay.d(), zzjVar);
        this.f11543d = false;
        this.f11547h = null;
        this.f11548i = null;
        this.f11549j = new AtomicInteger(0);
        this.f11550k = new zzbyi(null);
        this.f11551l = new Object();
        this.f11553n = new AtomicBoolean();
    }

    public final int a() {
        return this.f11549j.get();
    }

    public final Context c() {
        return this.f11544e;
    }

    public final Resources d() {
        if (this.f11545f.f11608r) {
            return this.f11544e.getResources();
        }
        try {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10245h9)).booleanValue()) {
                return zzbze.a(this.f11544e).getResources();
            }
            zzbze.a(this.f11544e).getResources();
            return null;
        } catch (zzbzd e10) {
            zzbza.h("Cannot load resource from dynamite apk or local jar", e10);
            return null;
        }
    }

    public final zzbaz f() {
        zzbaz zzbazVar;
        synchronized (this.f11540a) {
            zzbazVar = this.f11547h;
        }
        return zzbazVar;
    }

    public final zzbyn g() {
        return this.f11542c;
    }

    public final com.google.android.gms.ads.internal.util.zzg h() {
        com.google.android.gms.ads.internal.util.zzj zzjVar;
        synchronized (this.f11540a) {
            zzjVar = this.f11541b;
        }
        return zzjVar;
    }

    public final zzfut j() {
        if (this.f11544e != null) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10326p2)).booleanValue()) {
                synchronized (this.f11551l) {
                    zzfut zzfutVar = this.f11552m;
                    if (zzfutVar != null) {
                        return zzfutVar;
                    }
                    zzfut zzfutVarE = zzbzn.f11614a.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzbye
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            return this.f11534a.n();
                        }
                    });
                    this.f11552m = zzfutVarE;
                    return zzfutVarE;
                }
            }
        }
        return zzfuj.h(new ArrayList());
    }

    public final Boolean k() {
        Boolean bool;
        synchronized (this.f11540a) {
            bool = this.f11548i;
        }
        return bool;
    }

    public final String m() {
        return this.f11546g;
    }

    final /* synthetic */ ArrayList n() throws Exception {
        Context contextA = zzbub.a(this.f11544e);
        ArrayList arrayList = new ArrayList();
        try {
            PackageInfo packageInfoF = Wrappers.a(contextA).f(contextA.getApplicationInfo().packageName, 4096);
            if (packageInfoF.requestedPermissions != null && packageInfoF.requestedPermissionsFlags != null) {
                int i10 = 0;
                while (true) {
                    String[] strArr = packageInfoF.requestedPermissions;
                    if (i10 >= strArr.length) {
                        break;
                    }
                    if ((packageInfoF.requestedPermissionsFlags[i10] & 2) != 0) {
                        arrayList.add(strArr[i10]);
                    }
                    i10++;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return arrayList;
    }

    public final void p() {
        this.f11550k.a();
    }

    public final void q() {
        this.f11549j.decrementAndGet();
    }

    public final void r() {
        this.f11549j.incrementAndGet();
    }

    @TargetApi(23)
    public final void s(Context context, zzbzg zzbzgVar) {
        zzbaz zzbazVar;
        synchronized (this.f11540a) {
            if (!this.f11543d) {
                this.f11544e = context.getApplicationContext();
                this.f11545f = zzbzgVar;
                com.google.android.gms.ads.internal.zzt.d().c(this.f11542c);
                this.f11541b.H0(this.f11544e);
                zzbsf.d(this.f11544e, this.f11545f);
                com.google.android.gms.ads.internal.zzt.g();
                if (((Boolean) zzbce.f10519c.e()).booleanValue()) {
                    zzbazVar = new zzbaz();
                } else {
                    com.google.android.gms.ads.internal.util.zze.k("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
                    zzbazVar = null;
                }
                this.f11547h = zzbazVar;
                if (zzbazVar != null) {
                    zzbzq.a(new zzbyf(this).b(), "AppState.registerCsiReporter");
                }
                if (PlatformVersion.j()) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.L7)).booleanValue()) {
                        ((ConnectivityManager) context.getSystemService("connectivity")).registerDefaultNetworkCallback(new zzbyg(this));
                    }
                }
                this.f11543d = true;
                j();
            }
        }
        com.google.android.gms.ads.internal.zzt.r().B(context, zzbzgVar.f11605o);
    }

    public final void t(Throwable th, String str) {
        zzbsf.d(this.f11544e, this.f11545f).b(th, str, ((Double) zzbct.f10601g.e()).floatValue());
    }

    public final void u(Throwable th, String str) {
        zzbsf.d(this.f11544e, this.f11545f).a(th, str);
    }

    public final void v(Boolean bool) {
        synchronized (this.f11540a) {
            this.f11548i = bool;
        }
    }

    public final void w(String str) {
        this.f11546g = str;
    }

    public final boolean x(Context context) {
        if (PlatformVersion.j()) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.L7)).booleanValue()) {
                return this.f11553n.get();
            }
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }
}
