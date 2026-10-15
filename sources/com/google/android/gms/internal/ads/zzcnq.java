package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcnq implements zzatf {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private zzcei f13598o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Executor f13599p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzcnc f13600q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Clock f13601r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f13602s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f13603t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final zzcnf f13604u = new zzcnf();

    public zzcnq(Executor executor, zzcnc zzcncVar, Clock clock) {
        this.f13599p = executor;
        this.f13600q = zzcncVar;
        this.f13601r = clock;
    }

    private final void f() {
        try {
            final JSONObject jSONObjectC = this.f13600q.c(this.f13604u);
            if (this.f13598o != null) {
                this.f13599p.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcnp
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f13596o.c(jSONObjectC);
                    }
                });
            }
        } catch (JSONException e10) {
            com.google.android.gms.ads.internal.util.zze.l("Failed to call video active view js", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzatf
    public final void H0(zzate zzateVar) {
        zzcnf zzcnfVar = this.f13604u;
        zzcnfVar.f13555a = this.f13603t ? false : zzateVar.f9886j;
        zzcnfVar.f13558d = this.f13601r.b();
        this.f13604u.f13560f = zzateVar;
        if (this.f13602s) {
            f();
        }
    }

    public final void a() {
        this.f13602s = false;
    }

    public final void b() {
        this.f13602s = true;
        f();
    }

    final /* synthetic */ void c(JSONObject jSONObject) {
        this.f13598o.Z0("AFMA_updateActiveView", jSONObject);
    }

    public final void d(boolean z10) {
        this.f13603t = z10;
    }

    public final void e(zzcei zzceiVar) {
        this.f13598o = zzceiVar;
    }
}
