package y8;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.net.Uri;
import android.view.ViewGroup;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: Screenshot.java */
/* JADX INFO: loaded from: classes2.dex */
public class s {

    /* JADX INFO: compiled from: Screenshot.java */
    public interface a {
        void a();

        void b(Uri uri);
    }

    public static void d(final boolean z10, final Activity activity, final a aVar, t1.c cVar) throws n {
        o.a(activity, new String[]{"android.permission.READ_EXTERNAL_STORAGE", "android.permission.WRITE_EXTERNAL_STORAGE"});
        aVar.a();
        t1.h.e(new Callable() { // from class: y8.p
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return s.e(activity, z10);
            }
        }, cVar).k(new t1.f() { // from class: y8.q
            @Override // t1.f
            public final Object a(t1.h hVar) {
                return s.f(activity, hVar);
            }
        }, cVar).j(new t1.f() { // from class: y8.r
            @Override // t1.f
            public final Object a(t1.h hVar) {
                return s.g(aVar, hVar);
            }
        }, t1.h.f35199k, cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Bitmap e(Activity activity, boolean z10) throws Exception {
        Bitmap bitmapH = h(activity);
        if (!z10) {
            return bitmapH;
        }
        Bitmap.Config config = bitmapH.getConfig();
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        new Paint().setColor(-1);
        int iMax = Math.max(bitmapH.getWidth(), bitmapH.getHeight());
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMax, iMax, config);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        canvas.drawColor(-1);
        canvas.drawBitmap(bitmapH, (iMax - bitmapH.getWidth()) / 2, (iMax - bitmapH.getHeight()) / 2, (Paint) null);
        return bitmapCreateBitmap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Uri f(Activity activity, t1.h hVar) throws Exception {
        if (hVar.r() != null) {
            com.google.firebase.crashlytics.a.a().d(hVar.r());
        }
        if (hVar.s() != null) {
            return h.t(activity, (Bitmap) hVar.s());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Void g(a aVar, t1.h hVar) throws Exception {
        if (hVar.r() != null) {
            com.google.firebase.crashlytics.a.a().d(hVar.r());
        }
        aVar.b((Uri) hVar.s());
        return null;
    }

    private static Bitmap h(Activity activity) {
        ViewGroup viewGroup = (ViewGroup) ((ViewGroup) activity.getWindow().getDecorView()).getChildAt(0);
        viewGroup.setDrawingCacheEnabled(true);
        viewGroup.buildDrawingCache();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(viewGroup.getDrawingCache(true));
        viewGroup.setDrawingCacheEnabled(false);
        return bitmapCreateBitmap;
    }
}
