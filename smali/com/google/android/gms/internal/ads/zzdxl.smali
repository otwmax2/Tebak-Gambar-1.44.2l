###### Class com.google.android.gms.internal.ads.zzdxl (com.google.android.gms.internal.ads.zzdxl)
.class final Lcom/google/android/gms/internal/ads/zzdxl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfuf;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzbtj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdxp;Lcom/google/android/gms/internal/ads/zzbtj;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxl;->a:Lcom/google/android/gms/internal/ads/zzbtj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxl;->a:Lcom/google/android/gms/internal/ads/zzbtj;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzaz;->W3(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/util/zzaz;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbtj;->q1(Lcom/google/android/gms/ads/internal/util/zzaz;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception p1

    const-string v0, "Service can\'t call client"

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zze;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)V
    .registers 3

    .line 1
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxl;->a:Lcom/google/android/gms/internal/ads/zzbtj;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbtj;->S0(Landroid/os/ParcelFileDescriptor;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p1

    const-string v0, "Service can\'t call client"

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zze;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
