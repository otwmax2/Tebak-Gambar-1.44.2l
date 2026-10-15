package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcge {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private zzbzg f12129a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f12130b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WeakReference f12131c;

    public final zzcge c(Context context) {
        this.f12131c = new WeakReference(context);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        this.f12130b = context;
        return this;
    }

    public final zzcge d(zzbzg zzbzgVar) {
        this.f12129a = zzbzgVar;
        return this;
    }
}
