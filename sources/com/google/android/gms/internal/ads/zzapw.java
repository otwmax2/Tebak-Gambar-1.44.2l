package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.view.View;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzapw {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String[] f9702d = {"/aclk", "/pcs/click", "/dbm/clk"};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f9703a = "ad.doubleclick.net";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String[] f9704b = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzaps f9705c;

    @Deprecated
    public zzapw(zzaps zzapsVar) {
        this.f9705c = zzapsVar;
    }

    private final Uri g(Uri uri, String str) throws zzapx {
        Objects.requireNonNull(uri);
        try {
            try {
                if (uri.getHost().equals(this.f9703a)) {
                    if (uri.toString().contains("dc_ms=")) {
                        throw new zzapx("Parameter already exists: dc_ms");
                    }
                    String string = uri.toString();
                    int iIndexOf = string.indexOf(";adurl");
                    if (iIndexOf != -1) {
                        int i10 = iIndexOf + 1;
                        return Uri.parse(string.substring(0, i10) + "dc_ms=" + str + ";" + string.substring(i10));
                    }
                    String encodedPath = uri.getEncodedPath();
                    int iIndexOf2 = string.indexOf(encodedPath);
                    return Uri.parse(string.substring(0, encodedPath.length() + iIndexOf2) + ";dc_ms=" + str + ";" + string.substring(iIndexOf2 + encodedPath.length()));
                }
            } catch (UnsupportedOperationException unused) {
                throw new zzapx("Provided Uri is not in a valid state");
            }
        } catch (NullPointerException unused2) {
        }
        if (uri.getQueryParameter("ms") != null) {
            throw new zzapx("Query parameter already exists: ms");
        }
        String string2 = uri.toString();
        int iIndexOf3 = string2.indexOf("&adurl");
        if (iIndexOf3 == -1) {
            iIndexOf3 = string2.indexOf("?adurl");
        }
        if (iIndexOf3 == -1) {
            return uri.buildUpon().appendQueryParameter("ms", str).build();
        }
        int i11 = iIndexOf3 + 1;
        return Uri.parse(string2.substring(0, i11) + "ms=" + str + "&" + string2.substring(i11));
    }

    @Deprecated
    public final Uri a(Uri uri, Context context, View view, Activity activity) throws zzapx {
        try {
            return g(uri, this.f9705c.e(context, uri.getQueryParameter("ai"), view, activity));
        } catch (UnsupportedOperationException unused) {
            throw new zzapx("Provided Uri is not in a valid state");
        }
    }

    @Deprecated
    public final Uri b(Uri uri, Context context) throws zzapx {
        return g(uri, this.f9705c.c(context));
    }

    @Deprecated
    public final zzaps c() {
        return this.f9705c;
    }

    @Deprecated
    public final void d(MotionEvent motionEvent) {
        this.f9705c.f(motionEvent);
    }

    public final boolean e(Uri uri) {
        if (f(uri)) {
            String[] strArr = f9702d;
            for (int i10 = 0; i10 < 3; i10++) {
                if (uri.getPath().endsWith(strArr[i10])) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean f(Uri uri) {
        Objects.requireNonNull(uri);
        try {
            String host = uri.getHost();
            String[] strArr = this.f9704b;
            for (int i10 = 0; i10 < 3; i10++) {
                if (host.endsWith(strArr[i10])) {
                    return true;
                }
            }
        } catch (NullPointerException unused) {
        }
        return false;
    }
}
