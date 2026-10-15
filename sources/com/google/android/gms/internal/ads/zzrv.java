package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzrv implements zztl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzaab f20576a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private zzzu f20577b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private zzzv f20578c;

    public zzrv(zzaab zzaabVar) {
        this.f20576a = zzaabVar;
    }

    @Override // com.google.android.gms.internal.ads.zztl
    public final void a() {
        zzzu zzzuVar = this.f20577b;
        if (zzzuVar instanceof zzafc) {
            ((zzafc) zzzuVar).b();
        }
    }

    @Override // com.google.android.gms.internal.ads.zztl
    public final void b() {
        if (this.f20577b != null) {
            this.f20577b = null;
        }
        this.f20578c = null;
    }

    @Override // com.google.android.gms.internal.ads.zztl
    public final int c(zzaau zzaauVar) throws IOException {
        zzzu zzzuVar = this.f20577b;
        Objects.requireNonNull(zzzuVar);
        zzzv zzzvVar = this.f20578c;
        Objects.requireNonNull(zzzvVar);
        return zzzuVar.e(zzzvVar, zzaauVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0066  */
    @Override // com.google.android.gms.internal.ads.zztl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void d(com.google.android.gms.internal.ads.zzr r8, android.net.Uri r9, java.util.Map r10, long r11, long r13, com.google.android.gms.internal.ads.zzzx r15) throws java.io.IOException {
        /*
            r7 = this;
            com.google.android.gms.internal.ads.zzzk r6 = new com.google.android.gms.internal.ads.zzzk
            r0 = r6
            r1 = r8
            r2 = r11
            r4 = r13
            r0.<init>(r1, r2, r4)
            r7.f20578c = r6
            com.google.android.gms.internal.ads.zzzu r8 = r7.f20577b
            if (r8 == 0) goto L10
            return
        L10:
            com.google.android.gms.internal.ads.zzaab r8 = r7.f20576a
            com.google.android.gms.internal.ads.zzzu[] r8 = r8.a(r9, r10)
            int r10 = r8.length
            r13 = 0
            r14 = 1
            if (r10 != r14) goto L20
            r8 = r8[r13]
            r7.f20577b = r8
            goto L74
        L20:
            r0 = 0
        L21:
            if (r0 >= r10) goto L70
            r1 = r8[r0]
            boolean r2 = r1.a(r6)     // Catch: java.lang.Throwable -> L41 java.io.EOFException -> L56
            if (r2 == 0) goto L34
            r7.f20577b = r1     // Catch: java.lang.Throwable -> L41 java.io.EOFException -> L56
            com.google.android.gms.internal.ads.zzdl.f(r14)
            r6.h()
            goto L70
        L34:
            com.google.android.gms.internal.ads.zzzu r1 = r7.f20577b
            if (r1 != 0) goto L66
            long r1 = r6.c()
            int r3 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1))
            if (r3 != 0) goto L64
            goto L66
        L41:
            r8 = move-exception
            com.google.android.gms.internal.ads.zzzu r9 = r7.f20577b
            if (r9 != 0) goto L4e
            long r9 = r6.c()
            int r15 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r15 != 0) goto L4f
        L4e:
            r13 = 1
        L4f:
            com.google.android.gms.internal.ads.zzdl.f(r13)
            r6.h()
            throw r8
        L56:
            com.google.android.gms.internal.ads.zzzu r1 = r7.f20577b
            if (r1 != 0) goto L66
            long r1 = r6.c()
            int r3 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1))
            if (r3 != 0) goto L64
            goto L66
        L64:
            r1 = 0
            goto L67
        L66:
            r1 = 1
        L67:
            com.google.android.gms.internal.ads.zzdl.f(r1)
            r6.h()
            int r0 = r0 + 1
            goto L21
        L70:
            com.google.android.gms.internal.ads.zzzu r10 = r7.f20577b
            if (r10 == 0) goto L7a
        L74:
            com.google.android.gms.internal.ads.zzzu r8 = r7.f20577b
            r8.g(r15)
            return
        L7a:
            com.google.android.gms.internal.ads.zzus r10 = new com.google.android.gms.internal.ads.zzus
            java.lang.String r8 = com.google.android.gms.internal.ads.zzew.k(r8)
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = "None of the available extractors ("
            r11.append(r12)
            r11.append(r8)
            java.lang.String r8 = ") could read the stream."
            r11.append(r8)
            java.lang.String r8 = r11.toString()
            r10.<init>(r8, r9)
            goto L9b
        L9a:
            throw r10
        L9b:
            goto L9a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrv.d(com.google.android.gms.internal.ads.zzr, android.net.Uri, java.util.Map, long, long, com.google.android.gms.internal.ads.zzzx):void");
    }

    @Override // com.google.android.gms.internal.ads.zztl
    public final void e(long j10, long j11) {
        zzzu zzzuVar = this.f20577b;
        Objects.requireNonNull(zzzuVar);
        zzzuVar.h(j10, j11);
    }

    @Override // com.google.android.gms.internal.ads.zztl
    public final long zzb() {
        zzzv zzzvVar = this.f20578c;
        if (zzzvVar != null) {
            return zzzvVar.c();
        }
        return -1L;
    }
}
