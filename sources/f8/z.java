package f8;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import f8.t;
import f8.y;
import java.io.IOException;

/* JADX INFO: compiled from: ResourceRequestHandler.java */
/* JADX INFO: loaded from: classes2.dex */
class z extends y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f29516a;

    z(Context context) {
        this.f29516a = context;
    }

    private static Bitmap j(Resources resources, int i10, w wVar) {
        BitmapFactory.Options optionsD = y.d(wVar);
        if (y.g(optionsD)) {
            BitmapFactory.decodeResource(resources, i10, optionsD);
            y.b(wVar.f29473h, wVar.f29474i, optionsD, wVar);
        }
        return BitmapFactory.decodeResource(resources, i10, optionsD);
    }

    @Override // f8.y
    public boolean c(w wVar) {
        if (wVar.f29470e != 0) {
            return true;
        }
        return "android.resource".equals(wVar.f29469d.getScheme());
    }

    @Override // f8.y
    public y.a f(w wVar, int i10) throws IOException {
        Resources resourcesO = e0.o(this.f29516a, wVar);
        return new y.a(j(resourcesO, e0.n(resourcesO, wVar), wVar), t.e.DISK);
    }
}
