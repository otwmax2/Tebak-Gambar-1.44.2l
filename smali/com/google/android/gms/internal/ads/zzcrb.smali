###### Class com.google.android.gms.internal.ads.zzcrb (com.google.android.gms.internal.ads.zzcrb)
.class public final Lcom/google/android/gms/internal/ads/zzcrb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzeyo;

.field private final b:Lcom/google/android/gms/internal/ads/zzeyc;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeyo;Lcom/google/android/gms/internal/ads/zzeyc;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrb;->a:Lcom/google/android/gms/internal/ads/zzeyo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcrb;->b:Lcom/google/android/gms/internal/ads/zzeyc;

    if-nez p3, :cond_b

    const-string p3, "com.google.ads.mediation.admob.AdMobAdapter"

    :cond_b
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcrb;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzeyc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrb;->b:Lcom/google/android/gms/internal/ads/zzeyc;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzeyf;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrb;->a:Lcom/google/android/gms/internal/ads/zzeyo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyo;->b:Lcom/google/android/gms/internal/ads/zzeyn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyn;->b:Lcom/google/android/gms/internal/ads/zzeyf;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zzeyo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrb;->a:Lcom/google/android/gms/internal/ads/zzeyo;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrb;->c:Ljava/lang/String;

    return-object v0
.end method
