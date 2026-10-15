package com.google.android.play.core.assetpacks;

import com.vungle.mediation.BuildConfig;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Properties;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class p2 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final v4.a f26037d = new v4.a("PackMetadataManager");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e0 f26038a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final r2 f26039b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final u4.b f26040c;

    p2(e0 e0Var, r2 r2Var, u4.b bVar) {
        this.f26038a = e0Var;
        this.f26039b = r2Var;
        this.f26040c = bVar;
    }

    final String a(String str) {
        if (this.f26040c.a("assetOnlyUpdates") && this.f26038a.f(str)) {
            int iA = this.f26039b.a();
            e0 e0Var = this.f26038a;
            File fileX = e0Var.x(str, iA, e0Var.r(str));
            try {
                if (!fileX.exists()) {
                    return String.valueOf(iA);
                }
                FileInputStream fileInputStream = new FileInputStream(fileX);
                try {
                    Properties properties = new Properties();
                    properties.load(fileInputStream);
                    fileInputStream.close();
                    String property = properties.getProperty("moduleVersionTag");
                    return property == null ? String.valueOf(iA) : property;
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable unused) {
                    }
                    throw th;
                }
            } catch (IOException unused2) {
                f26037d.b("Failed to read pack version tag for pack %s", str);
            }
        }
        return BuildConfig.FLAVOR;
    }

    final void b(String str, int i10, long j10, String str2) throws IOException {
        if (str2 == null || str2.isEmpty()) {
            str2 = String.valueOf(i10);
        }
        Properties properties = new Properties();
        properties.put("moduleVersionTag", str2);
        File fileX = this.f26038a.x(str, i10, j10);
        fileX.getParentFile().mkdirs();
        fileX.createNewFile();
        FileOutputStream fileOutputStream = new FileOutputStream(fileX);
        try {
            properties.store(fileOutputStream, (String) null);
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }
}
