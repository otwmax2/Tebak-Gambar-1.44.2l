package g2;

import java.net.URL;

/* JADX INFO: compiled from: UrlLoader.java */
/* JADX INFO: loaded from: classes.dex */
public class r<T> implements l<URL, T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l<d, T> f29837a;

    public r(l<d, T> lVar) {
        this.f29837a = lVar;
    }

    @Override // g2.l
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public a2.c<T> a(URL url, int i10, int i11) {
        return this.f29837a.a(new d(url), i10, i11);
    }
}
