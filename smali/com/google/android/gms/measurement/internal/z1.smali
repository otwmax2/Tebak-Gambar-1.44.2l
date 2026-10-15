###### Class com.google.android.gms.measurement.internal.z1 (com.google.android.gms.measurement.internal.z1)
.class final Lcom/google/android/gms/measurement/internal/z1;
.super Lcom/google/android/gms/measurement/internal/r3;
.source "com.google.android.gms:play-services-measurement@@20.1.2"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzli;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/r3;-><init>(Lcom/google/android/gms/measurement/internal/zzli;)V

    return-void
.end method

.method static final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "This implementation should not be used."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected final g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
