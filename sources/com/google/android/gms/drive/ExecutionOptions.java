package com.google.android.gms.drive;

import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.internal.drive.zzaw;

/* JADX INFO: loaded from: classes.dex */
public class ExecutionOptions {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f7729a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f7730b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f7731c;

    public static class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected int f7732a = 0;
    }

    public final void a(zzaw zzawVar) {
        if (this.f7730b && !zzawVar.t0()) {
            throw new IllegalStateException("Application must define an exported DriveEventService subclass in AndroidManifest.xml to be notified on completion");
        }
    }

    public final String b() {
        return this.f7729a;
    }

    public final boolean c() {
        return this.f7730b;
    }

    public final int d() {
        return this.f7731c;
    }

    public boolean equals(Object obj) {
        if (obj != null && obj.getClass() == getClass()) {
            if (obj == this) {
                return true;
            }
            ExecutionOptions executionOptions = (ExecutionOptions) obj;
            if (Objects.b(this.f7729a, executionOptions.f7729a) && this.f7731c == executionOptions.f7731c && this.f7730b == executionOptions.f7730b) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.c(this.f7729a, Integer.valueOf(this.f7731c), Boolean.valueOf(this.f7730b));
    }
}
