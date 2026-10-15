package com.google.android.gms.drive.metadata.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.UserMetadata;
import java.util.Arrays;
import java.util.Collections;

/* JADX INFO: loaded from: classes.dex */
public final class zzu extends zzm<UserMetadata> {
    public zzu(String str, int i10) {
        super(str, Arrays.asList(g(str, "permissionId"), g(str, "displayName"), g(str, "picture"), g(str, "isAuthenticatedUser"), g(str, "emailAddress")), Collections.emptyList(), 6000000);
    }

    private static String g(String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(".");
        sb.append(str2);
        return sb.toString();
    }

    private final String h(String str) {
        return g(getName(), str);
    }

    @Override // com.google.android.gms.drive.metadata.zza
    protected final boolean e(DataHolder dataHolder, int i10, int i11) {
        return dataHolder.d4(h("permissionId")) && !dataHolder.e4(h("permissionId"), i10, i11);
    }

    @Override // com.google.android.gms.drive.metadata.zza
    protected final /* synthetic */ Object f(DataHolder dataHolder, int i10, int i11) {
        String strB4 = dataHolder.b4(h("permissionId"), i10, i11);
        if (strB4 == null) {
            return null;
        }
        String strB42 = dataHolder.b4(h("displayName"), i10, i11);
        String strB43 = dataHolder.b4(h("picture"), i10, i11);
        Boolean boolValueOf = Boolean.valueOf(dataHolder.V3(h("isAuthenticatedUser"), i10, i11));
        return new UserMetadata(strB4, strB42, strB43, boolValueOf.booleanValue(), dataHolder.b4(h("emailAddress"), i10, i11));
    }
}
