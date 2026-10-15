package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class f3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final v4.a f25897b = new v4.a("VerifySliceTaskHandler");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e0 f25898a;

    f3(e0 e0Var) {
        this.f25898a = e0Var;
    }

    private final void b(e3 e3Var, File file) {
        try {
            File fileB = this.f25898a.B(e3Var.f26195b, e3Var.f25876c, e3Var.f25877d, e3Var.f25878e);
            if (!fileB.exists()) {
                throw new d1(String.format("Cannot find metadata files for slice %s.", e3Var.f25878e), e3Var.f26194a);
            }
            try {
                if (!f2.a(d3.a(file, fileB)).equals(e3Var.f25879f)) {
                    throw new d1(String.format("Verification failed for slice %s.", e3Var.f25878e), e3Var.f26194a);
                }
                f25897b.d("Verification of slice %s of pack %s successful.", e3Var.f25878e, e3Var.f26195b);
            } catch (IOException e10) {
                throw new d1(String.format("Could not digest file during verification for slice %s.", e3Var.f25878e), e10, e3Var.f26194a);
            } catch (NoSuchAlgorithmException e11) {
                throw new d1("SHA256 algorithm not supported.", e11, e3Var.f26194a);
            }
        } catch (IOException e12) {
            throw new d1(String.format("Could not reconstruct slice archive during verification for slice %s.", e3Var.f25878e), e12, e3Var.f26194a);
        }
    }

    public final void a(e3 e3Var) {
        File fileC = this.f25898a.C(e3Var.f26195b, e3Var.f25876c, e3Var.f25877d, e3Var.f25878e);
        if (!fileC.exists()) {
            throw new d1(String.format("Cannot find unverified files for slice %s.", e3Var.f25878e), e3Var.f26194a);
        }
        b(e3Var, fileC);
        File fileD = this.f25898a.D(e3Var.f26195b, e3Var.f25876c, e3Var.f25877d, e3Var.f25878e);
        if (!fileD.exists()) {
            fileD.mkdirs();
        }
        if (!fileC.renameTo(fileD)) {
            throw new d1(String.format("Failed to move slice %s after verification.", e3Var.f25878e), e3Var.f26194a);
        }
    }
}
