package com.google.android.gms.drive;

import com.google.android.gms.common.internal.Objects;

/* JADX INFO: loaded from: classes.dex */
public class TransferPreferencesBuilder {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final TransferPreferences f7745d = new a(1, true, 256);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f7746a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f7747b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f7748c;

    static class a implements TransferPreferences {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final int f7749o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final boolean f7750p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final int f7751q;

        a(int i10, boolean z10, int i11) {
            this.f7749o = i10;
            this.f7750p = z10;
            this.f7751q = i11;
        }

        @Override // com.google.android.gms.drive.TransferPreferences
        public final boolean H() {
            return this.f7750p;
        }

        @Override // com.google.android.gms.drive.TransferPreferences
        public final int S() {
            return this.f7751q;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && a.class == obj.getClass()) {
                a aVar = (a) obj;
                if (aVar.f7749o == this.f7749o && aVar.f7750p == this.f7750p && aVar.f7751q == this.f7751q) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Objects.c(Integer.valueOf(this.f7749o), Boolean.valueOf(this.f7750p), Integer.valueOf(this.f7751q));
        }

        public final String toString() {
            return String.format("NetworkPreference: %s, IsRoamingAllowed %s, BatteryUsagePreference %s", Integer.valueOf(this.f7749o), Boolean.valueOf(this.f7750p), Integer.valueOf(this.f7751q));
        }

        @Override // com.google.android.gms.drive.TransferPreferences
        public final int w1() {
            return this.f7749o;
        }
    }

    public TransferPreferencesBuilder() {
        this(f7745d);
    }

    public TransferPreferences a() {
        return new a(this.f7746a, this.f7747b, this.f7748c);
    }

    public TransferPreferencesBuilder(TransferPreferences transferPreferences) {
        this.f7746a = transferPreferences.w1();
        this.f7747b = transferPreferences.H();
        this.f7748c = transferPreferences.S();
    }

    public TransferPreferencesBuilder(FileUploadPreferences fileUploadPreferences) {
        this.f7746a = fileUploadPreferences.y0();
        this.f7747b = fileUploadPreferences.H();
        this.f7748c = fileUploadPreferences.S();
    }
}
