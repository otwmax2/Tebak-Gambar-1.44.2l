package androidx.room;

import b1.h;

/* JADX INFO: compiled from: AutoClosingRoomOpenHelperFactory.java */
/* JADX INFO: loaded from: classes.dex */
final class h implements h.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h.c f4054a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a f4055b;

    h(h.c cVar, a aVar) {
        this.f4054a = cVar;
        this.f4055b = aVar;
    }

    @Override // b1.h.c
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public f a(h.b bVar) {
        return new f(this.f4054a.a(bVar), this.f4055b);
    }
}
