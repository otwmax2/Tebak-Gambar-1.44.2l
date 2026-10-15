package i2;

import android.content.Context;
import android.net.Uri;
import g2.l;
import g2.m;
import g2.n;
import java.io.InputStream;

/* JADX INFO: compiled from: StreamResourceLoader.java */
/* JADX INFO: loaded from: classes.dex */
public class d extends n<InputStream> {

    /* JADX INFO: compiled from: StreamResourceLoader.java */
    public static class a implements m<Integer, InputStream> {
        @Override // g2.m
        public l<Integer, InputStream> a(Context context, g2.c cVar) {
            return new d(context, cVar.a(Uri.class, InputStream.class));
        }

        @Override // g2.m
        public void b() {
        }
    }

    public d(Context context, l<Uri, InputStream> lVar) {
        super(context, lVar);
    }
}
