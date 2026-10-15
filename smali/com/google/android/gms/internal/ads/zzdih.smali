###### Class com.google.android.gms.internal.ads.zzdih (com.google.android.gms.internal.ads.zzdih)
.class public final Lcom/google/android/gms/internal/ads/zzdih;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgq;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzbnu;

.field private final b:Lcom/google/android/gms/internal/ads/zzcvg;

.field private final c:Lcom/google/android/gms/internal/ads/zzcum;

.field private final d:Lcom/google/android/gms/internal/ads/zzdca;

.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/android/gms/internal/ads/zzeyc;

.field private final g:Lcom/google/android/gms/internal/ads/zzbzg;

.field private final h:Lcom/google/android/gms/internal/ads/zzeyx;

.field private i:Z

.field private j:Z

.field private k:Z

.field private final l:Lcom/google/android/gms/internal/ads/zzbnq;

.field private final m:Lcom/google/android/gms/internal/ads/zzbnr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbnq;Lcom/google/android/gms/internal/ads/zzbnr;Lcom/google/android/gms/internal/ads/zzbnu;Lcom/google/android/gms/internal/ads/zzcvg;Lcom/google/android/gms/internal/ads/zzcum;Lcom/google/android/gms/internal/ads/zzdca;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzbzg;Lcom/google/android/gms/internal/ads/zzeyx;[B)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p11, 0x0

    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/zzdih;->i:Z

    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/zzdih;->j:Z

    const/4 p11, 0x1

    iput-boolean p11, p0, Lcom/google/android/gms/internal/ads/zzdih;->k:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdih;->l:Lcom/google/android/gms/internal/ads/zzbnq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdih;->m:Lcom/google/android/gms/internal/ads/zzbnr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdih;->a:Lcom/google/android/gms/internal/ads/zzbnu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdih;->b:Lcom/google/android/gms/internal/ads/zzcvg;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdih;->c:Lcom/google/android/gms/internal/ads/zzcum;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdih;->d:Lcom/google/android/gms/internal/ads/zzdca;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdih;->e:Landroid/content/Context;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdih;->f:Lcom/google/android/gms/internal/ads/zzeyc;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdih;->g:Lcom/google/android/gms/internal/ads/zzbzg;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdih;->h:Lcom/google/android/gms/internal/ads/zzeyx;

    return-void
.end method

