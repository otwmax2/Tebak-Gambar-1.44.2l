package i1;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

/* JADX INFO: compiled from: WorkInfo.java */
/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private UUID f30369a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f30370b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private androidx.work.b f30371c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Set<String> f30372d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private androidx.work.b f30373e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f30374f;

    /* JADX INFO: compiled from: WorkInfo.java */
    public enum a {
        ENQUEUED,
        RUNNING,
        SUCCEEDED,
        FAILED,
        BLOCKED,
        CANCELLED;

        public boolean c() {
            return this == SUCCEEDED || this == FAILED || this == CANCELLED;
        }
    }

    public s(UUID uuid, a aVar, androidx.work.b bVar, List<String> list, androidx.work.b bVar2, int i10) {
        this.f30369a = uuid;
        this.f30370b = aVar;
        this.f30371c = bVar;
        this.f30372d = new HashSet(list);
        this.f30373e = bVar2;
        this.f30374f = i10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || s.class != obj.getClass()) {
            return false;
        }
        s sVar = (s) obj;
        if (this.f30374f == sVar.f30374f && this.f30369a.equals(sVar.f30369a) && this.f30370b == sVar.f30370b && this.f30371c.equals(sVar.f30371c) && this.f30372d.equals(sVar.f30372d)) {
            return this.f30373e.equals(sVar.f30373e);
        }
        return false;
    }

    public int hashCode() {
        return (((((((((this.f30369a.hashCode() * 31) + this.f30370b.hashCode()) * 31) + this.f30371c.hashCode()) * 31) + this.f30372d.hashCode()) * 31) + this.f30373e.hashCode()) * 31) + this.f30374f;
    }

    public String toString() {
        return "WorkInfo{mId='" + this.f30369a + "', mState=" + this.f30370b + ", mOutputData=" + this.f30371c + ", mTags=" + this.f30372d + ", mProgress=" + this.f30373e + '}';
    }
}
