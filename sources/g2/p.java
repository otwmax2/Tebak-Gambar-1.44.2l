package g2;

import android.net.Uri;
import android.text.TextUtils;
import java.io.File;

/* JADX INFO: compiled from: StringLoader.java */
/* JADX INFO: loaded from: classes.dex */
public class p<T> implements l<String, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l<Uri, T> f29834a;

    public p(l<Uri, T> lVar) {
        this.f29834a = lVar;
    }

    private static Uri c(String str) {
        return Uri.fromFile(new File(str));
    }

    @Override // g2.l
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public a2.c<T> a(String str, int i10, int i11) {
        Uri uriC;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith("/")) {
            uriC = c(str);
        } else {
            Uri uri = Uri.parse(str);
            uriC = uri.getScheme() == null ? c(str) : uri;
        }
        return this.f29834a.a(uriC, i10, i11);
    }
}
