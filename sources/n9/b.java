package n9;

import ba.q;
import com.facebook.internal.NativeProtocol;
import t9.m;

/* JADX INFO: compiled from: PlatformImplementations.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f32512a;

    /* JADX WARN: Removed duplicated region for block: B:35:0x00b8 A[Catch: ClassCastException -> 0x00bd, ClassNotFoundException -> 0x00f3, TRY_ENTER, TryCatch #4 {ClassCastException -> 0x00bd, blocks: (B:35:0x00b8, B:38:0x00bf, B:39:0x00c4), top: B:64:0x00b6, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00bf A[Catch: ClassCastException -> 0x00bd, ClassNotFoundException -> 0x00f3, TryCatch #4 {ClassCastException -> 0x00bd, blocks: (B:35:0x00b8, B:38:0x00bf, B:39:0x00c4), top: B:64:0x00b6, outer: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00ad A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            Method dump skipped, instruction units count: 324
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: n9.b.<clinit>():void");
    }

    private static final int a() {
        String property = System.getProperty("java.specification.version");
        if (property == null) {
            return NativeProtocol.MESSAGE_GET_LIKE_STATUS_REQUEST;
        }
        int iF = q.F(property, '.', 0, false, 6, null);
        if (iF < 0) {
            try {
                return Integer.parseInt(property) * NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST;
            } catch (NumberFormatException unused) {
                return NativeProtocol.MESSAGE_GET_LIKE_STATUS_REQUEST;
            }
        }
        int i10 = iF + 1;
        int iF2 = q.F(property, '.', i10, false, 4, null);
        if (iF2 < 0) {
            iF2 = property.length();
        }
        String strSubstring = property.substring(0, iF);
        m.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        String strSubstring2 = property.substring(i10, iF2);
        m.d(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
        try {
            return (Integer.parseInt(strSubstring) * NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST) + Integer.parseInt(strSubstring2);
        } catch (NumberFormatException unused2) {
            return NativeProtocol.MESSAGE_GET_LIKE_STATUS_REQUEST;
        }
    }
}
