package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.IOException;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfkv extends zzfkt {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @GuardedBy("PaidV1LifecycleImpl.class")
    private static zzfkv f18364h;

    private zzfkv(Context context) {
        super(context, "paidv1_id", "paidv1_creation_time", "PaidV1LifecycleImpl");
    }

    public static final zzfkv k(Context context) {
        zzfkv zzfkvVar;
        synchronized (zzfkv.class) {
            if (f18364h == null) {
                f18364h = new zzfkv(context);
            }
            zzfkvVar = f18364h;
        }
        return zzfkvVar;
    }

    public final zzfks i(long j10, boolean z10) throws IOException {
        zzfks zzfksVarB;
        synchronized (zzfkv.class) {
            zzfksVarB = b(null, null, j10, z10);
        }
        return zzfksVarB;
    }

    public final zzfks j(String str, String str2, long j10, boolean z10) throws IOException {
        zzfks zzfksVarB;
        synchronized (zzfkv.class) {
            zzfksVarB = b(str, str2, j10, z10);
        }
        return zzfksVarB;
    }

    public final void l() throws IOException {
        synchronized (zzfkv.class) {
            f(false);
        }
    }

    public final void m() throws IOException {
        synchronized (zzfkv.class) {
            f(true);
        }
    }
}
