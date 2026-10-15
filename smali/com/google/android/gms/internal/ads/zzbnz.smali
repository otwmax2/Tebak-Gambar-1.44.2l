###### Class com.google.android.gms.internal.ads.zzbnz (com.google.android.gms.internal.ads.zzbnz)
.class final Lcom/google/android/gms/internal/ads/zzbnz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzbjp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbof;Lcom/google/android/gms/internal/ads/zzbjp;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbnz;->a:Lcom/google/android/gms/internal/ads/zzbjp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnz;->a:Lcom/google/android/gms/internal/ads/zzbjp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbjp;->s(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string v0, ""

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b()V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnz;->a:Lcom/google/android/gms/internal/ads/zzbjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbjp;->c()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    const-string v1, ""

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
