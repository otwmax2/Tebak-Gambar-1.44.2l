###### Class com.google.android.gms.internal.ads.zzccu (com.google.android.gms.internal.ads.zzccu)
.class public abstract Lcom/google/android/gms/internal/ads/zzccu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field protected final o:Landroid/content/Context;

.field protected final p:Ljava/lang/String;

.field protected final q:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcbj;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcbj;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzccu;->o:Landroid/content/Context;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcbj;->k()Lcom/google/android/gms/internal/ads/zzbzg;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbzg;->o:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/ads/internal/util/zzs;->B(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzccu;->p:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzccu;->q:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static bridge synthetic f(Lcom/google/android/gms/internal/ads/zzccu;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzccu;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzcbj;

    if-eqz p0, :cond_f

    const-string p1, "onPrecacheEvent"

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbki;->v0(Ljava/lang/String;Ljava/util/Map;)V

    :cond_f
    return-void
.end method


# virtual methods
.method public c()V
    .registers 1

    return-void
.end method

.method public abstract g()V
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbyt;->b:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcct;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcct;-><init>(Lcom/google/android/gms/internal/ads/zzccu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected final j(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbyt;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzccr;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzccr;-><init>(Lcom/google/android/gms/internal/ads/zzccu;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 13

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbyt;->b:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzccs;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzccs;-><init>(Lcom/google/android/gms/internal/ads/zzccu;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;IIJJZII)V
    .registers 27

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbyt;->b:Landroid/os/Handler;

    new-instance v14, Lcom/google/android/gms/internal/ads/zzccq;

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/zzccq;-><init>(Lcom/google/android/gms/internal/ads/zzccu;Ljava/lang/String;Ljava/lang/String;IIJJZII)V

    invoke-virtual {v0, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;JJZJJJII)V
    .registers 36

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v14, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move/from16 v15, p14

    move/from16 v16, p15

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbyt;->b:Landroid/os/Handler;

    move-object/from16 v17, v1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzccp;

    move-object/from16 v18, v0

    move-object v0, v1

    move-object/from16 v19, v1

    move-object/from16 v1, v17

    invoke-direct/range {v0 .. v16}, Lcom/google/android/gms/internal/ads/zzccp;-><init>(Lcom/google/android/gms/internal/ads/zzccu;Ljava/lang/String;Ljava/lang/String;JJJJJZII)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected p(I)V
    .registers 2

    return-void
.end method

.method protected r(I)V
    .registers 2

    return-void
.end method

.method protected s(I)V
    .registers 2

    return-void
.end method

.method protected u(I)V
    .registers 2

    return-void
.end method

.method public abstract v(Ljava/lang/String;)Z
.end method

.method public w(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzccu;->v(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public x(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzccm;)Z
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzccu;->v(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
