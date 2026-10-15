###### Class com.google.android.gms.internal.ads.zzdkg (com.google.android.gms.internal.ads.zzdkg)
.class public final Lcom/google/android/gms/internal/ads/zzdkg;
.super Lcom/google/android/gms/internal/ads/zzbjz;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Lcom/google/android/gms/internal/ads/zzbdi;


# instance fields
.field private o:Landroid/view/View;

.field private p:Lcom/google/android/gms/ads/internal/client/zzdq;

.field private q:Lcom/google/android/gms/internal/ads/zzdgd;

.field private r:Z

.field private s:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdgd;Lcom/google/android/gms/internal/ads/zzdgi;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbjz;-><init>()V

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdgi;->P()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkg;->o:Landroid/view/View;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdgi;->T()Lcom/google/android/gms/ads/internal/client/zzdq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkg;->p:Lcom/google/android/gms/ads/internal/client/zzdq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkg;->q:Lcom/google/android/gms/internal/ads/zzdgd;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdkg;->r:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdkg;->s:Z

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdgi;->b0()Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object p1

    if-eqz p1, :cond_23

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdgi;->b0()Lcom/google/android/gms/internal/ads/zzcei;

    move-result-object p1

    .line 2
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzcei;->y0(Lcom/google/android/gms/internal/ads/zzbdi;)V

    :cond_23
    return-void
.end method

.method private static final Sa(Lcom/google/android/gms/internal/ads/zzbkd;I)V
    .registers 2

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzbkd;->F(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    const-string p1, "#007 Could not call remote method."

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final e()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkg;->q:Lcom/google/android/gms/internal/ads/zzdgd;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdkg;->o:Landroid/view/View;

    if-eqz v1, :cond_19

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdkg;->o:Landroid/view/View;

    .line 3
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdgd;->D(Landroid/view/View;)Z

    move-result v4

    .line 4
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzdgd;->h(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V

    :cond_19
    return-void
.end method

.method private final f()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkg;->o:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_14

    .line 3
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdkg;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_14
    return-void
.end method


# virtual methods
.method public final N8(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbkd;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdkg;->r:Z

    if-eqz v0, :cond_13

    const-string p1, "Instream ad can not be shown after destroy()."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 3
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzdkg;->Sa(Lcom/google/android/gms/internal/ads/zzbkd;I)V

    return-void

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkg;->o:Landroid/view/View;

    if-eqz v0, :cond_5e

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdkg;->p:Lcom/google/android/gms/ads/internal/client/zzdq;

    if-nez v1, :cond_1c

    goto :goto_5e

    .line 4
    :cond_1c
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdkg;->s:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2a

    const-string p1, "Instream ad should not be used again."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    .line 6
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/zzdkg;->Sa(Lcom/google/android/gms/internal/ads/zzbkd;I)V

    return-void

    :cond_2a
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdkg;->s:Z

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdkg;->f()V

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->t1(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkg;->o:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    .line 9
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->z()Lcom/google/android/gms/internal/ads/zzcaa;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkg;->o:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzcaa;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->z()Lcom/google/android/gms/internal/ads/zzcaa;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkg;->o:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzcaa;->b(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdkg;->e()V

    .line 13
    :try_start_53
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbkd;->c()V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_56} :catch_57

    return-void

    :catch_57
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    .line 14
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbza;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_5e
    :goto_5e
    if-nez v0, :cond_63

    const-string p1, "can not get video view."

    goto :goto_65

    :cond_63
    const-string p1, "can not get video controller."

    :goto_65
    const-string v0, "Instream internal error: "

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 17
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzdkg;->Sa(Lcom/google/android/gms/internal/ads/zzbkd;I)V

    return-void
.end method

.method public final a()Lcom/google/android/gms/internal/ads/zzbdu;
    .registers 4

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdkg;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    const-string v0, "getVideoController: Instream ad should not be used after destroyed"

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    return-object v1

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkg;->q:Lcom/google/android/gms/internal/ads/zzdgd;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgd;->N()Lcom/google/android/gms/internal/ads/zzdgf;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgd;->N()Lcom/google/android/gms/internal/ads/zzdgf;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdgf;->a()Lcom/google/android/gms/internal/ads/zzbdu;

    move-result-object v0

    return-object v0

    :cond_23
    return-object v1
.end method

.method public final d()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdkg;->f()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkg;->q:Lcom/google/android/gms/internal/ads/zzdgd;

    if-eqz v0, :cond_f

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqm;->a()V

    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkg;->q:Lcom/google/android/gms/internal/ads/zzdgd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkg;->o:Landroid/view/View;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkg;->p:Lcom/google/android/gms/ads/internal/client/zzdq;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdkg;->r:Z

    return-void
.end method

.method public final onGlobalLayout()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdkg;->e()V

    return-void
.end method

.method public final onScrollChanged()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdkg;->e()V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/ads/internal/client/zzdq;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdkg;->r:Z

    if-eqz v0, :cond_10

    const-string v0, "getVideoController: Instream ad should not be used after destroyed"

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkg;->p:Lcom/google/android/gms/ads/internal/client/zzdq;

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "#008 Must be called on the main UI thread."

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->f(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkf;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdkf;-><init>(Lcom/google/android/gms/internal/ads/zzdkg;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdkg;->N8(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzbkd;)V

    return-void
.end method
