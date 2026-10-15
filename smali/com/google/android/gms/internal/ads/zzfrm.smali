###### Class com.google.android.gms.internal.ads.zzfrm (com.google.android.gms.internal.ads.zzfrm)
.class public abstract Lcom/google/android/gms/internal/ads/zzfrm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Ljava/util/Map;
.end method

.method public final b(I)Lcom/google/android/gms/internal/ads/zzfrk;
    .registers 3

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfrl;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfrl;-><init>(Lcom/google/android/gms/internal/ads/zzfrm;I)V

    return-object p1
.end method
