package g2;

import android.net.Uri;
import java.io.File;

/* JADX INFO: compiled from: FileLoader.java */
/* JADX INFO: loaded from: classes.dex */
public class b<T> implements l<File, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l<Uri, T> f29796a;

    public b(l<Uri, T> lVar) {
        this.f29796a = lVar;
    }

    @Override // g2.l
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public a2.c<T> a(File file, int i10, int i11) {
        return this.f29796a.a(Uri.fromFile(file), i10, i11);
    }
}
