package com.google.android.gms.internal.drive;

import com.google.android.gms.common.internal.Objects;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
public final class zze implements com.google.android.gms.drive.events.zzk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.android.gms.drive.events.zzm f21939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f21940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f21941c;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.drive.events.zzm, com.google.android.gms.internal.drive.zzf] */
    public zze(zzh zzhVar) {
        this.f21939a = new zzf(zzhVar);
        this.f21940b = zzhVar.f22022r;
        this.f21941c = zzhVar.f22023s;
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == zze.class) {
            if (obj == this) {
                return true;
            }
            zze zzeVar = (zze) obj;
            if (Objects.b(this.f21939a, zzeVar.f21939a) && this.f21940b == zzeVar.f21940b && this.f21941c == zzeVar.f21941c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.c(Long.valueOf(this.f21941c), Long.valueOf(this.f21940b), Long.valueOf(this.f21941c));
    }

    public final String toString() {
        return String.format(Locale.US, "FileTransferProgress[FileTransferState: %s, BytesTransferred: %d, TotalBytes: %d]", this.f21939a.toString(), Long.valueOf(this.f21940b), Long.valueOf(this.f21941c));
    }
}
