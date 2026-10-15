package i2;

import android.content.Context;
import g2.l;
import g2.m;
import g2.r;
import java.io.InputStream;
import java.net.URL;

/* JADX INFO: compiled from: StreamUrlLoader.java */
/* JADX INFO: loaded from: classes.dex */
public class g extends r<InputStream> {

    /* JADX INFO: compiled from: StreamUrlLoader.java */
    public static class a implements m<URL, InputStream> {
        @Override // g2.m
        public l<URL, InputStream> a(Context context, g2.c cVar) {
            return new g(cVar.a(g2.d.class, InputStream.class));
        }

        @Override // g2.m
        public void b() {
        }
    }

    public g(l<g2.d, InputStream> lVar) {
        super(lVar);
    }
}
