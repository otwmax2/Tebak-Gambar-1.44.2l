###### Class com.google.android.gms.internal.ads.zzjh (com.google.android.gms.internal.ads.zzjh)
.class final Lcom/google/android/gms/internal/ads/zzjh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/util/List;

.field private final b:I

.field private final c:J

.field private final d:Lcom/google/android/gms/internal/ads/zzum;


# direct methods
.method synthetic constructor <init>(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzum;IJLcom/google/android/gms/internal/ads/zzjg;[B)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjh;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzjh;->d:Lcom/google/android/gms/internal/ads/zzum;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzjh;->b:I

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzjh;->c:J

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zzjh;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzjh;->b:I

    return p0
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzjh;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjh;->c:J

    return-wide v0
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/ads/zzjh;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjh;->a:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/google/android/gms/internal/ads/zzjh;)Lcom/google/android/gms/internal/ads/zzum;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjh;->d:Lcom/google/android/gms/internal/ads/zzum;

    return-object p0
.end method
