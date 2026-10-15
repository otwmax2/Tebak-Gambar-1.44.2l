package com.google.android.gms.internal.drive;

import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.drive.DriveId;

/* JADX INFO: loaded from: classes2.dex */
public final class zzf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final DriveId f21958a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f21959b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f21960c;

    public zzf(zzh zzhVar) {
        this.f21958a = zzhVar.f22020p;
        this.f21959b = zzhVar.f22019o;
        this.f21960c = zzhVar.f22021q;
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == zzf.class) {
            if (obj == this) {
                return true;
            }
            zzf zzfVar = (zzf) obj;
            if (Objects.b(this.f21958a, zzfVar.f21958a) && this.f21959b == zzfVar.f21959b && this.f21960c == zzfVar.f21960c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.c(this.f21958a, Integer.valueOf(this.f21959b), Integer.valueOf(this.f21960c));
    }

    public final String toString() {
        return String.format("FileTransferState[TransferType: %d, DriveId: %s, status: %d]", Integer.valueOf(this.f21959b), this.f21958a, Integer.valueOf(this.f21960c));
    }
}
