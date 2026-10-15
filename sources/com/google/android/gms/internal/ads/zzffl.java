package com.google.android.gms.internal.ads;

import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzffl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzffs f18088a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzffs f18089b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzffp f18090c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzffr f18091d;

    private zzffl(zzffp zzffpVar, zzffr zzffrVar, zzffs zzffsVar, zzffs zzffsVar2, boolean z10) {
        this.f18090c = zzffpVar;
        this.f18091d = zzffrVar;
        this.f18088a = zzffsVar;
        if (zzffsVar2 == null) {
            this.f18089b = zzffs.NONE;
        } else {
            this.f18089b = zzffsVar2;
        }
    }

    public static zzffl a(zzffp zzffpVar, zzffr zzffrVar, zzffs zzffsVar, zzffs zzffsVar2, boolean z10) {
        zzfgr.b(zzffrVar, "ImpressionType is null");
        zzfgr.b(zzffsVar, "Impression owner is null");
        if (zzffsVar == zzffs.NONE) {
            throw new IllegalArgumentException("Impression owner is none");
        }
        if (zzffpVar == zzffp.DEFINED_BY_JAVASCRIPT && zzffsVar == zzffs.NATIVE) {
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
        if (zzffrVar == zzffr.DEFINED_BY_JAVASCRIPT && zzffsVar == zzffs.NATIVE) {
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
        return new zzffl(zzffpVar, zzffrVar, zzffsVar, zzffsVar2, true);
    }

    public final JSONObject b() {
        JSONObject jSONObject = new JSONObject();
        zzfgp.h(jSONObject, "impressionOwner", this.f18088a);
        zzfgp.h(jSONObject, "mediaEventsOwner", this.f18089b);
        zzfgp.h(jSONObject, "creativeType", this.f18090c);
        zzfgp.h(jSONObject, "impressionType", this.f18091d);
        zzfgp.h(jSONObject, "isolateVerificationScripts", Boolean.TRUE);
        return jSONObject;
    }
}
