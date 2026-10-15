package a4;

import android.graphics.Canvas;
import android.os.Build;

/* JADX INFO: compiled from: CanvasCompat.java */
/* JADX INFO: loaded from: classes2.dex */
public class a {
    public static int a(Canvas canvas, float f10, float f11, float f12, float f13, int i10) {
        return Build.VERSION.SDK_INT > 21 ? canvas.saveLayerAlpha(f10, f11, f12, f13, i10) : canvas.saveLayerAlpha(f10, f11, f12, f13, i10, 31);
    }
}
