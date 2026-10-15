package y9;

import t9.m;

/* JADX INFO: compiled from: Ranges.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class c extends y9.a {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final a f37131s = new a(null);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final c f37132t = new c(1, 0);

    /* JADX INFO: compiled from: Ranges.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(t9.g gVar) {
            this();
        }
    }

    public c(char c10, char c11) {
        super(c10, c11, 1);
    }

    public boolean equals(Object obj) {
        if (obj instanceof c) {
            if (!isEmpty() || !((c) obj).isEmpty()) {
                c cVar = (c) obj;
                if (c() != cVar.c() || g() != cVar.g()) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (c() * 31) + g();
    }

    public boolean isEmpty() {
        return m.f(c(), g()) > 0;
    }

    public String toString() {
        return c() + ".." + g();
    }
}
