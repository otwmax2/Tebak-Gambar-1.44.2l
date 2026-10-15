package d2;

import android.util.Log;
import d2.a;
import java.io.File;
import java.io.IOException;
import w1.a;

/* JADX INFO: compiled from: DiskLruCacheWrapper.java */
/* JADX INFO: loaded from: classes.dex */
public class e implements a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static e f28611f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c f28612a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f28613b = new j();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final File f28614c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f28615d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private w1.a f28616e;

    protected e(File file, int i10) {
        this.f28614c = file;
        this.f28615d = i10;
    }

    public static synchronized a d(File file, int i10) {
        if (f28611f == null) {
            f28611f = new e(file, i10);
        }
        return f28611f;
    }

    private synchronized w1.a e() throws IOException {
        if (this.f28616e == null) {
            this.f28616e = w1.a.r(this.f28614c, 1, 1, this.f28615d);
        }
        return this.f28616e;
    }

    @Override // d2.a
    public void a(z1.c cVar, a.b bVar) {
        String strA = this.f28613b.a(cVar);
        this.f28612a.a(cVar);
        try {
            try {
                a.b bVarN = e().n(strA);
                if (bVarN != null) {
                    try {
                        if (bVar.a(bVarN.f(0))) {
                            bVarN.e();
                        }
                        bVarN.b();
                    } catch (Throwable th) {
                        bVarN.b();
                        throw th;
                    }
                }
            } catch (IOException e10) {
                if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                    Log.w("DiskLruCacheWrapper", "Unable to put to disk cache", e10);
                }
            }
        } finally {
            this.f28612a.b(cVar);
        }
    }

    @Override // d2.a
    public void b(z1.c cVar) {
        try {
            e().w(this.f28613b.a(cVar));
        } catch (IOException e10) {
            if (Log.isLoggable("DiskLruCacheWrapper", 5)) {
                Log.w("DiskLruCacheWrapper", "Unable to delete from disk cache", e10);
            }
        }
    }

    @Override // d2.a
    public File c(z1.c cVar) {
        try {
            a.d dVarP = e().p(this.f28613b.a(cVar));
            if (dVarP != null) {
                return dVarP.a(0);
            }
            return null;
        } catch (IOException e10) {
            if (!Log.isLoggable("DiskLruCacheWrapper", 5)) {
                return null;
            }
            Log.w("DiskLruCacheWrapper", "Unable to get from disk cache", e10);
            return null;
        }
    }
}
