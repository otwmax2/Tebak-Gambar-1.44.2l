package com.google.android.play.core.assetpacks;

import com.facebook.internal.Utility;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class u2 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final v4.a f26109c = new v4.a("PatchSliceTaskHandler");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e0 f26110a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v4.y<u3> f26111b;

    u2(e0 e0Var, v4.y<u3> yVar) {
        this.f26110a = e0Var;
        this.f26111b = yVar;
    }

    public final void a(t2 t2Var) {
        File fileU = this.f26110a.u(t2Var.f26195b, t2Var.f26088c, t2Var.f26089d);
        File file = new File(this.f26110a.v(t2Var.f26195b, t2Var.f26088c, t2Var.f26089d), t2Var.f26093h);
        try {
            InputStream gZIPInputStream = t2Var.f26095j;
            if (t2Var.f26092g == 2) {
                gZIPInputStream = new GZIPInputStream(gZIPInputStream, Utility.DEFAULT_STREAM_BUFFER_SIZE);
            }
            try {
                h0 h0Var = new h0(fileU, file);
                File fileC = this.f26110a.C(t2Var.f26195b, t2Var.f26090e, t2Var.f26091f, t2Var.f26093h);
                if (!fileC.exists()) {
                    fileC.mkdirs();
                }
                b3 b3Var = new b3(this.f26110a, t2Var.f26195b, t2Var.f26090e, t2Var.f26091f, t2Var.f26093h);
                v4.v.a(h0Var, gZIPInputStream, new g1(fileC, b3Var), t2Var.f26094i);
                b3Var.i(0);
                gZIPInputStream.close();
                f26109c.d("Patching and extraction finished for slice %s of pack %s.", t2Var.f26093h, t2Var.f26195b);
                this.f26111b.zza().d(t2Var.f26194a, t2Var.f26195b, t2Var.f26093h, 0);
                try {
                    t2Var.f26095j.close();
                } catch (IOException unused) {
                    f26109c.e("Could not close file for slice %s of pack %s.", t2Var.f26093h, t2Var.f26195b);
                }
            } catch (Throwable th) {
                try {
                    gZIPInputStream.close();
                } catch (Throwable unused2) {
                }
                throw th;
            }
        } catch (IOException e10) {
            f26109c.b("IOException during patching %s.", e10.getMessage());
            throw new d1(String.format("Error patching slice %s of pack %s.", t2Var.f26093h, t2Var.f26195b), e10, t2Var.f26194a);
        }
    }
}
