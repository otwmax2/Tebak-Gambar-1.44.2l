###### Class com.google.android.gms.internal.ads.zzapn (com.google.android.gms.internal.ads.zzapn)
.class final Lcom/google/android/gms/internal/ads/zzapn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfjk;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzfhk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzapp;Lcom/google/android/gms/internal/ads/zzfhk;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzapn;->a:Lcom/google/android/gms/internal/ads/zzfhk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)Z
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapn;->a:Lcom/google/android/gms/internal/ads/zzfhk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfhk;->a(Ljava/io/File;)Z

    move-result p1
    :try_end_6
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    const/4 p1, 0x0

    return p1
.end method
