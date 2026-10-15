package com.google.android.gms.drive.metadata.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f7805a;

    public final boolean a() {
        return this.f7805a.startsWith("application/vnd.google-apps");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != zzk.class) {
            return false;
        }
        return this.f7805a.equals(((zzk) obj).f7805a);
    }

    public final int hashCode() {
        return this.f7805a.hashCode();
    }

    public final String toString() {
        return this.f7805a;
    }
}
