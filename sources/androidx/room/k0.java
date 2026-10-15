package androidx.room;

import b1.h;
import java.io.File;
import java.io.InputStream;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: SQLiteCopyOpenHelperFactory.java */
/* JADX INFO: loaded from: classes.dex */
class k0 implements h.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4136a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final File f4137b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Callable<InputStream> f4138c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final h.c f4139d;

    k0(String str, File file, Callable<InputStream> callable, h.c cVar) {
        this.f4136a = str;
        this.f4137b = file;
        this.f4138c = callable;
        this.f4139d = cVar;
    }

    @Override // b1.h.c
    public b1.h a(h.b bVar) {
        return new j0(bVar.f4540a, this.f4136a, this.f4137b, this.f4138c, bVar.f4542c.f4539a, this.f4139d.a(bVar));
    }
}
