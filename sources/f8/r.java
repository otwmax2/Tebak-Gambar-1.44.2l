package f8;

import android.graphics.Bitmap;
import android.net.NetworkInfo;
import com.facebook.gamingservices.internal.TournamentShareDialogURIBuilder;
import f8.j;
import f8.t;
import f8.y;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: NetworkRequestHandler.java */
/* JADX INFO: loaded from: classes2.dex */
class r extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final j f29412a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final a0 f29413b;

    /* JADX INFO: compiled from: NetworkRequestHandler.java */
    static class a extends IOException {
        public a(String str) {
            super(str);
        }
    }

    public r(j jVar, a0 a0Var) {
        this.f29412a = jVar;
        this.f29413b = a0Var;
    }

    @Override // f8.y
    public boolean c(w wVar) {
        String scheme = wVar.f29469d.getScheme();
        return "http".equals(scheme) || TournamentShareDialogURIBuilder.scheme.equals(scheme);
    }

    @Override // f8.y
    int e() {
        return 2;
    }

    @Override // f8.y
    public y.a f(w wVar, int i10) throws IOException {
        j.a aVarA = this.f29412a.a(wVar.f29469d, wVar.f29468c);
        if (aVarA == null) {
            return null;
        }
        t.e eVar = aVarA.f29378c ? t.e.DISK : t.e.NETWORK;
        Bitmap bitmapA = aVarA.a();
        if (bitmapA != null) {
            return new y.a(bitmapA, eVar);
        }
        InputStream inputStreamC = aVarA.c();
        if (inputStreamC == null) {
            return null;
        }
        if (eVar == t.e.DISK && aVarA.b() == 0) {
            e0.e(inputStreamC);
            throw new a("Received response with 0 content-length header.");
        }
        if (eVar == t.e.NETWORK && aVarA.b() > 0) {
            this.f29413b.f(aVarA.b());
        }
        return new y.a(inputStreamC, eVar);
    }

    @Override // f8.y
    boolean h(boolean z10, NetworkInfo networkInfo) {
        return networkInfo == null || networkInfo.isConnected();
    }

    @Override // f8.y
    boolean i() {
        return true;
    }
}
