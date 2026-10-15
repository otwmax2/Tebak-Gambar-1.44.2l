package b1;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.List;

/* JADX INFO: compiled from: SupportSQLiteCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {
    public static List<Uri> a(Cursor cursor) {
        return cursor.getNotificationUris();
    }

    public static void b(Cursor cursor, ContentResolver contentResolver, List<Uri> list) {
        cursor.setNotificationUris(contentResolver, list);
    }
}
