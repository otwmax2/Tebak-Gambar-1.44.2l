package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.ads.query.UpdateClickUrlCallback;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbrv extends zzbrq {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ UpdateClickUrlCallback f11194o;

    @Override // com.google.android.gms.internal.ads.zzbrr
    public final void q3(List list) {
        this.f11194o.b((Uri) list.get(0));
    }

    @Override // com.google.android.gms.internal.ads.zzbrr
    public final void s(String str) {
        this.f11194o.a(str);
    }
}
