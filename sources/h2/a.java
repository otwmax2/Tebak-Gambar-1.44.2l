package h2;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import g2.l;
import g2.m;
import java.io.File;

/* JADX INFO: compiled from: FileDescriptorFileLoader.java */
/* JADX INFO: loaded from: classes.dex */
public class a extends g2.b<ParcelFileDescriptor> {

    /* JADX INFO: renamed from: h2.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FileDescriptorFileLoader.java */
    public static class C0172a implements m<File, ParcelFileDescriptor> {
        @Override // g2.m
        public l<File, ParcelFileDescriptor> a(Context context, g2.c cVar) {
            return new a(cVar.a(Uri.class, ParcelFileDescriptor.class));
        }

        @Override // g2.m
        public void b() {
        }
    }

    public a(l<Uri, ParcelFileDescriptor> lVar) {
        super(lVar);
    }
}
