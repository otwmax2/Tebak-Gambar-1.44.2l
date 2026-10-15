package r3;

import android.content.Context;
import javax.inject.Provider;
import s3.y;

/* JADX INFO: compiled from: SchedulingModule_WorkSchedulerFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class i implements n3.b<y> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Provider<Context> f34241a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Provider<t3.d> f34242b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Provider<s3.g> f34243c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Provider<v3.a> f34244d;

    public i(Provider<Context> provider, Provider<t3.d> provider2, Provider<s3.g> provider3, Provider<v3.a> provider4) {
        this.f34241a = provider;
        this.f34242b = provider2;
        this.f34243c = provider3;
        this.f34244d = provider4;
    }

    public static i a(Provider<Context> provider, Provider<t3.d> provider2, Provider<s3.g> provider3, Provider<v3.a> provider4) {
        return new i(provider, provider2, provider3, provider4);
    }

    public static y c(Context context, t3.d dVar, s3.g gVar, v3.a aVar) {
        return (y) n3.d.c(h.a(context, dVar, gVar, aVar), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public y get() {
        return c(this.f34241a.get(), this.f34242b.get(), this.f34243c.get(), this.f34244d.get());
    }
}
