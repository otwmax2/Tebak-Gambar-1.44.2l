package com.google.android.gms.common;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.common.zzag;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f7554a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f7555b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private zzag f7556c = zzag.q();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzag f7557d = zzag.q();

    p() {
    }

    final p a(long j10) {
        this.f7555b = j10;
        return this;
    }

    final p b(List list) {
        Preconditions.k(list);
        this.f7557d = zzag.p(list);
        return this;
    }

    final p c(List list) {
        Preconditions.k(list);
        this.f7556c = zzag.p(list);
        return this;
    }

    final p d(String str) {
        this.f7554a = str;
        return this;
    }

    final b e() {
        if (this.f7554a == null) {
            throw new IllegalStateException("packageName must be defined");
        }
        if (this.f7555b < 0) {
            throw new IllegalStateException("minimumStampedVersionNumber must be greater than or equal to 0");
        }
        if (this.f7556c.isEmpty() && this.f7557d.isEmpty()) {
            throw new IllegalStateException("Either orderedTestCerts or orderedProdCerts must have at least one cert");
        }
        return new b(this.f7554a, this.f7555b, this.f7556c, this.f7557d, null);
    }
}
