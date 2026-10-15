###### Class com.google.android.gms.internal.ads.zzdfr (com.google.android.gms.internal.ads.zzdfr)
.class public final Lcom/google/android/gms/internal/ads/zzdfr;
.super Lcom/google/android/gms/internal/ads/zzbdt;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final o:Lcom/google/android/gms/internal/ads/zzdgi;

.field private p:Lcom/google/android/gms/dynamic/IObjectWrapper;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdgi;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbdt;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfr;->o:Lcom/google/android/gms/internal/ads/zzdgi;

    return-void
.end method

.method private static Sa(Lcom/google/android/gms/dynamic/IObjectWrapper;)F
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 1
    :cond_4
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->t1(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_24

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_24

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-eq v1, v2, :cond_24

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    :cond_24
    return v0
.end method


# virtual methods
.method public final J7(Lcom/google/android/gms/internal/ads/zzbff;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->P5:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfr;->o:Lcom/google/android/gms/internal/ads/zzdgi;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->T()Lcom/google/android/gms/ads/internal/client/zzdq;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzcfe;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfr;->o:Lcom/google/android/gms/internal/ads/zzdgi;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->T()Lcom/google/android/gms/ads/internal/client/zzdq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcfe;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfe;->Ya(Lcom/google/android/gms/internal/ads/zzbff;)V

    :cond_28
    return-void
.end method

.method public final b()F
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->O5:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return v1

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfr;->o:Lcom/google/android/gms/internal/ads/zzdgi;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->L()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfr;->o:Lcom/google/android/gms/internal/ads/zzdgi;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->L()F

    move-result v0

    return v0

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfr;->o:Lcom/google/android/gms/internal/ads/zzdgi;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->T()Lcom/google/android/gms/ads/internal/client/zzdq;

    move-result-object v0

    if-eqz v0, :cond_3f

    :try_start_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfr;->o:Lcom/google/android/gms/internal/ads/zzdgi;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->T()Lcom/google/android/gms/ads/internal/client/zzdq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzdq;->b()F

    move-result v1
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_37} :catch_38

    goto :goto_3e

    :catch_38
    move-exception v0

    const-string v2, "Remote exception getting video controller aspect ratio."

    .line 8
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbza;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3e
    return v1

    .line 9
    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfr;->p:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_48

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdfr;->Sa(Lcom/google/android/gms/dynamic/IObjectWrapper;)F

    move-result v1

    goto :goto_79

    :cond_48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfr;->o:Lcom/google/android/gms/internal/ads/zzdgi;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->W()Lcom/google/android/gms/internal/ads/zzbdx;

    move-result-object v0

    if-nez v0, :cond_51

    goto :goto_79

    .line 12
    :cond_51
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->d()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6a

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->a()I

    move-result v2

    if-eq v2, v3, :cond_6a

    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->d()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->a()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_6b

    :cond_6a
    const/4 v2, 0x0

    :goto_6b
    cmpl-float v1, v2, v1

    if-nez v1, :cond_78

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->c()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdfr;->Sa(Lcom/google/android/gms/dynamic/IObjectWrapper;)F

    move-result v0

    return v0

    :cond_78
    move v1, v2

    :goto_79
    return v1
.end method

.method public final c()F
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->P5:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return v1

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfr;->o:Lcom/google/android/gms/internal/ads/zzdgi;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->T()Lcom/google/android/gms/ads/internal/client/zzdq;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfr;->o:Lcom/google/android/gms/internal/ads/zzdgi;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->T()Lcom/google/android/gms/ads/internal/client/zzdq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzdq;->c()F

    move-result v0

    return v0

    :cond_27
    return v1
.end method

.method public final e()F
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->P5:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return v1

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfr;->o:Lcom/google/android/gms/internal/ads/zzdgi;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->T()Lcom/google/android/gms/ads/internal/client/zzdq;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfr;->o:Lcom/google/android/gms/internal/ads/zzdgi;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->T()Lcom/google/android/gms/ads/internal/client/zzdq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzdq;->e()F

    move-result v0

    return v0

    :cond_27
    return v1
.end method

.method public final e0(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdfr;->p:Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-void
.end method

.method public final f()Lcom/google/android/gms/ads/internal/client/zzdq;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->P5:Lcom/google/android/gms/internal/ads/zzbaj;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfr;->o:Lcom/google/android/gms/internal/ads/zzdgi;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->T()Lcom/google/android/gms/ads/internal/client/zzdq;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfr;->p:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfr;->o:Lcom/google/android/gms/internal/ads/zzdgi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->W()Lcom/google/android/gms/internal/ads/zzbdx;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_f
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdx;->c()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->P5:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return v1

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdfr;->o:Lcom/google/android/gms/internal/ads/zzdgi;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->T()Lcom/google/android/gms/ads/internal/client/zzdq;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    return v0

    :cond_1e
    return v1
.end method
