package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.util.zzas;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
final class b extends RelativeLayout {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @VisibleForTesting
    final zzas f5981o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @VisibleForTesting
    boolean f5982p;

    public b(Context context, String str, String str2, String str3) {
        super(context);
        zzas zzasVar = new zzas(context, str);
        this.f5981o = zzasVar;
        zzasVar.o(str2);
        zzasVar.n(str3);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.f5982p) {
            return false;
        }
        this.f5981o.m(motionEvent);
        return false;
    }
}
