package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zzgqy extends IOException {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private zzgrw f19495o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f19496p;

    public zzgqy(IOException iOException) {
        super(iOException.getMessage(), iOException);
        this.f19495o = null;
    }

    static zzgqx a() {
        return new zzgqx("Protocol message tag had invalid wire type.");
    }

    static zzgqy b() {
        return new zzgqy("Protocol message end-group tag did not match expected tag.");
    }

    static zzgqy c() {
        return new zzgqy("Protocol message contained an invalid tag (zero).");
    }

    static zzgqy d() {
        return new zzgqy("Protocol message had invalid UTF-8.");
    }

    static zzgqy e() {
        return new zzgqy("CodedInputStream encountered a malformed varint.");
    }

    static zzgqy f() {
        return new zzgqy("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    static zzgqy g() {
        return new zzgqy("Failed to parse the message.");
    }

    static zzgqy i() {
        return new zzgqy("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    static zzgqy j() {
        return new zzgqy("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public final zzgqy h(zzgrw zzgrwVar) {
        this.f19495o = zzgrwVar;
        return this;
    }

    final void k() {
        this.f19496p = true;
    }

    final boolean l() {
        return this.f19496p;
    }

    public zzgqy(String str) {
        super(str);
        this.f19495o = null;
    }
}
