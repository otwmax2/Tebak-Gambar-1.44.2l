package com.google.firebase.messaging;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Objects;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.firebase:firebase-messaging@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class r0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Pattern f26520d = Pattern.compile("[a-zA-Z0-9-_.~%]{1,900}");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f26521a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f26522b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f26523c;

    private r0(String str, String str2) {
        this.f26521a = d(str2, str);
        this.f26522b = str;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("!");
        sb.append(str2);
        this.f26523c = sb.toString();
    }

    static r0 a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] strArrSplit = str.split("!", -1);
        if (strArrSplit.length != 2) {
            return null;
        }
        return new r0(strArrSplit[0], strArrSplit[1]);
    }

    private static String d(String str, String str2) {
        if (str != null && str.startsWith("/topics/")) {
            Log.w("FirebaseMessaging", String.format("Format /topics/topic-name is deprecated. Only 'topic-name' should be used in %s.", str2));
            str = str.substring(8);
        }
        if (str == null || !f26520d.matcher(str).matches()) {
            throw new IllegalArgumentException(String.format("Invalid topic name: %s does not match the allowed format %s.", str, "[a-zA-Z0-9-_.~%]{1,900}"));
        }
        return str;
    }

    public String b() {
        return this.f26522b;
    }

    public String c() {
        return this.f26521a;
    }

    public String e() {
        return this.f26523c;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof r0)) {
            return false;
        }
        r0 r0Var = (r0) obj;
        return this.f26521a.equals(r0Var.f26521a) && this.f26522b.equals(r0Var.f26522b);
    }

    public int hashCode() {
        return Objects.c(this.f26522b, this.f26521a);
    }
}
