package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzabc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f8361a = new byte[10];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f8362b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f8363c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f8364d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f8365e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f8366f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f8367g;

    public final void a(zzabb zzabbVar, zzaba zzabaVar) {
        if (this.f8363c > 0) {
            zzabbVar.f(this.f8364d, this.f8365e, this.f8366f, this.f8367g, zzabaVar);
            this.f8363c = 0;
        }
    }

    public final void b() {
        this.f8362b = false;
        this.f8363c = 0;
    }

    public final void c(zzabb zzabbVar, long j10, int i10, int i11, int i12, zzaba zzabaVar) {
        if (this.f8367g > i11 + i12) {
            throw new IllegalStateException("TrueHD chunk samples must be contiguous in the sample queue.");
        }
        if (this.f8362b) {
            int i13 = this.f8363c;
            int i14 = i13 + 1;
            this.f8363c = i14;
            if (i13 == 0) {
                this.f8364d = j10;
                this.f8365e = i10;
                this.f8366f = 0;
            }
            this.f8366f += i11;
            this.f8367g = i12;
            if (i14 >= 16) {
                a(zzabbVar, zzabaVar);
            }
        }
    }

    public final void d(zzzv zzzvVar) throws IOException {
        if (this.f8362b) {
            return;
        }
        zzzvVar.m(this.f8361a, 0, 10);
        zzzvVar.h();
        byte[] bArr = this.f8361a;
        int i10 = zzyv.f21146g;
        if (bArr[4] == -8 && bArr[5] == 114 && bArr[6] == 111 && (bArr[7] & 254) == 186) {
            this.f8362b = true;
        }
    }
}
