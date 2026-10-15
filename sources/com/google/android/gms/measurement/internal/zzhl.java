package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
@VisibleForTesting
public final class zzhl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Context f24748a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    String f24749b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    String f24750c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    String f24751d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Boolean f24752e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    long f24753f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    com.google.android.gms.internal.measurement.zzcl f24754g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    boolean f24755h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final Long f24756i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    String f24757j;

    @VisibleForTesting
    public zzhl(Context context, com.google.android.gms.internal.measurement.zzcl zzclVar, Long l10) {
        this.f24755h = true;
        Preconditions.k(context);
        Context applicationContext = context.getApplicationContext();
        Preconditions.k(applicationContext);
        this.f24748a = applicationContext;
        this.f24756i = l10;
        if (zzclVar != null) {
            this.f24754g = zzclVar;
            this.f24749b = zzclVar.f23362t;
            this.f24750c = zzclVar.f23361s;
            this.f24751d = zzclVar.f23360r;
            this.f24755h = zzclVar.f23359q;
            this.f24753f = zzclVar.f23358p;
            this.f24757j = zzclVar.f23364v;
            Bundle bundle = zzclVar.f23363u;
            if (bundle != null) {
                this.f24752e = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
