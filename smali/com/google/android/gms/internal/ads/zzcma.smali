###### Class com.google.android.gms.internal.ads.zzcma (com.google.android.gms.internal.ads.zzcma)
.class public final Lcom/google/android/gms/internal/ads/zzcma;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzclt;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzdsf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdsf;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcma;->a:Lcom/google/android/gms/internal/ads/zzdsf;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .registers 4

    if-eqz p1, :cond_1a

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->v8:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1a

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcma;->a:Lcom/google/android/gms/internal/ads/zzdsf;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdsf;->l(Lorg/json/JSONObject;)V

    :cond_1a
    :goto_1a
    return-void
.end method
