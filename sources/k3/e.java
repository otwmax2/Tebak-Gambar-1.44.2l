package k3;

import k3.k;

/* JADX INFO: compiled from: AutoValue_ClientInfo.java */
/* JADX INFO: loaded from: classes.dex */
final class e extends k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k.b f31433a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final k3.a f31434b;

    /* JADX INFO: compiled from: AutoValue_ClientInfo.java */
    static final class b extends k.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private k.b f31435a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private k3.a f31436b;

        b() {
        }

        @Override // k3.k.a
        public k a() {
            return new e(this.f31435a, this.f31436b);
        }

        @Override // k3.k.a
        public k.a b(k3.a aVar) {
            this.f31436b = aVar;
            return this;
        }

        @Override // k3.k.a
        public k.a c(k.b bVar) {
            this.f31435a = bVar;
            return this;
        }
    }

    @Override // k3.k
    public k3.a b() {
        return this.f31434b;
    }

    @Override // k3.k
    public k.b c() {
        return this.f31433a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        k.b bVar = this.f31433a;
        if (bVar != null ? bVar.equals(kVar.c()) : kVar.c() == null) {
            k3.a aVar = this.f31434b;
            if (aVar == null) {
                if (kVar.b() == null) {
                    return true;
                }
            } else if (aVar.equals(kVar.b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        k.b bVar = this.f31433a;
        int iHashCode = ((bVar == null ? 0 : bVar.hashCode()) ^ 1000003) * 1000003;
        k3.a aVar = this.f31434b;
        return iHashCode ^ (aVar != null ? aVar.hashCode() : 0);
    }

    public String toString() {
        return "ClientInfo{clientType=" + this.f31433a + ", androidClientInfo=" + this.f31434b + "}";
    }

    private e(k.b bVar, k3.a aVar) {
        this.f31433a = bVar;
        this.f31434b = aVar;
    }
}
