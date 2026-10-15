package com.google.android.gms.common.internal;

import android.content.Intent;
import com.google.android.gms.common.api.internal.LifecycleFragment;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class b extends zag {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ Intent f7438o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ LifecycleFragment f7439p;

    b(Intent intent, LifecycleFragment lifecycleFragment, int i10) {
        this.f7438o = intent;
        this.f7439p = lifecycleFragment;
    }

    @Override // com.google.android.gms.common.internal.zag
    public final void a() {
        Intent intent = this.f7438o;
        if (intent != null) {
            this.f7439p.startActivityForResult(intent, 2);
        }
    }
}
