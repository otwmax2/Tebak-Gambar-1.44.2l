###### Class com.google.android.gms.internal.ads.zzdcv (com.google.android.gms.internal.ads.zzdcv)
.class public final Lcom/google/android/gms/internal/ads/zzdcv;
.super Lcom/google/android/gms/internal/ads/zzcqm;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final i:Landroid/content/Context;

.field private final j:Ljava/lang/ref/WeakReference;

.field private final k:Lcom/google/android/gms/internal/ads/zzdbk;

.field private final l:Lcom/google/android/gms/internal/ads/zzdee;

.field private final m:Lcom/google/android/gms/internal/ads/zzcrg;

.field private final n:Lcom/google/android/gms/internal/ads/zzfia;

.field private final o:Lcom/google/android/gms/internal/ads/zzcvb;

.field private p:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcql;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcei;Lcom/google/android/gms/internal/ads/zzdbk;Lcom/google/android/gms/internal/ads/zzdee;Lcom/google/android/gms/internal/ads/zzcrg;Lcom/google/android/gms/internal/ads/zzfia;Lcom/google/android/gms/internal/ads/zzcvb;)V
    .registers 9
    .param p3    # Lcom/google/android/gms/internal/ads/zzcei;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcqm;-><init>(Lcom/google/android/gms/internal/ads/zzcql;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdcv;->p:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdcv;->i:Landroid/content/Context;

    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcv;->j:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdcv;->k:Lcom/google/android/gms/internal/ads/zzdbk;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdcv;->l:Lcom/google/android/gms/internal/ads/zzdee;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdcv;->m:Lcom/google/android/gms/internal/ads/zzcrg;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdcv;->n:Lcom/google/android/gms/internal/ads/zzfia;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdcv;->o:Lcom/google/android/gms/internal/ads/zzcvb;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcv;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcei;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->n6:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdcv;->p:Z

    if-nez v1, :cond_30

    if-eqz v0, :cond_30

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbzn;->e:Lcom/google/android/gms/internal/ads/zzfuu;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdcu;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdcu;-><init>(Lcom/google/android/gms/internal/ads/zzcei;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_30

    :cond_2b
    if-eqz v0, :cond_30

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcei;->destroy()V
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_34

    .line 7
    :cond_30
    :goto_30
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_34
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 8
    throw v0
.end method

.method public final h()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcv;->m:Lcom/google/android/gms/internal/ads/zzcrg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrg;->a()Z

    move-result v0

    return v0
.end method

.method public final i(ZLandroid/app/Activity;)Z
    .registers 7
    .param p2    # Landroid/app/Activity;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcv;->k:Lcom/google/android/gms/internal/ads/zzdbk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbk;->zzb()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->y0:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcv;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string p1, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcv;->o:Lcom/google/android/gms/internal/ads/zzcvb;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcvb;->zzb()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->z0:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_80

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcv;->n:Lcom/google/android/gms/internal/ads/zzfia;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqm;->a:Lcom/google/android/gms/internal/ads/zzeyo;

    .line 9
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzeyo;->b:Lcom/google/android/gms/internal/ads/zzeyn;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzeyn;->b:Lcom/google/android/gms/internal/ads/zzeyf;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzeyf;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfia;->a(Ljava/lang/String;)V

    goto :goto_80

    :cond_4d
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdcv;->p:Z

    if-eqz v0, :cond_62

    const-string v0, "The interstitial ad has been showed."

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcv;->o:Lcom/google/android/gms/internal/ads/zzcvb;

    const/16 v2, 0xa

    const/4 v3, 0x0

    .line 11
    invoke-static {v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzezx;->d(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v2

    .line 12
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzcvb;->v(Lcom/google/android/gms/ads/internal/client/zze;)V

    :cond_62
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdcv;->p:Z

    if-nez v0, :cond_80

    if-nez p2, :cond_6a

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdcv;->i:Landroid/content/Context;

    :cond_6a
    :try_start_6a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcv;->l:Lcom/google/android/gms/internal/ads/zzdee;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdcv;->o:Lcom/google/android/gms/internal/ads/zzcvb;

    .line 13
    invoke-interface {v0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdee;->a(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcvb;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcv;->k:Lcom/google/android/gms/internal/ads/zzdbk;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbk;->zza()V
    :try_end_76
    .catch Lcom/google/android/gms/internal/ads/zzded; {:try_start_6a .. :try_end_76} :catch_7a

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdcv;->p:Z

    return p1

    :catch_7a
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdcv;->o:Lcom/google/android/gms/internal/ads/zzcvb;

    .line 15
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzcvb;->C(Lcom/google/android/gms/internal/ads/zzded;)V

    :cond_80
    :goto_80
    return v1
.end method

###### Class com.google.android.gms.internal.ads.zzdcu (com.google.android.gms.internal.ads.zzdcu)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdcu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzcei;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcei;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcu;->o:Lcom/google/android/gms/internal/ads/zzcei;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcu;->o:Lcom/google/android/gms/internal/ads/zzcei;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcei;->destroy()V

    return-void
.end method
