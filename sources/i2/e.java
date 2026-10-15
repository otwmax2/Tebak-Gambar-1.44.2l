package i2;

import android.content.Context;
import android.net.Uri;
import g2.l;
import g2.m;
import g2.p;
import java.io.InputStream;

/* JADX INFO: compiled from: StreamStringLoader.java */
/* JADX INFO: loaded from: classes.dex */
public class e extends p<InputStream> {

    /* JADX INFO: compiled from: StreamStringLoader.java */
    public static class a implements m<String, InputStream> {
        @Override // g2.m
        public l<String, InputStream> a(Context context, g2.c cVar) {
            return new e(cVar.a(Uri.class, InputStream.class));
        }

        @Override // g2.m
        public void b() {
        }
    }

    public e(l<Uri, InputStream> lVar) {
        super(lVar);
    }
}
