package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbmi implements zzbic {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbll f10957a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzbzs f10958b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzbmj f10959c;

    public zzbmi(zzbmj zzbmjVar, zzbll zzbllVar, zzbzs zzbzsVar) {
        this.f10959c = zzbmjVar;
        this.f10957a = zzbllVar;
        this.f10958b = zzbzsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbic
    public final void a(JSONObject jSONObject) {
        zzbll zzbllVar;
        try {
            try {
                this.f10958b.c(this.f10959c.f10960a.a(jSONObject));
                zzbllVar = this.f10957a;
            } catch (IllegalStateException unused) {
                zzbllVar = this.f10957a;
            } catch (JSONException e10) {
                this.f10958b.d(e10);
                zzbllVar = this.f10957a;
            }
            zzbllVar.g();
        } catch (Throwable th) {
            this.f10957a.g();
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbic
    public final void o(String str) {
        zzbll zzbllVar;
        try {
            if (str == null) {
                this.f10958b.d(new zzblu());
            } else {
                this.f10958b.d(new zzblu(str));
            }
            zzbllVar = this.f10957a;
        } catch (IllegalStateException unused) {
            zzbllVar = this.f10957a;
        } catch (Throwable th) {
            this.f10957a.g();
            throw th;
        }
        zzbllVar.g();
    }
}
