package com.google.android.gms.internal.auth;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzew extends IOException {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private zzfq f21498o;

    public zzew(IOException iOException) {
        super(iOException.getMessage(), iOException);
        this.f21498o = null;
    }

    static zzew a() {
        return new zzew("Protocol message contained an invalid tag (zero).");
    }

    static zzew b() {
        return new zzew("Protocol message had invalid UTF-8.");
    }

    static zzew c() {
        return new zzew("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    static zzew d() {
        return new zzew("Failed to parse the message.");
    }

    static zzew f() {
        return new zzew("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public final zzew e(zzfq zzfqVar) {
        this.f21498o = zzfqVar;
        return this;
    }

    public zzew(String str) {
        super(str);
        this.f21498o = null;
    }
}
