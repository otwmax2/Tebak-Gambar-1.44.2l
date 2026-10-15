package da;

import k9.g;

/* JADX INFO: compiled from: CoroutineName.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class n0 extends k9.a {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final a f28837q = new a(null);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final String f28838p;

    /* JADX INFO: compiled from: CoroutineName.kt */
    public static final class a implements g.c<n0> {
        private a() {
        }

        public /* synthetic */ a(t9.g gVar) {
            this();
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof n0) && t9.m.a(this.f28838p, ((n0) obj).f28838p);
    }

    public int hashCode() {
        return this.f28838p.hashCode();
    }

    public final String m() {
        return this.f28838p;
    }

    public String toString() {
        return "CoroutineName(" + this.f28838p + ')';
    }
}
