package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class n1 implements c4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzin f24227a;

    n1(zzin zzinVar) {
        this.f24227a = zzinVar;
    }

    @Override // com.google.android.gms.measurement.internal.c4
    public final void a(String str, String str2, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            this.f24227a.n("auto", "_err", bundle);
        } else {
            this.f24227a.p("auto", "_err", bundle, str);
        }
    }
}
