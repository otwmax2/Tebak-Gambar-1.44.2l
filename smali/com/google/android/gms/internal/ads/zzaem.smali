###### Class com.google.android.gms.internal.ads.zzaem (com.google.android.gms.internal.ads.zzaem)
.class final Lcom/google/android/gms/internal/ads/zzaem;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:I

.field private final b:J


# direct methods
.method synthetic constructor <init>(IJLcom/google/android/gms/internal/ads/zzael;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaem;->a:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaem;->b:J

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zzaem;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzaem;->a:I

    return p0
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzaem;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaem;->b:J

    return-wide v0
.end method
