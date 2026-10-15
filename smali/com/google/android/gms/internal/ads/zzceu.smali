###### Class com.google.android.gms.internal.ads.zzceu (com.google.android.gms.internal.ads.zzceu)
.class public final Lcom/google/android/gms/internal/ads/zzceu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcfx;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzapw;Lcom/google/android/gms/internal/ads/zzbbt;Lcom/google/android/gms/internal/ads/zzbzg;Lcom/google/android/gms/internal/ads/zzbbj;Lcom/google/android/gms/ads/internal/zzl;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzawe;Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzeyf;)Lcom/google/android/gms/internal/ads/zzcei;
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcet;
        }
    .end annotation

    .line 1
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbar;->c(Landroid/content/Context;)V

    :try_start_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzceq;

    const/4 v10, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzceq;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcfx;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzapw;Lcom/google/android/gms/internal/ads/zzbbt;Lcom/google/android/gms/internal/ads/zzbzg;Lcom/google/android/gms/internal/ads/zzbbj;Lcom/google/android/gms/ads/internal/zzl;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzawe;Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzeyf;)V

    .line 2
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_49

    .line 3
    :try_start_28
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2, v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4
    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 7
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfok;->zza()Ljava/lang/Object;

    move-result-object v0
    :try_end_40
    .catchall {:try_start_28 .. :try_end_40} :catchall_44

    .line 9
    :try_start_40
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v0

    :catchall_44
    move-exception v0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 10
    throw v0
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcet;

    const-string v2, "Webview initialization failed."

    .line 11
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzcet;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

###### Class com.google.android.gms.internal.ads.zzceq (com.google.android.gms.internal.ads.zzceq)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzceq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfok;


# instance fields
.field public final synthetic A:Lcom/google/android/gms/internal/ads/zzeyf;

.field public final synthetic o:Landroid/content/Context;

.field public final synthetic p:Lcom/google/android/gms/internal/ads/zzcfx;

.field public final synthetic q:Ljava/lang/String;

.field public final synthetic r:Z

.field public final synthetic s:Z

.field public final synthetic t:Lcom/google/android/gms/internal/ads/zzapw;

.field public final synthetic u:Lcom/google/android/gms/internal/ads/zzbbt;

.field public final synthetic v:Lcom/google/android/gms/internal/ads/zzbzg;

.field public final synthetic w:Lcom/google/android/gms/ads/internal/zzl;

.field public final synthetic x:Lcom/google/android/gms/ads/internal/zza;

.field public final synthetic y:Lcom/google/android/gms/internal/ads/zzawe;

.field public final synthetic z:Lcom/google/android/gms/internal/ads/zzeyc;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcfx;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzapw;Lcom/google/android/gms/internal/ads/zzbbt;Lcom/google/android/gms/internal/ads/zzbzg;Lcom/google/android/gms/internal/ads/zzbbj;Lcom/google/android/gms/ads/internal/zzl;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzawe;Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzeyf;)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzceq;->o:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzceq;->p:Lcom/google/android/gms/internal/ads/zzcfx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzceq;->q:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzceq;->r:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzceq;->s:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzceq;->t:Lcom/google/android/gms/internal/ads/zzapw;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzceq;->u:Lcom/google/android/gms/internal/ads/zzbbt;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzceq;->v:Lcom/google/android/gms/internal/ads/zzbzg;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzceq;->w:Lcom/google/android/gms/ads/internal/zzl;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzceq;->x:Lcom/google/android/gms/ads/internal/zza;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzceq;->y:Lcom/google/android/gms/internal/ads/zzawe;

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/zzceq;->z:Lcom/google/android/gms/internal/ads/zzeyc;

    iput-object p14, p0, Lcom/google/android/gms/internal/ads/zzceq;->A:Lcom/google/android/gms/internal/ads/zzeyf;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 23

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzceq;->o:Landroid/content/Context;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzceq;->p:Lcom/google/android/gms/internal/ads/zzcfx;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzceq;->q:Ljava/lang/String;

    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzceq;->r:Z

    iget-boolean v15, v1, Lcom/google/android/gms/internal/ads/zzceq;->s:Z

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzceq;->t:Lcom/google/android/gms/internal/ads/zzapw;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzceq;->u:Lcom/google/android/gms/internal/ads/zzbbt;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzceq;->v:Lcom/google/android/gms/internal/ads/zzbzg;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzceq;->w:Lcom/google/android/gms/ads/internal/zzl;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzceq;->x:Lcom/google/android/gms/ads/internal/zza;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzceq;->y:Lcom/google/android/gms/internal/ads/zzawe;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzceq;->z:Lcom/google/android/gms/internal/ads/zzeyc;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzceq;->A:Lcom/google/android/gms/internal/ads/zzeyf;

    const/16 v2, 0x108

    :try_start_1e
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcex;

    .line 2
    sget v2, Lcom/google/android/gms/internal/ads/zzcfb;->m0:I

    .line 3
    new-instance v2, Lcom/google/android/gms/internal/ads/zzcfw;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcfw;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfb;

    const/16 v16, 0x0

    move-object/from16 v17, v2

    move-object v2, v0

    move-object/from16 v18, v3

    move-object/from16 v3, v17

    move-object/from16 v17, v7

    move v7, v15

    move-object/from16 v19, v11

    move-object/from16 v11, v16

    move-object/from16 v20, v14

    move/from16 v21, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v17

    .line 4
    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/internal/ads/zzcfb;-><init>(Lcom/google/android/gms/internal/ads/zzcfw;Lcom/google/android/gms/internal/ads/zzcfx;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzapw;Lcom/google/android/gms/internal/ads/zzbbt;Lcom/google/android/gms/internal/ads/zzbzg;Lcom/google/android/gms/internal/ads/zzbbj;Lcom/google/android/gms/ads/internal/zzl;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzawe;Lcom/google/android/gms/internal/ads/zzeyc;Lcom/google/android/gms/internal/ads/zzeyf;)V

    move-object/from16 v2, v18

    .line 5
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcex;-><init>(Lcom/google/android/gms/internal/ads/zzcei;)V

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->s()Lcom/google/android/gms/ads/internal/util/zzaa;

    move-result-object v0

    move-object/from16 v4, v20

    move/from16 v3, v21

    .line 7
    invoke-virtual {v0, v2, v4, v3}, Lcom/google/android/gms/ads/internal/util/zzaa;->d(Lcom/google/android/gms/internal/ads/zzcei;Lcom/google/android/gms/internal/ads/zzawe;Z)Lcom/google/android/gms/internal/ads/zzcep;

    move-result-object v0

    .line 8
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzcei;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzceh;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzceh;-><init>(Lcom/google/android/gms/internal/ads/zzcei;)V

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzcei;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    :try_end_63
    .catchall {:try_start_1e .. :try_end_63} :catchall_67

    .line 10
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object v2

    :catchall_67
    move-exception v0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 11
    throw v0
.end method
