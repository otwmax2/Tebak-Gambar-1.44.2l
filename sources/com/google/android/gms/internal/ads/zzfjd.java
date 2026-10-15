package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.IOUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfjd {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzasu f18296a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final File f18297b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final File f18298c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final File f18299d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private byte[] f18300e;

    public zzfjd(zzasu zzasuVar, File file, File file2, File file3) {
        this.f18296a = zzasuVar;
        this.f18297b = file;
        this.f18298c = file3;
        this.f18299d = file2;
    }

    public final zzasu a() {
        return this.f18296a;
    }

    public final File b() {
        return this.f18298c;
    }

    public final File c() {
        return this.f18297b;
    }

    public final boolean d(long j10) {
        return this.f18296a.J() - (System.currentTimeMillis() / 1000) < 3600;
    }

    public final byte[] e() throws Throwable {
        FileInputStream fileInputStream;
        byte[] bArrK;
        FileInputStream fileInputStream2 = null;
        if (this.f18300e == null) {
            try {
                fileInputStream = new FileInputStream(this.f18299d);
                try {
                    bArrK = zzgpe.N(fileInputStream).k();
                    IOUtils.b(fileInputStream);
                } catch (IOException unused) {
                    IOUtils.b(fileInputStream);
                    bArrK = null;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream2 = fileInputStream;
                    IOUtils.b(fileInputStream2);
                    throw th;
                }
            } catch (IOException unused2) {
                fileInputStream = null;
            } catch (Throwable th2) {
                th = th2;
            }
            this.f18300e = bArrK;
        }
        byte[] bArr = this.f18300e;
        if (bArr == null) {
            return null;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }
}
