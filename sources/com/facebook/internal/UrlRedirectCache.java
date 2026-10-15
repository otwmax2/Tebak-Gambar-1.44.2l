package com.facebook.internal;

import android.net.Uri;
import com.facebook.LoggingBehavior;
import com.facebook.internal.FileLruCache;
import java.io.IOException;
import java.io.OutputStream;
import t9.z;

/* JADX INFO: compiled from: UrlRedirectCache.kt */
/* JADX INFO: loaded from: classes.dex */
public final class UrlRedirectCache {
    public static final UrlRedirectCache INSTANCE = new UrlRedirectCache();
    private static final String redirectContentTag;
    private static final String tag;
    private static FileLruCache urlRedirectFileLruCache;

    static {
        String strA = z.b(UrlRedirectCache.class).a();
        if (strA == null) {
            strA = "UrlRedirectCache";
        }
        tag = strA;
        redirectContentTag = t9.m.k(strA, "_Redirect");
    }

    private UrlRedirectCache() {
    }

    public static final void cacheUriRedirect(Uri uri, Uri uri2) {
        if (uri == null || uri2 == null) {
            return;
        }
        OutputStream outputStreamOpenPutStream = null;
        try {
            try {
                FileLruCache cache = getCache();
                String string = uri.toString();
                t9.m.d(string, "fromUri.toString()");
                outputStreamOpenPutStream = cache.openPutStream(string, redirectContentTag);
                String string2 = uri2.toString();
                t9.m.d(string2, "toUri.toString()");
                byte[] bytes = string2.getBytes(ba.d.f4713b);
                t9.m.d(bytes, "(this as java.lang.String).getBytes(charset)");
                outputStreamOpenPutStream.write(bytes);
            } catch (IOException e10) {
                Logger.Companion.log(LoggingBehavior.CACHE, 4, tag, t9.m.k("IOException when accessing cache: ", e10.getMessage()));
            }
        } finally {
            Utility utility = Utility.INSTANCE;
            Utility.closeQuietly(outputStreamOpenPutStream);
        }
    }

    public static final void clearCache() {
        try {
            getCache().clearCache();
        } catch (IOException e10) {
            Logger.Companion.log(LoggingBehavior.CACHE, 5, tag, t9.m.k("clearCache failed ", e10.getMessage()));
        }
    }

