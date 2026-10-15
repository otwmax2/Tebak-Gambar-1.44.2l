package h2;

import a2.e;
import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import g2.l;
import g2.m;
import g2.q;

/* JADX INFO: compiled from: FileDescriptorUriLoader.java */
/* JADX INFO: loaded from: classes.dex */
public class d extends q<ParcelFileDescriptor> {

    /* JADX INFO: compiled from: FileDescriptorUriLoader.java */
    public static class a implements m<Uri, ParcelFileDescriptor> {
        @Override // g2.m
        public l<Uri, ParcelFileDescriptor> a(Context context, g2.c cVar) {
            return new d(context, cVar.a(g2.d.class, ParcelFileDescriptor.class));
        }

        @Override // g2.m
        public void b() {
        }
    }

    public d(Context context, l<g2.d, ParcelFileDescriptor> lVar) {
        super(context, lVar);
    }

    @Override // g2.q
    protected a2.c<ParcelFileDescriptor> b(Context context, String str) {
        return new a2.d(context.getApplicationContext().getAssets(), str);
    }

    @Override // g2.q
    protected a2.c<ParcelFileDescriptor> c(Context context, Uri uri) {
        return new e(context, uri);
    }
}
