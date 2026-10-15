package g2;

import android.net.Uri;
import com.facebook.share.internal.ShareInternalUtility;

/* JADX INFO: compiled from: AssetUriParser.java */
/* JADX INFO: loaded from: classes.dex */
final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f29795a = 22;

    public static boolean a(Uri uri) {
        return ShareInternalUtility.STAGING_PARAM.equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && "android_asset".equals(uri.getPathSegments().get(0));
    }

    public static String b(Uri uri) {
        return uri.toString().substring(f29795a);
    }
}
