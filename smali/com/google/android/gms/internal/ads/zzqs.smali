###### Class com.google.android.gms.internal.ads.zzqs (com.google.android.gms.internal.ads.zzqs)
.class public final Lcom/google/android/gms/internal/ads/zzqs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzqx;

.field public final b:Landroid/media/MediaFormat;

.field public final c:Lcom/google/android/gms/internal/ads/zzaf;

.field public final d:Landroid/view/Surface;

.field public final e:Landroid/media/MediaCrypto;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzqx;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzaf;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->a:Lcom/google/android/gms/internal/ads/zzqx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqs;->b:Landroid/media/MediaFormat;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzqs;->c:Lcom/google/android/gms/internal/ads/zzaf;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzqs;->d:Landroid/view/Surface;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqs;->e:Landroid/media/MediaCrypto;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/zzqx;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzaf;Landroid/media/MediaCrypto;)Lcom/google/android/gms/internal/ads/zzqs;
    .registers 11

    new-instance p3, Lcom/google/android/gms/internal/ads/zzqs;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzqs;-><init>(Lcom/google/android/gms/internal/ads/zzqx;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzaf;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-object p3
.end method

.method public static b(Lcom/google/android/gms/internal/ads/zzqx;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzaf;Landroid/view/Surface;Landroid/media/MediaCrypto;)Lcom/google/android/gms/internal/ads/zzqs;
    .registers 12

    new-instance p4, Lcom/google/android/gms/internal/ads/zzqs;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzqs;-><init>(Lcom/google/android/gms/internal/ads/zzqx;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzaf;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-object p4
.end method
