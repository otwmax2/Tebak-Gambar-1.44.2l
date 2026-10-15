package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f24113a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f24114b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final long f24115c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final long f24116d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final long f24117e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final long f24118f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final long f24119g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    final Long f24120h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final Long f24121i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final Long f24122j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final Boolean f24123k;

    h(String str, String str2, long j10, long j11, long j12, long j13, long j14, Long l10, Long l11, Long l12, Boolean bool) {
        Preconditions.g(str);
        Preconditions.g(str2);
        Preconditions.a(j10 >= 0);
        Preconditions.a(j11 >= 0);
        Preconditions.a(j12 >= 0);
        Preconditions.a(j14 >= 0);
        this.f24113a = str;
        this.f24114b = str2;
        this.f24115c = j10;
        this.f24116d = j11;
        this.f24117e = j12;
        this.f24118f = j13;
        this.f24119g = j14;
        this.f24120h = l10;
        this.f24121i = l11;
        this.f24122j = l12;
        this.f24123k = bool;
    }

    final h a(Long l10, Long l11, Boolean bool) {
        return new h(this.f24113a, this.f24114b, this.f24115c, this.f24116d, this.f24117e, this.f24118f, this.f24119g, this.f24120h, l10, l11, (bool == null || bool.booleanValue()) ? bool : null);
    }

    final h b(long j10, long j11) {
        return new h(this.f24113a, this.f24114b, this.f24115c, this.f24116d, this.f24117e, this.f24118f, j10, Long.valueOf(j11), this.f24121i, this.f24122j, this.f24123k);
    }

    final h c(long j10) {
        return new h(this.f24113a, this.f24114b, this.f24115c, this.f24116d, this.f24117e, j10, this.f24119g, this.f24120h, this.f24121i, this.f24122j, this.f24123k);
    }
}
