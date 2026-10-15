package f8;

import android.content.Context;
import f8.t;
import f8.y;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: ContentStreamRequestHandler.java */
/* JADX INFO: loaded from: classes2.dex */
class g extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Context f29352a;

    g(Context context) {
        this.f29352a = context;
    }

    @Override // f8.y
    public boolean c(w wVar) {
        return "content".equals(wVar.f29469d.getScheme());
    }

    @Override // f8.y
    public y.a f(w wVar, int i10) throws IOException {
        return new y.a(j(wVar), t.e.DISK);
    }

    InputStream j(w wVar) throws FileNotFoundException {
        return this.f29352a.getContentResolver().openInputStream(wVar.f29469d);
    }
}
