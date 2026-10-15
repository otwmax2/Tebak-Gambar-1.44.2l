package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.os.Parcelable;

/* JADX INFO: loaded from: classes.dex */
public class IconCompatParcelizer {
    public static IconCompat read(androidx.versionedparcelable.a aVar) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f2206a = aVar.p(iconCompat.f2206a, 1);
        iconCompat.f2208c = aVar.j(iconCompat.f2208c, 2);
        iconCompat.f2209d = aVar.r(iconCompat.f2209d, 3);
        iconCompat.f2210e = aVar.p(iconCompat.f2210e, 4);
        iconCompat.f2211f = aVar.p(iconCompat.f2211f, 5);
        iconCompat.f2212g = (ColorStateList) aVar.r(iconCompat.f2212g, 6);
        iconCompat.f2214i = aVar.t(iconCompat.f2214i, 7);
        iconCompat.f2215j = aVar.t(iconCompat.f2215j, 8);
        iconCompat.o();
        return iconCompat;
    }

    public static void write(IconCompat iconCompat, androidx.versionedparcelable.a aVar) {
        aVar.x(true, true);
        iconCompat.p(aVar.f());
        int i10 = iconCompat.f2206a;
        if (-1 != i10) {
            aVar.F(i10, 1);
        }
        byte[] bArr = iconCompat.f2208c;
        if (bArr != null) {
            aVar.B(bArr, 2);
        }
        Parcelable parcelable = iconCompat.f2209d;
        if (parcelable != null) {
            aVar.H(parcelable, 3);
        }
        int i11 = iconCompat.f2210e;
        if (i11 != 0) {
            aVar.F(i11, 4);
        }
        int i12 = iconCompat.f2211f;
        if (i12 != 0) {
            aVar.F(i12, 5);
        }
        ColorStateList colorStateList = iconCompat.f2212g;
        if (colorStateList != null) {
            aVar.H(colorStateList, 6);
        }
        String str = iconCompat.f2214i;
        if (str != null) {
            aVar.J(str, 7);
        }
        String str2 = iconCompat.f2215j;
        if (str2 != null) {
            aVar.J(str2, 8);
        }
    }
}
