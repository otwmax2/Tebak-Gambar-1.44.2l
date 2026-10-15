package com.google.android.gms.internal.ads;

import java.util.HashSet;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzfhc extends zzfhd {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final HashSet f18212c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final JSONObject f18213d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected final long f18214e;

    public zzfhc(zzfgv zzfgvVar, HashSet hashSet, JSONObject jSONObject, long j10, byte[] bArr) {
        super(zzfgvVar, null);
        this.f18212c = new HashSet(hashSet);
        this.f18213d = jSONObject;
        this.f18214e = j10;
    }
}
