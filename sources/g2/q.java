package g2;

import android.content.Context;
import android.net.Uri;
import com.facebook.gamingservices.internal.TournamentShareDialogURIBuilder;
import com.facebook.share.internal.ShareInternalUtility;

/* JADX INFO: compiled from: UriLoader.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class q<T> implements l<Uri, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f29835a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final l<d, T> f29836b;

    public q(Context context, l<d, T> lVar) {
        this.f29835a = context;
        this.f29836b = lVar;
    }

    private static boolean e(String str) {
        return ShareInternalUtility.STAGING_PARAM.equals(str) || "content".equals(str) || "android.resource".equals(str);
    }

    protected abstract a2.c<T> b(Context context, String str);

    protected abstract a2.c<T> c(Context context, Uri uri);

    @Override // g2.l
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final a2.c<T> a(Uri uri, int i10, int i11) {
        String scheme = uri.getScheme();
        if (e(scheme)) {
            if (!a.a(uri)) {
                return c(this.f29835a, uri);
            }
            return b(this.f29835a, a.b(uri));
        }
        if (this.f29836b == null || !("http".equals(scheme) || TournamentShareDialogURIBuilder.scheme.equals(scheme))) {
            return null;
        }
        return this.f29836b.a(new d(uri.toString()), i10, i11);
    }
}
