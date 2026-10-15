package r5;

import com.facebook.internal.NativeProtocol;
import java.io.File;

/* JADX INFO: compiled from: LogFileManager.java */
/* JADX INFO: loaded from: classes2.dex */
public class e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final b f34260c = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v5.f f34261a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f34262b;

    /* JADX INFO: compiled from: LogFileManager.java */
    private static final class b implements c {
        private b() {
        }

        @Override // r5.c
        public void a() {
        }

        @Override // r5.c
        public String b() {
            return null;
        }

        @Override // r5.c
        public byte[] c() {
            return null;
        }

        @Override // r5.c
        public void d() {
        }

        @Override // r5.c
        public void e(long j10, String str) {
        }
    }

    public e(v5.f fVar) {
        this.f34261a = fVar;
        this.f34262b = f34260c;
    }

    private File d(String str) {
        return this.f34261a.o(str, "userlog");
    }

    public void a() {
        this.f34262b.d();
    }

    public byte[] b() {
        return this.f34262b.c();
    }

    public String c() {
        return this.f34262b.b();
    }

    public final void e(String str) {
        this.f34262b.a();
        this.f34262b = f34260c;
        if (str == null) {
            return;
        }
        f(d(str), NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST);
    }

    void f(File file, int i10) {
        this.f34262b = new h(file, i10);
    }

    public void g(long j10, String str) {
        this.f34262b.e(j10, str);
    }

    public e(v5.f fVar, String str) {
        this(fVar);
        e(str);
    }
}
