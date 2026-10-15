package androidx.core.os;

import android.os.LocaleList;
import java.util.Locale;

/* JADX INFO: compiled from: LocaleListPlatformWrapper.java */
/* JADX INFO: loaded from: classes.dex */
final class k implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LocaleList f2282a;

    k(Object obj) {
        this.f2282a = (LocaleList) obj;
    }

    @Override // androidx.core.os.j
    public String a() {
        return this.f2282a.toLanguageTags();
    }

    @Override // androidx.core.os.j
    public Object b() {
        return this.f2282a;
    }

    public boolean equals(Object obj) {
        return this.f2282a.equals(((j) obj).b());
    }

    @Override // androidx.core.os.j
    public Locale get(int i10) {
        return this.f2282a.get(i10);
    }

    public int hashCode() {
        return this.f2282a.hashCode();
    }

    @Override // androidx.core.os.j
    public boolean isEmpty() {
        return this.f2282a.isEmpty();
    }

    @Override // androidx.core.os.j
    public int size() {
        return this.f2282a.size();
    }

    public String toString() {
        return this.f2282a.toString();
    }
}
