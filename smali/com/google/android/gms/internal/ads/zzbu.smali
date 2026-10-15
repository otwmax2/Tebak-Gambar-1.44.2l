###### Class com.google.android.gms.internal.ads.zzbu (com.google.android.gms.internal.ads.zzbu)
.class public Lcom/google/android/gms/internal/ads/zzbu;
.super Ljava/io/IOException;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final o:Z

.field public final p:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzbu;->o:Z

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzbu;->p:I

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbu;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/google/android/gms/internal/ads/zzbu;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbu;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbu;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbu;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbu;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbu;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbu;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    return-object v0
.end method
