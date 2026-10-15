###### Class com.google.android.gms.internal.ads.zzadn (com.google.android.gms.internal.ads.zzadn)
.class final Lcom/google/android/gms/internal/ads/zzadn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:I


# direct methods
.method public constructor <init>(IZI)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzadn;->a:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzadn;->b:Z

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzadn;->c:I

    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zzadn;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzadn;->c:I

    return p0
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzadn;)I
    .registers 1

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzadn;->a:I

    return p0
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/ads/zzadn;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzadn;->b:Z

    return p0
.end method
