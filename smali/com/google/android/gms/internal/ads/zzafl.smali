###### Class com.google.android.gms.internal.ads.zzafl (com.google.android.gms.internal.ads.zzafl)
.class final Lcom/google/android/gms/internal/ads/zzafl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[B

.field private final c:J

.field private final d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[BJJ)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafl;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzafl;->b:[B

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzafl;->c:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzafl;->d:J

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zzafl;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzafl;->c:J

    return-wide v0
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzafl;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzafl;->d:J

    return-wide v0
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/ads/zzafl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzafl;->a:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/google/android/gms/internal/ads/zzafl;)[B
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzafl;->b:[B

    return-object p0
.end method