.method private final v(Landroid/view/View;)V
    .registers 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdih;->a:Lcom/google/android/gms/internal/ads/zzbnu;

    if-eqz v0, :cond_30

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbnu;->B()Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdih;->a:Lcom/google/android/gms/internal/ads/zzbnu;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbnu;->X1(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdih;->c:Lcom/google/android/gms/internal/ads/zzcum;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcum;->w0()V

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->f9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdih;->d:Lcom/google/android/gms/internal/ads/zzdca;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdca;->p()V

    return-void

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdih;->l:Lcom/google/android/gms/internal/ads/zzbnq;

    if-eqz v0, :cond_60

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnq;->y()Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdih;->l:Lcom/google/android/gms/internal/ads/zzbnq;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbnq;->Wa(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdih;->c:Lcom/google/android/gms/internal/ads/zzcum;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcum;->w0()V

    .line 11
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->f9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdih;->d:Lcom/google/android/gms/internal/ads/zzdca;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdca;->p()V

    return-void

    :cond_60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdih;->m:Lcom/google/android/gms/internal/ads/zzbnr;

    if-eqz v0, :cond_8f

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbnr;->t()Z

    move-result v0

    if-nez v0, :cond_8f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdih;->m:Lcom/google/android/gms/internal/ads/zzbnr;

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbnr;->Wa(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdih;->c:Lcom/google/android/gms/internal/ads/zzcum;

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcum;->w0()V

    .line 18
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->f9:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdih;->d:Lcom/google/android/gms/internal/ads/zzdca;

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdca;->p()V
    :try_end_8f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8f} :catch_90

    :cond_8f
    return-void

    :catch_90
    move-exception p1

    const-string v0, "Failed to call handleClick"

    .line 22
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static final w(Ljava/util/Map;)Ljava/util/HashMap;
    .registers 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    monitor-enter p0

    .line 2
    :try_start_9
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_11

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 5
    :cond_35
    monitor-exit p0

    return-object v0

    :catchall_37
    move-exception v0

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_37

    goto :goto_3b

    :goto_3a
    throw v0

    :goto_3b
    goto :goto_3a
.end method


# virtual methods
.method public final B()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final R()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdih;->f:Lcom/google/android/gms/internal/ads/zzeyc;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzeyc;->M:Z

    return v0
.end method

.method public final a(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    .registers 4

    return-void
.end method

.method public final b(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)V
    .registers 6

    .line 1
    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdih;->i:Z

    if-nez p1, :cond_20

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->u()Lcom/google/android/gms/ads/internal/util/zzaw;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdih;->e:Landroid/content/Context;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzdih;->g:Lcom/google/android/gms/internal/ads/zzbzg;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzbzg;->o:Ljava/lang/String;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzdih;->f:Lcom/google/android/gms/internal/ads/zzeyc;

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzeyc;->D:Lorg/json/JSONObject;

    .line 2
    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdih;->h:Lcom/google/android/gms/internal/ads/zzeyx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyx;->f:Ljava/lang/String;

    .line 3
    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/google/android/gms/ads/internal/util/zzaw;->n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdih;->i:Z

    :cond_20
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdih;->k:Z

    if-nez p1, :cond_25

    return-void

    :cond_25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdih;->a:Lcom/google/android/gms/internal/ads/zzbnu;

    if-eqz p1, :cond_3b

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbnu;->R()Z

    move-result p1

    if-eqz p1, :cond_30

    goto :goto_3b

    .line 5
    :cond_30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdih;->a:Lcom/google/android/gms/internal/ads/zzbnu;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbnu;->y()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdih;->b:Lcom/google/android/gms/internal/ads/zzcvg;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcvg;->zza()V

    return-void

    .line 8
    :cond_3b
    :goto_3b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdih;->l:Lcom/google/android/gms/internal/ads/zzbnq;

    if-eqz p1, :cond_51

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnq;->E()Z

    move-result p1

    if-eqz p1, :cond_46

    goto :goto_51

    .line 10
    :cond_46
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdih;->l:Lcom/google/android/gms/internal/ads/zzbnq;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnq;->x()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdih;->b:Lcom/google/android/gms/internal/ads/zzcvg;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcvg;->zza()V

    return-void

    .line 13
    :cond_51
    :goto_51
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdih;->m:Lcom/google/android/gms/internal/ads/zzbnr;

    if-eqz p1, :cond_65

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnr;->C()Z

    move-result p1

    if-nez p1, :cond_65

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdih;->m:Lcom/google/android/gms/internal/ads/zzbnr;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnr;->p()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdih;->b:Lcom/google/android/gms/internal/ads/zzcvg;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcvg;->zza()V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_65} :catch_66

    :cond_65
    return-void

    :catch_66
    move-exception p1

    const-string p2, "Failed to call recordImpression"

    .line 17
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final c(Landroid/view/View;Ljava/util/Map;)V
    .registers 3

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdih;->a:Lcom/google/android/gms/internal/ads/zzbnu;

    if-eqz p2, :cond_c

    .line 2
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzbnu;->P4(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void

    :cond_c
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdih;->l:Lcom/google/android/gms/internal/ads/zzbnq;

    if-eqz p2, :cond_14

    .line 3
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbnq;->X1(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void

    :cond_14
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdih;->m:Lcom/google/android/gms/internal/ads/zzbnr;

    if-eqz p2, :cond_1b

    .line 4
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbnr;->Za(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    :cond_1b
    return-void

    :catch_1c
    move-exception p1

    const-string p2, "Failed to call untrackView"

    .line 5
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(Landroid/os/Bundle;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public final e()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public final f()V
    .registers 1

    return-void
.end method

.method public final g()V
    .registers 1

    return-void
.end method

.method public final h(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public final i(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .registers 14

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzdih;->f:Lcom/google/android/gms/internal/ads/zzeyc;

    iget-object p4, p4, Lcom/google/android/gms/internal/ads/zzeyc;->k0:Lorg/json/JSONObject;

    .line 2
    sget-object p5, Lcom/google/android/gms/internal/ads/zzbar;->q1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p5

    .line 4
    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p5, :cond_e0

    invoke-virtual {p4}, Lorg/json/JSONObject;->length()I

    move-result p5

    if-nez p5, :cond_24

    goto/16 :goto_e0

    :cond_24
    if-nez p2, :cond_2c

    .line 5
    new-instance p5, Ljava/util/HashMap;

    .line 6
    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    goto :goto_2d

    :cond_2c
    move-object p5, p2

    :goto_2d
    if-nez p3, :cond_35

    new-instance v2, Ljava/util/HashMap;

    .line 7
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto :goto_36

    :cond_35
    move-object v2, p3

    :goto_36
    new-instance v3, Ljava/util/HashMap;

    .line 8
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 9
    invoke-interface {v3, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 10
    invoke-interface {v3, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 11
    invoke-virtual {p4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p5

    .line 12
    :catch_45
    :cond_45
    :goto_45
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 13
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 14
    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_45

    .line 15
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    if-nez v5, :cond_62

    :cond_5f
    :goto_5f
    const/4 v0, 0x0

    goto/16 :goto_e0

    .line 16
    :cond_62
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_69

    goto :goto_5f

    :cond_69
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbar;->r1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 17
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v6

    .line 18
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_b3

    const-string v6, "3010"

    .line 19
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdih;->a:Lcom/google/android/gms/internal/ads/zzbnu;
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_89} :catch_124

    const/4 v5, 0x0

    if-eqz v2, :cond_93

    .line 20
    :try_start_8c
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbnu;->k()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_8c .. :try_end_90} :catch_91

    goto :goto_a6

    :catch_91
    nop

    goto :goto_ac

    .line 21
    :cond_93
    :try_start_93
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdih;->l:Lcom/google/android/gms/internal/ads/zzbnq;
    :try_end_95
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_95} :catch_124

    if-eqz v2, :cond_9c

    .line 22
    :try_start_97
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbnq;->Ua()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_9b} :catch_91

    goto :goto_a6

    :cond_9c
    :try_start_9c
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdih;->m:Lcom/google/android/gms/internal/ads/zzbnr;
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_9c .. :try_end_9e} :catch_124

    if-eqz v2, :cond_a5

    .line 23
    :try_start_a0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbnr;->Ta()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2
    :try_end_a4
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_a4} :catch_91

    goto :goto_a6

    :cond_a5
    move-object v2, v5

    :goto_a6
    if-eqz v2, :cond_ac

    .line 24
    :try_start_a8
    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->t1(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v5
    :try_end_ac
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a8 .. :try_end_ac} :catch_91
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_ac} :catch_124

    :cond_ac
    :goto_ac
    if-nez v5, :cond_af

    goto :goto_5f

    :cond_af
    :try_start_af
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5
    :try_end_b3
    .catch Landroid/os/RemoteException; {:try_start_af .. :try_end_b3} :catch_124

    :cond_b3
    :try_start_b3
    new-instance v2, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-static {v4, v2}, Lcom/google/android/gms/ads/internal/util/zzbu;->c(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    .line 27
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdih;->e:Landroid/content/Context;

    .line 28
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 29
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catchall_c8
    :cond_c8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_d4
    .catch Lorg/json/JSONException; {:try_start_b3 .. :try_end_d4} :catch_45
    .catch Landroid/os/RemoteException; {:try_start_b3 .. :try_end_d4} :catch_124

    .line 30
    :try_start_d4
    invoke-static {v6, v1, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .line 31
    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6
    :try_end_dc
    .catchall {:try_start_d4 .. :try_end_dc} :catchall_c8

    if-eqz v6, :cond_c8

    goto/16 :goto_45

    .line 32
    :cond_e0
    :goto_e0
    :try_start_e0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdih;->k:Z

    .line 33
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdih;->w(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p2

    .line 34
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzdih;->w(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p3

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzdih;->a:Lcom/google/android/gms/internal/ads/zzbnu;

    if-eqz p4, :cond_fa

    .line 35
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 36
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    .line 37
    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbnu;->A8(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void

    :cond_fa
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzdih;->l:Lcom/google/android/gms/internal/ads/zzbnq;

    if-eqz p4, :cond_10f

    .line 38
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 39
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    .line 40
    invoke-virtual {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbnq;->Ya(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdih;->l:Lcom/google/android/gms/internal/ads/zzbnq;

    .line 41
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbnq;->Xa(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void

    :cond_10f
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzdih;->m:Lcom/google/android/gms/internal/ads/zzbnr;

    if-eqz p4, :cond_123

    .line 42
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 43
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->Q4(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    .line 44
    invoke-virtual {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbnr;->Ya(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdih;->m:Lcom/google/android/gms/internal/ads/zzbnr;

    .line 45
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbnr;->Xa(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_123
    .catch Landroid/os/RemoteException; {:try_start_e0 .. :try_end_123} :catch_124

    :cond_123
    return-void

    :catch_124
    move-exception p1

    const-string p2, "Failed to call trackView"

    .line 46
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;ZLandroid/widget/ImageView$ScaleType;)V
    .registers 7

    .line 1
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzdih;->j:Z

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdih;->f:Lcom/google/android/gms/internal/ads/zzeyc;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzeyc;->M:Z

    if-eqz p2, :cond_b

    return-void

    :cond_b
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdih;->v(Landroid/view/View;)V

    return-void
.end method

.method public final k(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public final l(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public final m(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;
    .registers 5

    const/4 p1, 0x0

    return-object p1
.end method

.method public final m0(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final n()V
    .registers 1

    return-void
.end method

.method public final o(Lcom/google/android/gms/ads/internal/client/zzcs;)V
    .registers 2

    const-string p1, "Mute This Ad is not supported for 3rd party ads"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final p()V
    .registers 1

    return-void
.end method

.method public final q(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;ZLandroid/widget/ImageView$ScaleType;I)V
    .registers 8

    .line 1
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdih;->j:Z

    if-nez p1, :cond_a

    const-string p1, "Custom click reporting for 3p ads failed. enableCustomClickGesture is not set."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdih;->f:Lcom/google/android/gms/internal/ads/zzeyc;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzeyc;->M:Z

    if-nez p1, :cond_16

    const-string p1, "Custom click reporting for 3p ads failed. Ad unit id not in allow list."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_16
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzdih;->v(Landroid/view/View;)V

    return-void
.end method

.method public final r(Lcom/google/android/gms/ads/internal/client/zzcw;)V
    .registers 2

    const-string p1, "Mute This Ad is not supported for 3rd party ads"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    return-void
.end method

.method public final s(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;
    .registers 5

    const/4 p1, 0x0

    return-object p1
.end method

.method public final t()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdih;->j:Z

    return-void
.end method

.method public final u(Lcom/google/android/gms/internal/ads/zzbfr;)V
    .registers 2

    return-void
.end method

.method public final zza()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
