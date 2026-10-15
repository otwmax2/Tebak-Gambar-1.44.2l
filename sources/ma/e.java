package ma;

import java.io.IOException;

/* JADX INFO: compiled from: RouteException.java */
/* JADX INFO: loaded from: classes2.dex */
public final class e extends RuntimeException {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private IOException f32251o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private IOException f32252p;

    public e(IOException iOException) {
        super(iOException);
        this.f32251o = iOException;
        this.f32252p = iOException;
    }

    public void a(IOException iOException) {
        ka.c.a(this.f32251o, iOException);
        this.f32252p = iOException;
    }

    public IOException b() {
        return this.f32251o;
    }

    public IOException c() {
        return this.f32252p;
    }
}
