###### Class com.google.android.gms.internal.ads.zzcof (com.google.android.gms.internal.ads.zzcof)
.class public final Lcom/google/android/gms/internal/ads/zzcof;
.super Lcom/google/android/gms/internal/ads/zzaux;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzcoe;

.field private final p:Lcom/google/android/gms/ads/internal/client/zzbu;

.field private final q:Lcom/google/android/gms/internal/ads/zzeua;

.field private r:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcoe;Lcom/google/android/gms/ads/internal/client/zzbu;Lcom/google/android/gms/internal/ads/zzeua;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzaux;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcof;->r:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcof;->o:Lcom/google/android/gms/internal/ads/zzcoe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcof;->p:Lcom/google/android/gms/ads/internal/client/zzbu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcof;->q:Lcom/google/android/gms/internal/ads/zzeua;

    return-void
.end method


# virtual methods
.method public final b()Lcom/google/android/gms/ads/internal/client/zzbu;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcof;->p:Lcom/google/android/gms/ads/internal/client/zzbu;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/ads/internal/client/zzdn;
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->p6:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x0

    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcof;->o:Lcom/google/android/gms/internal/ads/zzcoe;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqm;->c()Lcom/google/android/gms/internal/ads/zzcuh;

    move-result-object v0

    return-object v0
.end method

.method public final ca(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzavf;)V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcof;->q:Lcom/google/android/gms/internal/ads/zzeua;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzeua;->D(Lcom/google/android/gms/internal/ads/zzavf;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcof;->o:Lcom/google/android/gms/internal/ads/zzcoe;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->t1(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcof;->r:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcoe;->j(Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzavf;Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 3
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final h5(Lcom/google/android/gms/ads/internal/client/zzdg;)V
    .registers 3

    const-string v0, "setOnPaidEventListener must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcof;->q:Lcom/google/android/gms/internal/ads/zzeua;

    if-eqz v0, :cond_c

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeua;->w(Lcom/google/android/gms/ads/internal/client/zzdg;)V

    :cond_c
    return-void
.end method

.method public final ia(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcof;->r:Z

    return-void
.end method
