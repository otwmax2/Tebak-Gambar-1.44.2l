###### Class com.google.android.gms.internal.ads.zzfki (com.google.android.gms.internal.ads.zzfki)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfki;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfkl;


# instance fields
.field public final synthetic a:Ljava/net/URL;


# virtual methods
.method public final zza()Ljava/net/URLConnection;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfki;->a:Ljava/net/URL;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfkm;->n(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method
