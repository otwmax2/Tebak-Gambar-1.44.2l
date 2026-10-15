package e9;

import android.annotation.SuppressLint;

/* JADX INFO: compiled from: PreferenceStoreStrategy.java */
/* JADX INFO: loaded from: classes2.dex */
public class c<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f28969a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d<T> f28970b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f28971c;

    public c(a aVar, d<T> dVar, String str) {
        this.f28969a = aVar;
        this.f28970b = dVar;
        this.f28971c = str;
    }

    @SuppressLint({"CommitPrefEdits"})
    public void a() {
        this.f28969a.a().remove(this.f28971c).commit();
    }

    public T b() {
        return this.f28970b.a(this.f28969a.get().getString(this.f28971c, null));
    }

    @SuppressLint({"CommitPrefEdits"})
    public void c(T t10) {
        a aVar = this.f28969a;
        aVar.b(aVar.a().putString(this.f28971c, this.f28970b.b(t10)));
    }
}
