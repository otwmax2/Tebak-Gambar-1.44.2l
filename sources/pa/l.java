package pa;

import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: PushObserver.java */
/* JADX INFO: loaded from: classes2.dex */
public interface l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final l f33713a = new a();

    /* JADX INFO: compiled from: PushObserver.java */
    class a implements l {
        a() {
        }

        @Override // pa.l
        public boolean a(int i10, List<c> list) {
            return true;
        }

        @Override // pa.l
        public boolean b(int i10, List<c> list, boolean z10) {
            return true;
        }

        @Override // pa.l
        public void c(int i10, b bVar) {
        }

        @Override // pa.l
        public boolean d(int i10, okio.e eVar, int i11, boolean z10) throws IOException {
            eVar.skip(i11);
            return true;
        }
    }

    boolean a(int i10, List<c> list);

    boolean b(int i10, List<c> list, boolean z10);

    void c(int i10, b bVar);

    boolean d(int i10, okio.e eVar, int i11, boolean z10) throws IOException;
}
