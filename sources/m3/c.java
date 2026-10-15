package m3;

import android.content.Context;
import java.util.Objects;

/* JADX INFO: compiled from: AutoValue_CreationContext.java */
/* JADX INFO: loaded from: classes.dex */
final class c extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f32133a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v3.a f32134b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final v3.a f32135c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f32136d;

    c(Context context, v3.a aVar, v3.a aVar2, String str) {
        Objects.requireNonNull(context, "Null applicationContext");
        this.f32133a = context;
        Objects.requireNonNull(aVar, "Null wallClock");
        this.f32134b = aVar;
        Objects.requireNonNull(aVar2, "Null monotonicClock");
        this.f32135c = aVar2;
        Objects.requireNonNull(str, "Null backendName");
        this.f32136d = str;
    }

    @Override // m3.h
    public Context b() {
        return this.f32133a;
    }

    @Override // m3.h
    public String c() {
        return this.f32136d;
    }

    @Override // m3.h
    public v3.a d() {
        return this.f32135c;
    }

    @Override // m3.h
    public v3.a e() {
        return this.f32134b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f32133a.equals(hVar.b()) && this.f32134b.equals(hVar.e()) && this.f32135c.equals(hVar.d()) && this.f32136d.equals(hVar.c());
    }

    public int hashCode() {
        return ((((((this.f32133a.hashCode() ^ 1000003) * 1000003) ^ this.f32134b.hashCode()) * 1000003) ^ this.f32135c.hashCode()) * 1000003) ^ this.f32136d.hashCode();
    }

    public String toString() {
        return "CreationContext{applicationContext=" + this.f32133a + ", wallClock=" + this.f32134b + ", monotonicClock=" + this.f32135c + ", backendName=" + this.f32136d + "}";
    }
}
