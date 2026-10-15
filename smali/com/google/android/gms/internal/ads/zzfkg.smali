###### Class com.google.android.gms.internal.ads.zzfkg (com.google.android.gms.internal.ads.zzfkg)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfkg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfkl;


# instance fields
.field public final synthetic a:Landroid/net/Network;

.field public final synthetic b:Ljava/net/URL;


# virtual methods
.method public final zza()Ljava/net/URLConnection;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkg;->a:Landroid/net/Network;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfkg;->b:Ljava/net/URL;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfkm;->o(Landroid/net/Network;Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method
