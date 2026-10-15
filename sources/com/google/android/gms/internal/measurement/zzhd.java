package com.google.android.gms.internal.measurement;

import android.database.ContentObserver;
import android.os.Handler;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzhd extends ContentObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzhe f23522a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzhd(zzhe zzheVar, Handler handler) {
        super(null);
        this.f23522a = zzheVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z10) {
        this.f23522a.e();
    }
}
