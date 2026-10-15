package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.common.util.Predicate;
import com.vungle.mediation.BuildConfig;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzbku implements zzbkm, zzbkk {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzcei f10854o;

    /* JADX WARN: Multi-variable type inference failed */
    public zzbku(Context context, zzbzg zzbzgVar, zzapw zzapwVar, com.google.android.gms.ads.internal.zza zzaVar) throws zzcet {
        com.google.android.gms.ads.internal.zzt.B();
        zzcei zzceiVarA = zzceu.a(context, zzcfx.a(), BuildConfig.FLAVOR, false, false, null, null, zzbzgVar, null, null, null, zzawe.a(), null, null);
        this.f10854o = zzceiVarA;
        ((View) zzceiVarA).setWillNotDraw(true);
    }

    private static final void D(Runnable runnable) {
        com.google.android.gms.ads.internal.client.zzay.b();
        if (zzbyt.A()) {
            runnable.run();
        } else {
            com.google.android.gms.ads.internal.util.zzs.f6190i.post(runnable);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbkm
    public final void I(final String str) {
        D(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbkq
            @Override // java.lang.Runnable
            public final void run() {
                this.f10846o.j(str);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void U0(String str, final zzbhp zzbhpVar) {
        this.f10854o.I0(str, new Predicate() { // from class: com.google.android.gms.internal.ads.zzbko
            @Override // com.google.android.gms.common.util.Predicate
            public final boolean a(Object obj) {
                zzbhp zzbhpVar2 = (zzbhp) obj;
                return (zzbhpVar2 instanceof zzbkt) && ((zzbkt) zzbhpVar2).f10852a.equals(zzbhpVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbkv
    public final /* synthetic */ void Z0(String str, JSONObject jSONObject) {
        zzbkj.d(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbkm
    public final void a() {
        this.f10854o.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzbls
    public final void c1(String str, zzbhp zzbhpVar) {
        this.f10854o.c0(str, new zzbkt(this, zzbhpVar));
    }

    final /* synthetic */ void d(String str) {
        this.f10854o.o(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbkm
    public final void d0(final String str) {
        D(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbks
            @Override // java.lang.Runnable
            public final void run() {
                this.f10850o.p(str);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbkm
    public final boolean g() {
        return this.f10854o.U();
    }

    @Override // com.google.android.gms.internal.ads.zzbkm
    public final zzblt h() {
        return new zzblt(this);
    }

    final /* synthetic */ void j(String str) {
        this.f10854o.loadData(str, "text/html", "UTF-8");
    }

    @Override // com.google.android.gms.internal.ads.zzbkv
    public final /* synthetic */ void n(String str, String str2) {
        zzbkj.c(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbkv
    public final void o(final String str) {
        D(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbkp
            @Override // java.lang.Runnable
            public final void run() {
                this.f10844o.d(str);
            }
        });
    }

    final /* synthetic */ void p(String str) {
        this.f10854o.loadUrl(str);
    }

    final /* synthetic */ void q(String str) {
        this.f10854o.loadData(str, "text/html", "UTF-8");
    }

    @Override // com.google.android.gms.internal.ads.zzbkm
    public final void r0(final zzbla zzblaVar) {
        final byte[] bArr = null;
        this.f10854o.J().A0(new zzcfu(bArr) { // from class: com.google.android.gms.internal.ads.zzbkn
            @Override // com.google.android.gms.internal.ads.zzcfu
            public final void zza() {
                zzbla zzblaVar2 = this.f10842a;
                final zzblr zzblrVar = zzblaVar2.f10862a;
                final zzblq zzblqVar = zzblaVar2.f10863b;
                final zzbkm zzbkmVar = zzblaVar2.f10864c;
                com.google.android.gms.ads.internal.util.zzs.f6190i.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbkz
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzblrVar.i(zzblqVar, zzbkmVar);
                    }
                }, 10000L);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbkm
    public final void t0(String str) {
        final String str2 = String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", str);
        D(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbkr
            @Override // java.lang.Runnable
            public final void run() {
                this.f10848o.q(str2);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbki
    public final /* synthetic */ void v0(String str, Map map) {
        zzbkj.a(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzbki
    public final /* synthetic */ void w(String str, JSONObject jSONObject) {
        zzbkj.b(this, str, jSONObject);
    }
}
