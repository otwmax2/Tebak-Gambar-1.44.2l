package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.IOException;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfkw extends zzfkt {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @GuardedBy("PaidV2LifecycleImpl.class")
    private static zzfkw f18365h;

    private zzfkw(Context context) {
        super(context, "paidv2_id", "paidv2_creation_time", "PaidV2LifecycleImpl");
    }

    public static final zzfkw j(Context context) {
        zzfkw zzfkwVar;
        synchronized (zzfkw.class) {
            if (f18365h == null) {
                f18365h = new zzfkw(context);
            }
            zzfkwVar = f18365h;
        }
        return zzfkwVar;
    }

    public final zzfks i(long j10, boolean z10) throws IOException {
        synchronized (zzfkw.class) {
            if (p()) {
                return b(null, null, j10, z10);
            }
            return new zzfks();
        }
    }

    public final void k() throws IOException {
        synchronized (zzfkw.class) {
            if (g(false)) {
                f(false);
            }
        }
    }

    public final void l() throws IOException {
        this.f18360f.e("paidv2_publisher_option");
    }

    public final void m() throws IOException {
        this.f18360f.e("paidv2_user_option");
    }

    public final void n(boolean z10) throws IOException {
        this.f18360f.d("paidv2_user_option", Boolean.valueOf(z10));
    }

    public final void o(boolean z10) throws IOException {
        this.f18360f.d("paidv2_publisher_option", Boolean.valueOf(z10));
        if (z10) {
            return;
        }
        k();
    }

    public final boolean p() {
        return this.f18360f.f("paidv2_publisher_option", true);
    }

    public final boolean q() {
        return this.f18360f.f("paidv2_user_option", true);
    }
}
