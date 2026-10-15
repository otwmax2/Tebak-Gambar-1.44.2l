package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.OnAdInspectorClosedListener;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.initialization.AdapterStatus;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbjl;
import com.google.android.gms.internal.ads.zzbjt;
import com.google.android.gms.internal.ads.zzbju;
import com.google.android.gms.internal.ads.zzbmy;
import com.google.android.gms.internal.ads.zzbza;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzej {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @GuardedBy("InternalMobileAds.class")
    private static zzej f5867i;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @GuardedBy("settingManagerLock")
    private zzco f5873f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f5868a = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("stateLock")
    private boolean f5870c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @GuardedBy("stateLock")
    private boolean f5871d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object f5872e = new Object();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private OnAdInspectorClosedListener f5874g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private RequestConfiguration f5875h = new RequestConfiguration.Builder().a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("stateLock")
    private final ArrayList f5869b = new ArrayList();

    private zzej() {
    }

    @GuardedBy("settingManagerLock")
    private final void a(RequestConfiguration requestConfiguration) {
        try {
            this.f5873f.R7(new zzff(requestConfiguration));
        } catch (RemoteException e10) {
            zzbza.e("Unable to set request configuration parcel.", e10);
        }
    }

    public static zzej e() {
        zzej zzejVar;
        synchronized (zzej.class) {
            if (f5867i == null) {
                f5867i = new zzej();
            }
            zzejVar = f5867i;
        }
        return zzejVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static InitializationStatus n(List list) {
        HashMap map = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzbjl zzbjlVar = (zzbjl) it.next();
            map.put(zzbjlVar.f10799o, new zzbjt(zzbjlVar.f10800p ? AdapterStatus.State.READY : AdapterStatus.State.NOT_READY, zzbjlVar.f10802r, zzbjlVar.f10801q));
        }
        return new zzbju(map);
    }

    @GuardedBy("settingManagerLock")
    private final void o(Context context, @Nullable String str) {
        try {
            zzbmy.a().b(context, null);
            this.f5873f.i();
            this.f5873f.x6(null, ObjectWrapper.Q4(null));
        } catch (RemoteException e10) {
            zzbza.h("MobileAdsSettingManager initialization failed", e10);
        }
    }

    @GuardedBy("settingManagerLock")
    private final void p(Context context) {
        if (this.f5873f == null) {
            this.f5873f = (zzco) new k(zzay.a(), context).d(context, false);
        }
    }

    public final RequestConfiguration b() {
        return this.f5875h;
    }

    public final InitializationStatus d() {
        InitializationStatus initializationStatusN;
        synchronized (this.f5872e) {
            Preconditions.o(this.f5873f != null, "MobileAds.initialize() must be called prior to getting initialization status.");
            try {
                initializationStatusN = n(this.f5873f.e());
            } catch (RemoteException unused) {
                zzbza.d("Unable to get Initialization status.");
                return new InitializationStatus() { // from class: com.google.android.gms.ads.internal.client.zzeb
                };
            }
        }
        return initializationStatusN;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0077 A[Catch: all -> 0x005e, TryCatch #2 {, blocks: (B:24:0x0030, B:26:0x0050, B:34:0x0066, B:36:0x0077, B:38:0x0089, B:45:0x00cc, B:39:0x0099, B:41:0x00a7, B:43:0x00b9, B:44:0x00c4, B:28:0x0058, B:33:0x0061), top: B:54:0x0030, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0099 A[Catch: all -> 0x005e, TryCatch #2 {, blocks: (B:24:0x0030, B:26:0x0050, B:34:0x0066, B:36:0x0077, B:38:0x0089, B:45:0x00cc, B:39:0x0099, B:41:0x00a7, B:43:0x00b9, B:44:0x00c4, B:28:0x0058, B:33:0x0061), top: B:54:0x0030, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00c4 A[Catch: all -> 0x005e, TryCatch #2 {, blocks: (B:24:0x0030, B:26:0x0050, B:34:0x0066, B:36:0x0077, B:38:0x0089, B:45:0x00cc, B:39:0x0099, B:41:0x00a7, B:43:0x00b9, B:44:0x00c4, B:28:0x0058, B:33:0x0061), top: B:54:0x0030, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void j(final android.content.Context r3, @javax.annotation.Nullable java.lang.String r4, @javax.annotation.Nullable com.google.android.gms.ads.initialization.OnInitializationCompleteListener r5) {
        /*
            Method dump skipped, instruction units count: 219
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.client.zzej.j(android.content.Context, java.lang.String, com.google.android.gms.ads.initialization.OnInitializationCompleteListener):void");
    }

    final /* synthetic */ void k(Context context, String str) {
        synchronized (this.f5872e) {
            o(context, null);
        }
    }

    final /* synthetic */ void l(Context context, String str) {
        synchronized (this.f5872e) {
            o(context, null);
        }
    }

    public final void m(String str) {
        synchronized (this.f5872e) {
            Preconditions.o(this.f5873f != null, "MobileAds.initialize() must be called prior to setting the plugin.");
            try {
                this.f5873f.z0(str);
            } catch (RemoteException e10) {
                zzbza.e("Unable to set plugin.", e10);
            }
        }
    }
}
