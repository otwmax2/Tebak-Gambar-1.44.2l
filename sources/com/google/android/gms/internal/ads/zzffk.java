package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzffk {
    public static zzffk a(zzffl zzfflVar, zzffm zzffmVar) {
        if (zzffi.b()) {
            return new zzffo(zzfflVar, zzffmVar);
        }
        throw new IllegalStateException("Method called before OM SDK activation");
    }

    public abstract void b(View view, zzffq zzffqVar, String str);

    public abstract void c();

    public abstract void d(View view);

    public abstract void e();
}
