package i5;

import android.text.TextUtils;
import com.google.android.gms.common.internal.LibraryVersion;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class x0 {
    static String a() {
        return b("firebase-auth");
    }

    private static String b(String str) throws Throwable {
        String strB = LibraryVersion.a().b(str);
        return (TextUtils.isEmpty(strB) || strB.equals("UNKNOWN")) ? "-1" : strB;
    }
}
