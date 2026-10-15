package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class y3 implements c4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzli f24405a;

    y3(zzli zzliVar) {
        this.f24405a = zzliVar;
    }

    @Override // com.google.android.gms.measurement.internal.c4
    public final void a(String str, String str2, Bundle bundle) {
        if (!TextUtils.isEmpty(str)) {
            this.f24405a.B().v(new x3(this, str, "_err", bundle));
            return;
        }
        zzli zzliVar = this.f24405a;
        if (zzliVar.f24849l != null) {
            zzliVar.f24849l.U().m().b("AppId not known when logging event", "_err");
        }
    }
}
