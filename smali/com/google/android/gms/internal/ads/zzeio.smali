###### Class com.google.android.gms.internal.ads.zzeio (com.google.android.gms.internal.ads.zzeio)
.class public final Lcom/google/android/gms/internal/ads/zzeio;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzdgt;

.field private final b:Lcom/google/android/gms/internal/ads/zzeib;

.field private final c:Lcom/google/android/gms/internal/ads/zzcur;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdgt;Lcom/google/android/gms/internal/ads/zzfdk;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeio;->a:Lcom/google/android/gms/internal/ads/zzdgt;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeib;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzeib;-><init>(Lcom/google/android/gms/internal/ads/zzfdk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeio;->b:Lcom/google/android/gms/internal/ads/zzeib;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdgt;->g()Lcom/google/android/gms/internal/ads/zzbkg;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzein;

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzein;-><init>(Lcom/google/android/gms/internal/ads/zzeib;Lcom/google/android/gms/internal/ads/zzbkg;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeio;->c:Lcom/google/android/gms/internal/ads/zzcur;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zzcur;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeio;->c:Lcom/google/android/gms/internal/ads/zzcur;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/zzcwc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeio;->b:Lcom/google/android/gms/internal/ads/zzeib;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/zzden;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzden;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeio;->a:Lcom/google/android/gms/internal/ads/zzdgt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeio;->b:Lcom/google/android/gms/internal/ads/zzeib;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeib;->a()Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzden;-><init>(Lcom/google/android/gms/internal/ads/zzdgt;Lcom/google/android/gms/ads/internal/client/zzbh;)V

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/ads/zzeib;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeio;->b:Lcom/google/android/gms/internal/ads/zzeib;

    return-object v0
.end method

.method public final e(Lcom/google/android/gms/ads/internal/client/zzbh;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeio;->b:Lcom/google/android/gms/internal/ads/zzeib;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeib;->e(Lcom/google/android/gms/ads/internal/client/zzbh;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzein (com.google.android.gms.internal.ads.zzein)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzein;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcur;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzeib;

.field public final synthetic p:Lcom/google/android/gms/internal/ads/zzbkg;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeib;Lcom/google/android/gms/internal/ads/zzbkg;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzein;->o:Lcom/google/android/gms/internal/ads/zzeib;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzein;->p:Lcom/google/android/gms/internal/ads/zzbkg;

    return-void
.end method


# virtual methods
.method public final v(Lcom/google/android/gms/ads/internal/client/zze;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzein;->o:Lcom/google/android/gms/internal/ads/zzeib;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzein;->p:Lcom/google/android/gms/internal/ads/zzbkg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeib;->v(Lcom/google/android/gms/ads/internal/client/zze;)V

    const-string v0, "#007 Could not call remote method."

    if-eqz v1, :cond_13

    .line 2
    :try_start_b
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzbkg;->A(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception v2

    .line 3
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    if-eqz v1, :cond_1f

    .line 4
    :try_start_15
    iget p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->o:I

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzbkg;->F(I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception p1

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1f
    return-void
.end method
