package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.Intent;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class a extends zag {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ Intent f7435o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ Activity f7436p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ int f7437q;

    a(Intent intent, Activity activity, int i10) {
        this.f7435o = intent;
        this.f7436p = activity;
        this.f7437q = i10;
    }

    @Override // com.google.android.gms.common.internal.zag
    public final void a() {
        Intent intent = this.f7435o;
        if (intent != null) {
            this.f7436p.startActivityForResult(intent, this.f7437q);
        }
    }
}
