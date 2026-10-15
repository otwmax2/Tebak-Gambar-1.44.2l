package com.google.android.gms.internal.ads;

import android.content.Context;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.UUID;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
class zzfkt {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final String f18354g = new UUID(0, 0).toString();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f18355a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f18356b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f18357c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f18358d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f18359e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final zzfku f18360f;

    zzfkt(Context context, String str, String str2, String str3) {
        this.f18360f = zzfku.b(context);
        this.f18355a = str;
        this.f18356b = str.concat("_3p");
        this.f18357c = str2;
        this.f18358d = str2.concat("_3p");
        this.f18359e = str3;
    }

    private final String h(String str, String str2, String str3) {
        if (str2 != null && str3 != null) {
            return UUID.nameUUIDFromBytes((str + str2 + str3).getBytes(StandardCharsets.UTF_8)).toString();
        }
        String str4 = this.f18359e;
        StringBuilder sb = new StringBuilder();
        sb.append(str4);
        sb.append(": Invalid argument to generate PAIDv1 on 3p traffic, Ad ID is not null, package name is ");
        sb.append(str2 == null ? "null" : "not null");
        sb.append(", hashKey is ");
        sb.append(str3 != null ? "not null" : "null");
        throw new IllegalArgumentException(sb.toString());
    }

    final long a(boolean z10) {
        return this.f18360f.a(z10 ? this.f18358d : this.f18357c, -1L);
    }

    final zzfks b(String str, String str2, long j10, boolean z10) throws IOException {
        if (str != null) {
            try {
                UUID.fromString(str);
                if (!str.equals(f18354g)) {
                    String strE = e(true);
                    String strC = this.f18360f.c("paid_3p_hash_key", null);
                    if (strE != null && strC != null && !strE.equals(h(str, str2, strC))) {
                        return c(str, str2);
                    }
                }
            } catch (IllegalArgumentException unused) {
            }
            return new zzfks();
        }
        boolean z11 = str != null;
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis < 0) {
            throw new IllegalStateException(this.f18359e.concat(": Invalid negative current timestamp. Updating PAID failed"));
        }
        long jA = a(z11);
        if (jA != -1) {
            if (jCurrentTimeMillis < jA) {
                this.f18360f.d(z11 ? this.f18358d : this.f18357c, Long.valueOf(jCurrentTimeMillis));
            } else if (jCurrentTimeMillis >= jA + j10) {
                return c(str, str2);
            }
        }
        String strE2 = e(z11);
        return (strE2 != null || z10) ? new zzfks(strE2, a(z11)) : c(str, str2);
    }

    final zzfks c(String str, String str2) throws IOException {
        if (str == null) {
            return d(UUID.randomUUID().toString(), false);
        }
        String string = UUID.randomUUID().toString();
        this.f18360f.d("paid_3p_hash_key", string);
        return d(h(str, str2, string), true);
    }

    final zzfks d(String str, boolean z10) throws IOException {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis < 0) {
            throw new IllegalStateException(this.f18359e.concat(": Invalid negative current timestamp. Updating PAID failed"));
        }
        this.f18360f.d(z10 ? this.f18358d : this.f18357c, Long.valueOf(jCurrentTimeMillis));
        this.f18360f.d(z10 ? this.f18356b : this.f18355a, str);
        return new zzfks(str, jCurrentTimeMillis);
    }

    final String e(boolean z10) {
        return this.f18360f.c(z10 ? this.f18356b : this.f18355a, null);
    }

    final void f(boolean z10) throws IOException {
        this.f18360f.e(z10 ? this.f18358d : this.f18357c);
        this.f18360f.e(z10 ? this.f18356b : this.f18355a);
    }

    final boolean g(boolean z10) {
        return this.f18360f.g(this.f18355a);
    }
}
