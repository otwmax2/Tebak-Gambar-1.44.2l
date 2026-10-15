###### Class com.google.android.gms.internal.ads.zzgbg (com.google.android.gms.internal.ads.zzgbg)
.class final Lcom/google/android/gms/internal/ads/zzgbg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfvv;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzfxb;

.field private final b:Lcom/google/android/gms/internal/ads/zzggm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfxb;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbg;->a:Lcom/google/android/gms/internal/ads/zzfxb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfxb;->f()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgdd;->a()Lcom/google/android/gms/internal/ads/zzgdd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdd;->b()Lcom/google/android/gms/internal/ads/zzggn;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgda;->a(Lcom/google/android/gms/internal/ads/zzfxb;)Lcom/google/android/gms/internal/ads/zzggs;

    move-result-object p1

    const-string v1, "hybrid_decrypt"

    const-string v2, "decrypt"

    .line 4
    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzggn;->a(Lcom/google/android/gms/internal/ads/zzggs;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzggm;

    move-result-object p1

    :goto_1f
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbg;->b:Lcom/google/android/gms/internal/ads/zzggm;

    return-void

    :cond_22
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgda;->a:Lcom/google/android/gms/internal/ads/zzggm;

    goto :goto_1f
.end method
