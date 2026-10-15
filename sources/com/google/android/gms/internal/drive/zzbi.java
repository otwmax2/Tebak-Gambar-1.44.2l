package com.google.android.gms.internal.drive;

import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.IOUtils;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveContents;
import com.google.android.gms.drive.DriveId;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: loaded from: classes2.dex */
public final class zzbi implements DriveContents {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final GmsLogger f21835e = new GmsLogger("DriveContentsImpl", BuildConfig.FLAVOR);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Contents f21836a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f21837b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f21838c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f21839d = false;

    public zzbi(Contents contents) {
        this.f21836a = (Contents) Preconditions.k(contents);
    }

    @Override // com.google.android.gms.drive.DriveContents
    public final DriveId a() {
        return this.f21836a.V3();
    }

    @Override // com.google.android.gms.drive.DriveContents
    public final Contents g() {
        return this.f21836a;
    }

    @Override // com.google.android.gms.drive.DriveContents
    public final void h() {
        IOUtils.a(this.f21836a.W3());
        this.f21837b = true;
    }
}
