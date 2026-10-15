###### Class com.google.android.gms.internal.ads.zzfgb (com.google.android.gms.internal.ads.zzfgb)
.class public final Lcom/google/android/gms/internal/ads/zzfgb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzfhi;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/android/gms/internal/ads/zzffq;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzffq;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfhi;

    invoke-direct {p3, p1}, Lcom/google/android/gms/internal/ads/zzfhi;-><init>(Landroid/view/View;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfgb;->a:Lcom/google/android/gms/internal/ads/zzfhi;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgb;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfgb;->c:Lcom/google/android/gms/internal/ads/zzffq;

    const-string p1, "Ad overlay"

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgb;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzffq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgb;->c:Lcom/google/android/gms/internal/ads/zzffq;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzfhi;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgb;->a:Lcom/google/android/gms/internal/ads/zzfhi;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgb;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgb;->b:Ljava/lang/String;

    return-object v0
.end method
