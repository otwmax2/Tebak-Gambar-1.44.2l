package k3;

import k3.o;

/* JADX INFO: compiled from: AutoValue_NetworkConnectionInfo.java */
/* JADX INFO: loaded from: classes.dex */
final class i extends o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final o.c f31466a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final o.b f31467b;

    /* JADX INFO: compiled from: AutoValue_NetworkConnectionInfo.java */
    static final class b extends o.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private o.c f31468a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private o.b f31469b;

        b() {
        }

        @Override // k3.o.a
        public o a() {
            return new i(this.f31468a, this.f31469b);
        }

        @Override // k3.o.a
        public o.a b(o.b bVar) {
            this.f31469b = bVar;
            return this;
        }

        @Override // k3.o.a
        public o.a c(o.c cVar) {
            this.f31468a = cVar;
            return this;
        }
    }

    @Override // k3.o
    public o.b b() {
        return this.f31467b;
    }

    @Override // k3.o
    public o.c c() {
        return this.f31466a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        o.c cVar = this.f31466a;
        if (cVar != null ? cVar.equals(oVar.c()) : oVar.c() == null) {
            o.b bVar = this.f31467b;
            if (bVar == null) {
                if (oVar.b() == null) {
                    return true;
                }
            } else if (bVar.equals(oVar.b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        o.c cVar = this.f31466a;
        int iHashCode = ((cVar == null ? 0 : cVar.hashCode()) ^ 1000003) * 1000003;
        o.b bVar = this.f31467b;
        return iHashCode ^ (bVar != null ? bVar.hashCode() : 0);
    }

    public String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f31466a + ", mobileSubtype=" + this.f31467b + "}";
    }

    private i(o.c cVar, o.b bVar) {
        this.f31466a = cVar;
        this.f31467b = bVar;
    }
}
