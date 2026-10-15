package q5;

import java.io.File;
import java.io.IOException;

/* JADX INFO: compiled from: CrashlyticsFileMarker.java */
/* JADX INFO: loaded from: classes2.dex */
class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f34022a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final v5.f f34023b;

    public s(String str, v5.f fVar) {
        this.f34022a = str;
        this.f34023b = fVar;
    }

    private File b() {
        return this.f34023b.e(this.f34022a);
    }

    public boolean a() {
        try {
            return b().createNewFile();
        } catch (IOException e10) {
            n5.g.f().e("Error creating marker: " + this.f34022a, e10);
            return false;
        }
    }

    public boolean c() {
        return b().exists();
    }

    public boolean d() {
        return b().delete();
    }
}
