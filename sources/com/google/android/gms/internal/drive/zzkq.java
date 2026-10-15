package com.google.android.gms.internal.drive;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class zzkq extends IOException {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private zzlq f22198o;

    public zzkq(String str) {
        super(str);
        this.f22198o = null;
    }

    static zzkq a() {
        return new zzkq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    static zzkq b() {
        return new zzkq("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    static zzkr c() {
        return new zzkr("Protocol message tag had invalid wire type.");
    }
}
