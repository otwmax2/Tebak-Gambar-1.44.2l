package l3;

import java.util.Set;

/* JADX INFO: compiled from: TransportFactoryImpl.java */
/* JADX INFO: loaded from: classes.dex */
final class q implements j3.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<j3.b> f31948a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final p f31949b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final t f31950c;

    q(Set<j3.b> set, p pVar, t tVar) {
        this.f31948a = set;
        this.f31949b = pVar;
        this.f31950c = tVar;
    }

    @Override // j3.g
    public <T> j3.f<T> a(String str, Class<T> cls, j3.b bVar, j3.e<T, byte[]> eVar) {
        if (this.f31948a.contains(bVar)) {
            return new s(this.f31949b, str, bVar, eVar, this.f31950c);
        }
        throw new IllegalArgumentException(String.format("%s is not supported byt this factory. Supported encodings are: %s.", bVar, this.f31948a));
    }
}
