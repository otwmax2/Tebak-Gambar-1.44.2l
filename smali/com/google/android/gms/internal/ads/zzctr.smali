###### Class com.google.android.gms.internal.ads.zzctr (com.google.android.gms.internal.ads.zzctr)
.class public final Lcom/google/android/gms/internal/ads/zzctr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzeyo;

.field private final b:Lcom/google/android/gms/internal/ads/zzeyc;

.field private final c:Lcom/google/android/gms/internal/ads/zzeeh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeyo;Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzeeh;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctr;->a:Lcom/google/android/gms/internal/ads/zzeyo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctr;->b:Lcom/google/android/gms/internal/ads/zzeyc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzctr;->c:Lcom/google/android/gms/internal/ads/zzeeh;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzeeh;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctr;->c:Lcom/google/android/gms/internal/ads/zzeeh;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzeyc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctr;->b:Lcom/google/android/gms/internal/ads/zzeyc;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zzeyo;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctr;->a:Lcom/google/android/gms/internal/ads/zzeyo;

    return-object v0
.end method
