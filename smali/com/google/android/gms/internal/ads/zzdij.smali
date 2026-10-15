###### Class com.google.android.gms.internal.ads.zzdij (com.google.android.gms.internal.ads.zzdij)
.class public final Lcom/google/android/gms/internal/ads/zzdij;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzbnu;

.field private final b:Lcom/google/android/gms/internal/ads/zzbnr;

.field private final c:Lcom/google/android/gms/internal/ads/zzbnq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbnr;Lcom/google/android/gms/internal/ads/zzbnq;Lcom/google/android/gms/internal/ads/zzbnu;[B)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdij;->b:Lcom/google/android/gms/internal/ads/zzbnr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdij;->c:Lcom/google/android/gms/internal/ads/zzbnq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdij;->a:Lcom/google/android/gms/internal/ads/zzbnu;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzbnu;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdij;->a:Lcom/google/android/gms/internal/ads/zzbnu;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzbnq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdij;->c:Lcom/google/android/gms/internal/ads/zzbnq;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zzbnr;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdij;->b:Lcom/google/android/gms/internal/ads/zzbnr;

    return-object v0
.end method
