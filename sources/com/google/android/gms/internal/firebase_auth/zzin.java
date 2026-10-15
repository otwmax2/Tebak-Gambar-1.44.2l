package com.google.android.gms.internal.firebase_auth;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public class zzin extends IOException {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private zzjn f22769o;

    public zzin(String str) {
        super(str);
        this.f22769o = null;
    }

    static zzin a() {
        return new zzin("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    static zzin b() {
        return new zzin("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    static zziq c() {
        return new zziq("Protocol message tag had invalid wire type.");
    }
}
