###### Class com.google.android.gms.internal.ads.zzflk (com.google.android.gms.internal.ads.zzflk)
.class final Lcom/google/android/gms/internal/ads/zzflk;
.super Lcom/google/android/gms/internal/ads/zzfmd;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfmd;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfmd;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzflk;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfmd;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzflk;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zzfme;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzflm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflk;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzflk;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzflm;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfll;)V

    return-object v0
.end method
