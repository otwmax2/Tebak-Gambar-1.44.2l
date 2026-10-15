package f8;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import com.facebook.share.internal.ShareInternalUtility;
import f8.t;
import f8.y;
import java.io.IOException;

/* JADX INFO: compiled from: AssetRequestHandler.java */
/* JADX INFO: loaded from: classes2.dex */
class b extends y {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f29312b = 22;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AssetManager f29313a;

    public b(Context context) {
        this.f29313a = context.getAssets();
    }

    static String j(w wVar) {
        return wVar.f29469d.toString().substring(f29312b);
    }

    @Override // f8.y
    public boolean c(w wVar) {
        Uri uri = wVar.f29469d;
        return ShareInternalUtility.STAGING_PARAM.equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && "android_asset".equals(uri.getPathSegments().get(0));
    }

    @Override // f8.y
    public y.a f(w wVar, int i10) throws IOException {
        return new y.a(this.f29313a.open(j(wVar)), t.e.DISK);
    }
}
