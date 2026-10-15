package com.google.android.gms.internal.ads;

import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfgv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private JSONObject f18195a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzfhe f18196b;

    public zzfgv(zzfhe zzfheVar) {
        this.f18196b = zzfheVar;
    }

    public final JSONObject a() {
        return this.f18195a;
    }

    public final void b() {
        this.f18196b.b(new zzfhf(this, null));
    }

    public final void c(JSONObject jSONObject, HashSet hashSet, long j10) {
        this.f18196b.b(new zzfhg(this, hashSet, jSONObject, j10, null));
    }

    public final void d(JSONObject jSONObject, HashSet hashSet, long j10) {
        this.f18196b.b(new zzfhh(this, hashSet, jSONObject, j10, null));
    }

    public final void e(JSONObject jSONObject) {
        this.f18195a = jSONObject;
    }
}
