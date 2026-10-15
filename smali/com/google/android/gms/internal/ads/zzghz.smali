###### Class com.google.android.gms.internal.ads.zzghz (com.google.android.gms.internal.ads.zzghz)
.class public final Lcom/google/android/gms/internal/ads/zzghz;
.super Lcom/google/android/gms/internal/ads/zzgqi;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgrx;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgia;->K()Lcom/google/android/gms/internal/ads/zzgia;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgqi;-><init>(Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzghy;)V
    .registers 2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgia;->K()Lcom/google/android/gms/internal/ads/zzgia;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgqi;-><init>(Lcom/google/android/gms/internal/ads/zzgqm;)V

    return-void
.end method


# virtual methods
.method public final o(I)Lcom/google/android/gms/internal/ads/zzghz;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqi;->m()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgqi;->p:Lcom/google/android/gms/internal/ads/zzgqm;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgia;

    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgia;->M(Lcom/google/android/gms/internal/ads/zzgia;I)V

    return-object p0
.end method
