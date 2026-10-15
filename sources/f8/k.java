package f8;

import android.content.Context;
import android.media.ExifInterface;
import android.net.Uri;
import com.facebook.share.internal.ShareInternalUtility;
import f8.t;
import f8.y;
import java.io.IOException;

/* JADX INFO: compiled from: FileRequestHandler.java */
/* JADX INFO: loaded from: classes2.dex */
class k extends g {
    k(Context context) {
        super(context);
    }

    static int k(Uri uri) throws IOException {
        int attributeInt = new ExifInterface(uri.getPath()).getAttributeInt("Orientation", 1);
        if (attributeInt == 3) {
            return 180;
        }
        if (attributeInt != 6) {
            return attributeInt != 8 ? 0 : 270;
        }
        return 90;
    }

    @Override // f8.g, f8.y
    public boolean c(w wVar) {
        return ShareInternalUtility.STAGING_PARAM.equals(wVar.f29469d.getScheme());
    }

    @Override // f8.g, f8.y
    public y.a f(w wVar, int i10) throws IOException {
        return new y.a(null, j(wVar), t.e.DISK, k(wVar.f29469d));
    }
}
