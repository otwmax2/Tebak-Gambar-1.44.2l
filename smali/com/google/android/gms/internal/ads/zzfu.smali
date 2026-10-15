###### Class com.google.android.gms.internal.ads.zzfu (com.google.android.gms.internal.ads.zzfu)
.class final Lcom/google/android/gms/internal/ads/zzfu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method static bridge synthetic a(Ljava/lang/Throwable;)Z
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfu;->b(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/Throwable;)Z
    .registers 2

    .line 1
    instance-of v0, p0, Landroid/system/ErrnoException;

    if-eqz v0, :cond_e

    check-cast p0, Landroid/system/ErrnoException;

    iget p0, p0, Landroid/system/ErrnoException;->errno:I

    sget v0, Landroid/system/OsConstants;->EACCES:I

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method
