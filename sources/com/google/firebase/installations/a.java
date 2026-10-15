package com.google.firebase.installations;

import com.google.firebase.installations.g;
import com.vungle.mediation.BuildConfig;
import java.util.Objects;

/* JADX INFO: compiled from: AutoValue_InstallationTokenResult.java */
/* JADX INFO: loaded from: classes2.dex */
final class a extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f26337a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f26338b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f26339c;

    /* JADX INFO: compiled from: AutoValue_InstallationTokenResult.java */
    static final class b extends g.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f26340a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Long f26341b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Long f26342c;

        b() {
        }

        @Override // com.google.firebase.installations.g.a
        public g a() {
            String str = this.f26340a;
            String str2 = BuildConfig.FLAVOR;
            if (str == null) {
                str2 = BuildConfig.FLAVOR + " token";
            }
            if (this.f26341b == null) {
                str2 = str2 + " tokenExpirationTimestamp";
            }
            if (this.f26342c == null) {
                str2 = str2 + " tokenCreationTimestamp";
            }
            if (str2.isEmpty()) {
                return new a(this.f26340a, this.f26341b.longValue(), this.f26342c.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // com.google.firebase.installations.g.a
        public g.a b(String str) {
            Objects.requireNonNull(str, "Null token");
            this.f26340a = str;
            return this;
        }

        @Override // com.google.firebase.installations.g.a
        public g.a c(long j10) {
            this.f26342c = Long.valueOf(j10);
            return this;
        }

        @Override // com.google.firebase.installations.g.a
        public g.a d(long j10) {
            this.f26341b = Long.valueOf(j10);
            return this;
        }
    }

    @Override // com.google.firebase.installations.g
    public String b() {
        return this.f26337a;
    }

    @Override // com.google.firebase.installations.g
    public long c() {
        return this.f26339c;
    }

    @Override // com.google.firebase.installations.g
    public long d() {
        return this.f26338b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f26337a.equals(gVar.b()) && this.f26338b == gVar.d() && this.f26339c == gVar.c();
    }

    public int hashCode() {
        int iHashCode = (this.f26337a.hashCode() ^ 1000003) * 1000003;
        long j10 = this.f26338b;
        long j11 = this.f26339c;
        return ((iHashCode ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)));
    }

    public String toString() {
        return "InstallationTokenResult{token=" + this.f26337a + ", tokenExpirationTimestamp=" + this.f26338b + ", tokenCreationTimestamp=" + this.f26339c + "}";
    }

    private a(String str, long j10, long j11) {
        this.f26337a = str;
        this.f26338b = j10;
        this.f26339c = j11;
    }
}
