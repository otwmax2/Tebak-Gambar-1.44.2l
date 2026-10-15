package i2;

import a2.h;
import a2.i;
import android.content.Context;
import android.net.Uri;
import g2.l;
import g2.m;
import g2.q;
import java.io.InputStream;

/* JADX INFO: compiled from: StreamUriLoader.java */
/* JADX INFO: loaded from: classes.dex */
public class f extends q<InputStream> {

    /* JADX INFO: compiled from: StreamUriLoader.java */
    public static class a implements m<Uri, InputStream> {
        @Override // g2.m
        public l<Uri, InputStream> a(Context context, g2.c cVar) {
            return new f(context, cVar.a(g2.d.class, InputStream.class));
        }

        @Override // g2.m
        public void b() {
        }
    }

    public f(Context context, l<g2.d, InputStream> lVar) {
        super(context, lVar);
    }

    @Override // g2.q
    protected a2.c<InputStream> b(Context context, String str) {
        return new h(context.getApplicationContext().getAssets(), str);
    }

    @Override // g2.q
    protected a2.c<InputStream> c(Context context, Uri uri) {
        return new i(context, uri);
    }
}
