package f8;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.provider.MediaStore;
import com.facebook.share.internal.ShareConstants;
import f8.t;
import f8.y;
import java.io.IOException;

/* JADX INFO: compiled from: MediaStoreRequestHandler.java */
/* JADX INFO: loaded from: classes2.dex */
class o extends g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String[] f29395b = {"orientation"};

    /* JADX INFO: compiled from: MediaStoreRequestHandler.java */
    enum a {
        MICRO(3, 96, 96),
        MINI(1, 512, 384),
        FULL(2, -1, -1);


        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final int f29400o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final int f29401p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final int f29402q;

        a(int i10, int i11, int i12) {
            this.f29400o = i10;
            this.f29401p = i11;
            this.f29402q = i12;
        }
    }

    o(Context context) {
        super(context);
    }

    static int k(ContentResolver contentResolver, Uri uri) {
        Cursor cursorQuery = null;
        try {
            cursorQuery = contentResolver.query(uri, f29395b, null, null, null);
            if (cursorQuery != null && cursorQuery.moveToFirst()) {
                int i10 = cursorQuery.getInt(0);
                cursorQuery.close();
                return i10;
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return 0;
        } catch (RuntimeException unused) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return 0;
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    static a l(int i10, int i11) {
        a aVar = a.MICRO;
        if (i10 <= aVar.f29401p && i11 <= aVar.f29402q) {
            return aVar;
        }
        a aVar2 = a.MINI;
        return (i10 > aVar2.f29401p || i11 > aVar2.f29402q) ? a.FULL : aVar2;
    }

    @Override // f8.g, f8.y
    public boolean c(w wVar) {
        Uri uri = wVar.f29469d;
        return "content".equals(uri.getScheme()) && ShareConstants.WEB_DIALOG_PARAM_MEDIA.equals(uri.getAuthority());
    }

    @Override // f8.g, f8.y
    public y.a f(w wVar, int i10) throws IOException {
        Bitmap thumbnail;
        ContentResolver contentResolver = this.f29352a.getContentResolver();
        int iK = k(contentResolver, wVar.f29469d);
        String type = contentResolver.getType(wVar.f29469d);
        boolean z10 = type != null && type.startsWith("video/");
        if (wVar.c()) {
            a aVarL = l(wVar.f29473h, wVar.f29474i);
            if (!z10 && aVarL == a.FULL) {
                return new y.a(null, j(wVar), t.e.DISK, iK);
            }
            long id = ContentUris.parseId(wVar.f29469d);
            BitmapFactory.Options optionsD = y.d(wVar);
            optionsD.inJustDecodeBounds = true;
            y.a(wVar.f29473h, wVar.f29474i, aVarL.f29401p, aVarL.f29402q, optionsD, wVar);
            if (z10) {
                thumbnail = MediaStore.Video.Thumbnails.getThumbnail(contentResolver, id, aVarL == a.FULL ? 1 : aVarL.f29400o, optionsD);
            } else {
                thumbnail = MediaStore.Images.Thumbnails.getThumbnail(contentResolver, id, aVarL.f29400o, optionsD);
            }
            if (thumbnail != null) {
                return new y.a(thumbnail, null, t.e.DISK, iK);
            }
        }
        return new y.a(null, j(wVar), t.e.DISK, iK);
    }
}
