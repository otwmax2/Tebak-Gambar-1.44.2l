package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.common.util.Clock;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdhm implements View.OnClickListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzdlf f14757o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Clock f14758p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private zzbfr f14759q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private zzbhp f14760r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    String f14761s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    Long f14762t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    WeakReference f14763u;

    public zzdhm(zzdlf zzdlfVar, Clock clock) {
        this.f14757o = zzdlfVar;
        this.f14758p = clock;
    }

    private final void e() {
        View view;
        this.f14761s = null;
        this.f14762t = null;
        WeakReference weakReference = this.f14763u;
        if (weakReference == null || (view = (View) weakReference.get()) == null) {
            return;
        }
        view.setClickable(false);
        view.setOnClickListener(null);
        this.f14763u = null;
    }

    public final zzbfr a() {
        return this.f14759q;
    }

    public final void b() {
        if (this.f14759q == null || this.f14762t == null) {
            return;
        }
        e();
        try {
            this.f14759q.b();
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    public final void d(final zzbfr zzbfrVar) {
        this.f14759q = zzbfrVar;
        zzbhp zzbhpVar = this.f14760r;
        if (zzbhpVar != null) {
            this.f14757o.k("/unconfirmedClick", zzbhpVar);
        }
        zzbhp zzbhpVar2 = new zzbhp() { // from class: com.google.android.gms.internal.ads.zzdhl
            @Override // com.google.android.gms.internal.ads.zzbhp
            public final void a(Object obj, Map map) {
                zzdhm zzdhmVar = this.f14755a;
                zzbfr zzbfrVar2 = zzbfrVar;
                try {
                    zzdhmVar.f14762t = Long.valueOf(Long.parseLong((String) map.get("timestamp")));
                } catch (NumberFormatException unused) {
                    zzbza.d("Failed to call parse unconfirmedClickTimestamp.");
                }
                zzdhmVar.f14761s = (String) map.get("id");
                String str = (String) map.get("asset_id");
                if (zzbfrVar2 == null) {
                    zzbza.b("Received unconfirmed click but UnconfirmedClickListener is null.");
                    return;
                }
                try {
                    zzbfrVar2.I(str);
                } catch (RemoteException e10) {
                    zzbza.i("#007 Could not call remote method.", e10);
                }
            }
        };
        this.f14760r = zzbhpVar2;
        this.f14757o.i("/unconfirmedClick", zzbhpVar2);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        WeakReference weakReference = this.f14763u;
        if (weakReference == null || weakReference.get() != view) {
            return;
        }
        if (this.f14761s != null && this.f14762t != null) {
            HashMap map = new HashMap();
            map.put("id", this.f14761s);
            map.put(SDKConstants.PARAM_A2U_TIME_INTERVAL, String.valueOf(this.f14758p.a() - this.f14762t.longValue()));
            map.put("messageType", "onePointFiveClick");
            this.f14757o.g("sendMessageToNativeJs", map);
        }
        e();
    }
}
