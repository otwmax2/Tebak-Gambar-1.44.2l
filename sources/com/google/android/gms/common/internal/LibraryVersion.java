package com.google.android.gms.common.internal;

import com.facebook.internal.ServerProtocol;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.IOUtils;
import com.google.android.gms.common.util.VisibleForTesting;
import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
@Deprecated
public class LibraryVersion {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final GmsLogger f7404b = new GmsLogger("LibraryVersion", BuildConfig.FLAVOR);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static LibraryVersion f7405c = new LibraryVersion();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ConcurrentHashMap f7406a = new ConcurrentHashMap();

    @VisibleForTesting
    protected LibraryVersion() {
    }

    @KeepForSdk
    public static LibraryVersion a() {
        return f7405c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r7v0 */
    @KeepForSdk
    @Deprecated
    public String b(String str) throws Throwable {
        ?? r32;
        InputStream resourceAsStream;
        Preconditions.h(str, "Please provide a valid libraryName");
        if (this.f7406a.containsKey(str)) {
            return (String) this.f7406a.get(str);
        }
        Properties properties = new Properties();
        ?? r42 = 0;
        r42 = 0;
        r42 = 0;
        InputStream inputStream = null;
        try {
            try {
                resourceAsStream = LibraryVersion.class.getResourceAsStream(String.format("/%s.properties", str));
            } catch (Throwable th) {
                th = th;
            }
        } catch (IOException e10) {
            e = e10;
            r32 = 0;
        }
        try {
            if (resourceAsStream != null) {
                properties.load(resourceAsStream);
                String property = properties.getProperty(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, null);
                f7404b.f("LibraryVersion", str + " version is " + property);
                r42 = property;
            } else {
                f7404b.g("LibraryVersion", "Failed to get app version for libraryName: " + str);
            }
            if (resourceAsStream != null) {
                IOUtils.b(resourceAsStream);
            }
        } catch (IOException e11) {
            e = e11;
            ?? r72 = r42;
            inputStream = resourceAsStream;
            r32 = r72;
            f7404b.d("LibraryVersion", "Failed to get app version for libraryName: " + str, e);
            if (inputStream != null) {
                IOUtils.b(inputStream);
            }
            r42 = r32;
        } catch (Throwable th2) {
            th = th2;
            r42 = resourceAsStream;
            if (r42 != 0) {
                IOUtils.b(r42);
            }
            throw th;
        }
        if (r42 == 0) {
            f7404b.b("LibraryVersion", ".properties file is dropped during release process. Failure to read app version is expected during Google internal testing where locally-built libraries are used");
            r42 = "UNKNOWN";
        }
        this.f7406a.put(str, r42);
        return r42;
    }
}
