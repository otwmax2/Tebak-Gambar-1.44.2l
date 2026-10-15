package com.google.android.gms.internal.ads;

import android.content.DialogInterface;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbpw implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzbpx f11110o;

    zzbpw(zzbpx zzbpxVar) {
        this.f11110o = zzbpxVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i10) {
        this.f11110o.c("Operation denied by user.");
    }
}
