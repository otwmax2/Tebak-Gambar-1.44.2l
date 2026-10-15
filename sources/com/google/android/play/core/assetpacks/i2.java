package com.google.android.play.core.assetpacks;

import java.io.File;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class i2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final v4.a f25943b = new v4.a("MergeSliceTaskHandler");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e0 f25944a;

    i2(e0 e0Var) {
        this.f25944a = e0Var;
    }

    private static void b(File file, File file2) {
        if (!file.isDirectory()) {
            if (file2.exists()) {
                String strValueOf = String.valueOf(file2);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 51);
                sb.append("File clashing with existing file from other slice: ");
                sb.append(strValueOf);
                throw new d1(sb.toString());
            }
            if (file.renameTo(file2)) {
                return;
            }
            String strValueOf2 = String.valueOf(file);
            StringBuilder sb2 = new StringBuilder(strValueOf2.length() + 21);
            sb2.append("Unable to move file: ");
            sb2.append(strValueOf2);
            throw new d1(sb2.toString());
        }
        file2.mkdirs();
        for (File file3 : file.listFiles()) {
            b(file3, new File(file2, file3.getName()));
        }
        if (file.delete()) {
            return;
        }
        String strValueOf3 = String.valueOf(file);
        StringBuilder sb3 = new StringBuilder(strValueOf3.length() + 28);
        sb3.append("Unable to delete directory: ");
        sb3.append(strValueOf3);
        throw new d1(sb3.toString());
    }

    public final void a(h2 h2Var) {
        File fileD = this.f25944a.D(h2Var.f26195b, h2Var.f25930c, h2Var.f25931d, h2Var.f25932e);
        if (!fileD.exists()) {
            throw new d1(String.format("Cannot find verified files for slice %s.", h2Var.f25932e), h2Var.f26194a);
        }
        File fileW = this.f25944a.w(h2Var.f26195b, h2Var.f25930c, h2Var.f25931d);
        if (!fileW.exists()) {
            fileW.mkdirs();
        }
        b(fileD, fileW);
        try {
            this.f25944a.a(h2Var.f26195b, h2Var.f25930c, h2Var.f25931d, this.f25944a.q(h2Var.f26195b, h2Var.f25930c, h2Var.f25931d) + 1);
        } catch (IOException e10) {
            f25943b.b("Writing merge checkpoint failed with %s.", e10.getMessage());
            throw new d1("Writing merge checkpoint failed.", e10, h2Var.f26194a);
        }
    }
}
