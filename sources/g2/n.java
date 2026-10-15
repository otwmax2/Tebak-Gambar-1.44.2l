package g2;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.util.Log;

/* JADX INFO: compiled from: ResourceLoader.java */
/* JADX INFO: loaded from: classes.dex */
public class n<T> implements l<Integer, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l<Uri, T> f29832a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Resources f29833b;

    public n(Context context, l<Uri, T> lVar) {
        this(context.getResources(), lVar);
    }

    @Override // g2.l
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public a2.c<T> a(Integer num, int i10, int i11) {
        Uri uri;
        try {
            uri = Uri.parse("android.resource://" + this.f29833b.getResourcePackageName(num.intValue()) + '/' + this.f29833b.getResourceTypeName(num.intValue()) + '/' + this.f29833b.getResourceEntryName(num.intValue()));
        } catch (Resources.NotFoundException e10) {
            if (Log.isLoggable("ResourceLoader", 5)) {
                Log.w("ResourceLoader", "Received invalid resource id: " + num, e10);
            }
            uri = null;
        }
        if (uri != null) {
            return this.f29832a.a(uri, i10, i11);
        }
        return null;
    }

    public n(Resources resources, l<Uri, T> lVar) {
        this.f29833b = resources;
        this.f29832a = lVar;
    }
}
