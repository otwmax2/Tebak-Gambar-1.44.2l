package com.google.android.gms.internal.ads;

import android.util.Base64OutputStream;
import com.google.android.gms.common.util.VisibleForTesting;
import com.vungle.mediation.BuildConfig;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@VisibleForTesting
final class zzaui {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    ByteArrayOutputStream f9980a = new ByteArrayOutputStream(4096);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    Base64OutputStream f9981b = new Base64OutputStream(this.f9980a, 10);

    /* JADX WARN: Multi-variable type inference failed */
    public final String toString() {
        try {
            this.f9981b.close();
        } catch (IOException e10) {
            zzbza.e("HashManager: Unable to convert to Base64.", e10);
        }
        try {
            this.f9980a.close();
            return this.f9980a.toString();
        } catch (IOException e11) {
            zzbza.e("HashManager: Unable to convert to Base64.", e11);
            return BuildConfig.FLAVOR;
        } finally {
            this.f9980a = null;
            this.f9981b = null;
        }
    }
}
