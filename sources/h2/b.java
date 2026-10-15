package h2;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import g2.l;
import g2.m;
import g2.n;

/* JADX INFO: compiled from: FileDescriptorResourceLoader.java */
/* JADX INFO: loaded from: classes.dex */
public class b extends n<ParcelFileDescriptor> {

    /* JADX INFO: compiled from: FileDescriptorResourceLoader.java */
    public static class a implements m<Integer, ParcelFileDescriptor> {
        @Override // g2.m
        public l<Integer, ParcelFileDescriptor> a(Context context, g2.c cVar) {
            return new b(context, cVar.a(Uri.class, ParcelFileDescriptor.class));
        }

        @Override // g2.m
        public void b() {
        }
    }

    public b(Context context, l<Uri, ParcelFileDescriptor> lVar) {
        super(context, lVar);
    }
}
