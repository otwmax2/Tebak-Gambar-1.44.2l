package u6;

/* JADX INFO: compiled from: FirebaseRemoteConfigSettings.java */
/* JADX INFO: loaded from: classes2.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f35609a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f35610b;

    /* JADX INFO: compiled from: FirebaseRemoteConfigSettings.java */
    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private long f35611a = 60;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f35612b = com.google.firebase.remoteconfig.internal.k.f26636j;

        public j c() {
            return new j(this);
        }

        public b d(long j10) {
            if (j10 >= 0) {
                this.f35612b = j10;
                return this;
            }
            throw new IllegalArgumentException("Minimum interval between fetches has to be a non-negative number. " + j10 + " is an invalid argument");
        }
    }

    public long a() {
        return this.f35609a;
    }

    public long b() {
        return this.f35610b;
    }

    private j(b bVar) {
        this.f35609a = bVar.f35611a;
        this.f35610b = bVar.f35612b;
    }
}
