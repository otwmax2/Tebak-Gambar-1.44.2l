###### Class com.google.android.gms.internal.ads.zzdgp (com.google.android.gms.internal.ads.zzdgp)
.class public final Lcom/google/android/gms/internal/ads/zzdgp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgwy;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzgxl;

.field private final b:Lcom/google/android/gms/internal/ads/zzgxl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgxl;Lcom/google/android/gms/internal/ads/zzgxl;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgp;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdgp;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgp;->a:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcrc;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrc;->a()Lcom/google/android/gms/internal/ads/zzeyc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgp;->b:Lcom/google/android/gms/internal/ads/zzgxl;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdfj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdfj;->a()Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdgm;

    .line 2
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzdgm;-><init>(Lcom/google/android/gms/internal/ads/zzeyc;Lorg/json/JSONObject;)V

    return-object v2
.end method
