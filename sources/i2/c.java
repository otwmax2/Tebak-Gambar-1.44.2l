package i2;

import android.content.Context;
import android.net.Uri;
import g2.l;
import g2.m;
import java.io.File;
import java.io.InputStream;

/* JADX INFO: compiled from: StreamFileLoader.java */
/* JADX INFO: loaded from: classes.dex */
public class c extends g2.b<InputStream> {

    /* JADX INFO: compiled from: StreamFileLoader.java */
    public static class a implements m<File, InputStream> {
        @Override // g2.m
        public l<File, InputStream> a(Context context, g2.c cVar) {
            return new c(cVar.a(Uri.class, InputStream.class));
        }

        @Override // g2.m
        public void b() {
        }
    }

    public c(l<Uri, InputStream> lVar) {
        super(lVar);
    }
}
