package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzay {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Uri f10112a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f10116e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final zzfqk f10118g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Deprecated
    public final List f10119h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object f10120i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f10113b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zzas f10114c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final zzai f10115d = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f10117f = null;

    /* synthetic */ zzay(Uri uri, String str, zzas zzasVar, zzai zzaiVar, List list, String str2, zzfqk zzfqkVar, Object obj, zzax zzaxVar) {
        this.f10112a = uri;
        this.f10116e = list;
        this.f10118g = zzfqkVar;
        zzfqh zzfqhVarO = zzfqk.o();
        if (zzfqkVar.size() > 0) {
            throw null;
        }
        this.f10119h = zzfqhVarO.j();
        this.f10120i = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzay)) {
            return false;
        }
        zzay zzayVar = (zzay) obj;
        return this.f10112a.equals(zzayVar.f10112a) && zzew.u(null, null) && zzew.u(null, null) && zzew.u(null, null) && this.f10116e.equals(zzayVar.f10116e) && zzew.u(null, null) && this.f10118g.equals(zzayVar.f10118g) && zzew.u(null, null);
    }

    public final int hashCode() {
        return ((((this.f10112a.hashCode() * 923521) + this.f10116e.hashCode()) * 961) + this.f10118g.hashCode()) * 31;
    }
}
