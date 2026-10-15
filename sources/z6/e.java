package z6;

import t9.m;

/* JADX INFO: compiled from: SettingsCache.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Boolean f37255a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Double f37256b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Integer f37257c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Integer f37258d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Long f37259e;

    public e(Boolean bool, Double d10, Integer num, Integer num2, Long l10) {
        this.f37255a = bool;
        this.f37256b = d10;
        this.f37257c = num;
        this.f37258d = num2;
        this.f37259e = l10;
    }

    public final Integer a() {
        return this.f37258d;
    }

    public final Long b() {
        return this.f37259e;
    }

    public final Boolean c() {
        return this.f37255a;
    }

    public final Integer d() {
        return this.f37257c;
    }

    public final Double e() {
        return this.f37256b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return m.a(this.f37255a, eVar.f37255a) && m.a(this.f37256b, eVar.f37256b) && m.a(this.f37257c, eVar.f37257c) && m.a(this.f37258d, eVar.f37258d) && m.a(this.f37259e, eVar.f37259e);
    }

    public int hashCode() {
        Boolean bool = this.f37255a;
        int iHashCode = (bool == null ? 0 : bool.hashCode()) * 31;
        Double d10 = this.f37256b;
        int iHashCode2 = (iHashCode + (d10 == null ? 0 : d10.hashCode())) * 31;
        Integer num = this.f37257c;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.f37258d;
        int iHashCode4 = (iHashCode3 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Long l10 = this.f37259e;
        return iHashCode4 + (l10 != null ? l10.hashCode() : 0);
    }

    public String toString() {
        return "SessionConfigs(sessionEnabled=" + this.f37255a + ", sessionSamplingRate=" + this.f37256b + ", sessionRestartTimeout=" + this.f37257c + ", cacheDuration=" + this.f37258d + ", cacheUpdatedTime=" + this.f37259e + ')';
    }
}
