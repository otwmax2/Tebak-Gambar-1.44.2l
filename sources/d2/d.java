package d2;

import d2.a;
import java.io.File;

/* JADX INFO: compiled from: DiskLruCacheFactory.java */
/* JADX INFO: loaded from: classes.dex */
public class d implements a.InterfaceC0142a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f28609a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f28610b;

    /* JADX INFO: compiled from: DiskLruCacheFactory.java */
    public interface a {
        File getCacheDirectory();
    }

    public d(a aVar, int i10) {
        this.f28609a = i10;
        this.f28610b = aVar;
    }

    @Override // d2.a.InterfaceC0142a
    public d2.a build() {
        File cacheDirectory = this.f28610b.getCacheDirectory();
        if (cacheDirectory == null) {
            return null;
        }
        if (cacheDirectory.mkdirs() || (cacheDirectory.exists() && cacheDirectory.isDirectory())) {
            return e.d(cacheDirectory, this.f28609a);
        }
        return null;
    }
}