    public static final synchronized FileLruCache getCache() throws IOException {
        FileLruCache fileLruCache;
        fileLruCache = urlRedirectFileLruCache;
        if (fileLruCache == null) {
            fileLruCache = new FileLruCache(tag, new FileLruCache.Limits());
        }
        urlRedirectFileLruCache = fileLruCache;
        return fileLruCache;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0059, code lost:
    
        if (t9.m.a(r3, r11) == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005b, code lost:
    
        r5 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005d, code lost:
    
        com.facebook.internal.Logger.Companion.log(com.facebook.LoggingBehavior.CACHE, 6, com.facebook.internal.UrlRedirectCache.tag, "A loop detected in UrlRedirectCache");
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0069, code lost:
    
        com.facebook.internal.Utility.closeQuietly(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x006c, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final android.net.Uri getRedirectedUri(android.net.Uri r11) throws java.lang.Throwable {
        /*
            r0 = 0
            if (r11 != 0) goto L4
            return r0
        L4:
            java.lang.String r11 = r11.toString()
            java.lang.String r1 = "uri.toString()"
            t9.m.d(r11, r1)
            java.util.HashSet r1 = new java.util.HashSet
            r1.<init>()
            r1.add(r11)
            com.facebook.internal.FileLruCache r2 = getCache()     // Catch: java.lang.Throwable -> L95 java.io.IOException -> L97
            java.lang.String r3 = com.facebook.internal.UrlRedirectCache.redirectContentTag     // Catch: java.lang.Throwable -> L95 java.io.IOException -> L97
            java.io.InputStream r3 = r2.get(r11, r3)     // Catch: java.lang.Throwable -> L95 java.io.IOException -> L97
            r4 = 0
            r5 = r0
            r6 = 0
        L22:
            if (r3 == 0) goto L83
            r6 = 1
            java.io.InputStreamReader r7 = new java.io.InputStreamReader     // Catch: java.io.IOException -> L81 java.lang.Throwable -> Laf
            r7.<init>(r3)     // Catch: java.io.IOException -> L81 java.lang.Throwable -> Laf
            r3 = 128(0x80, float:1.8E-43)
            char[] r5 = new char[r3]     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            r8.<init>()     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            int r9 = r7.read(r5, r4, r3)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
        L37:
            if (r9 <= 0) goto L41
            r8.append(r5, r4, r9)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            int r9 = r7.read(r5, r4, r3)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            goto L37
        L41:
            com.facebook.internal.Utility r3 = com.facebook.internal.Utility.INSTANCE     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            com.facebook.internal.Utility.closeQuietly(r7)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            java.lang.String r3 = r8.toString()     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            java.lang.String r5 = "urlBuilder.toString()"
            t9.m.d(r3, r5)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            boolean r5 = r1.contains(r3)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            if (r5 == 0) goto L6d
            boolean r1 = t9.m.a(r3, r11)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            if (r1 == 0) goto L5d
            r5 = r7
            goto L83
        L5d:
            com.facebook.internal.Logger$Companion r11 = com.facebook.internal.Logger.Companion     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            com.facebook.LoggingBehavior r1 = com.facebook.LoggingBehavior.CACHE     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            r2 = 6
            java.lang.String r3 = com.facebook.internal.UrlRedirectCache.tag     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            java.lang.String r4 = "A loop detected in UrlRedirectCache"
            r11.log(r1, r2, r3, r4)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            com.facebook.internal.Utility.closeQuietly(r7)
            return r0
        L6d:
            r1.add(r3)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            java.lang.String r11 = com.facebook.internal.UrlRedirectCache.redirectContentTag     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            java.io.InputStream r11 = r2.get(r3, r11)     // Catch: java.lang.Throwable -> L7b java.io.IOException -> L7e
            r5 = r7
            r10 = r3
            r3 = r11
            r11 = r10
            goto L22
        L7b:
            r11 = move-exception
            r0 = r7
            goto Lb1
        L7e:
            r11 = move-exception
            r5 = r7
            goto L99
        L81:
            r11 = move-exception
            goto L99
        L83:
            if (r6 == 0) goto L8f
            android.net.Uri r11 = android.net.Uri.parse(r11)     // Catch: java.io.IOException -> L81 java.lang.Throwable -> Laf
            com.facebook.internal.Utility r0 = com.facebook.internal.Utility.INSTANCE
            com.facebook.internal.Utility.closeQuietly(r5)
            return r11
        L8f:
            com.facebook.internal.Utility r11 = com.facebook.internal.Utility.INSTANCE
            com.facebook.internal.Utility.closeQuietly(r5)
            goto Lae
        L95:
            r11 = move-exception
            goto Lb1
        L97:
            r11 = move-exception
            r5 = r0
        L99:
            com.facebook.internal.Logger$Companion r1 = com.facebook.internal.Logger.Companion     // Catch: java.lang.Throwable -> Laf
            com.facebook.LoggingBehavior r2 = com.facebook.LoggingBehavior.CACHE     // Catch: java.lang.Throwable -> Laf
            r3 = 4
            java.lang.String r4 = com.facebook.internal.UrlRedirectCache.tag     // Catch: java.lang.Throwable -> Laf
            java.lang.String r6 = "IOException when accessing cache: "
            java.lang.String r11 = r11.getMessage()     // Catch: java.lang.Throwable -> Laf
            java.lang.String r11 = t9.m.k(r6, r11)     // Catch: java.lang.Throwable -> Laf
            r1.log(r2, r3, r4, r11)     // Catch: java.lang.Throwable -> Laf
            goto L8f
        Lae:
            return r0
        Laf:
            r11 = move-exception
            r0 = r5
        Lb1:
            com.facebook.internal.Utility r1 = com.facebook.internal.Utility.INSTANCE
            com.facebook.internal.Utility.closeQuietly(r0)
            goto Lb8
        Lb7:
            throw r11
        Lb8:
            goto Lb7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.UrlRedirectCache.getRedirectedUri(android.net.Uri):android.net.Uri");
    }
}
