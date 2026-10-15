package androidx.core.graphics.drawable;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Build;

/* JADX INFO: compiled from: RoundedBitmapDrawableFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: compiled from: RoundedBitmapDrawableFactory.java */
    private static class a extends c {
        a(Resources resources, Bitmap bitmap) {
            super(resources, bitmap);
        }

        @Override // androidx.core.graphics.drawable.c
        void c(int i10, int i11, int i12, Rect rect, Rect rect2) {
            androidx.core.view.e.a(i10, i11, i12, rect, rect2, 0);
        }
    }

    public static c a(Resources resources, Bitmap bitmap) {
        return Build.VERSION.SDK_INT >= 21 ? new b(resources, bitmap) : new a(resources, bitmap);
    }
}
