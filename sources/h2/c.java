package h2;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import g2.l;
import g2.m;
import g2.p;

/* JADX INFO: compiled from: FileDescriptorStringLoader.java */
/* JADX INFO: loaded from: classes.dex */
public class c extends p<ParcelFileDescriptor> {

    /* JADX INFO: compiled from: FileDescriptorStringLoader.java */
    public static class a implements m<String, ParcelFileDescriptor> {
        @Override // g2.m
        public l<String, ParcelFileDescriptor> a(Context context, g2.c cVar) {
            return new c(cVar.a(Uri.class, ParcelFileDescriptor.class));
        }

        @Override // g2.m
        public void b() {
        }
    }

    public c(l<Uri, ParcelFileDescriptor> lVar) {
        super(lVar);
    }
}
