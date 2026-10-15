###### Class com.google.android.gms.internal.ads.zzapt (com.google.android.gms.internal.ads.zzapt)
.class public abstract Lcom/google/android/gms/internal/ads/zzapt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaps;


# static fields
.field protected static volatile I:Lcom/google/android/gms/internal/ads/zzaqx;


# instance fields
.field protected A:F

.field protected B:F

.field protected C:F

.field protected D:F

.field private E:Z

.field protected F:Z

.field protected G:Landroid/util/DisplayMetrics;

.field protected H:Lcom/google/android/gms/internal/ads/zzaqp;

.field protected o:Landroid/view/MotionEvent;

.field protected final p:Ljava/util/LinkedList;

.field protected q:J

.field protected r:J

.field protected s:J

.field protected t:J

.field protected u:J

.field protected v:J

.field protected w:J

.field protected x:D

.field private y:D

.field private z:D


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->p:Ljava/util/LinkedList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->q:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->r:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->s:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->t:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->u:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->v:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->w:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->E:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->F:Z

    .line 2
    :try_start_1f
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->O2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaol;->d()V

    goto :goto_3a

    .line 6
    :cond_35
    sget-object v0, Lcom/google/android/gms/internal/ads/zzapt;->I:Lcom/google/android/gms/internal/ads/zzaqx;

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaqz;->a(Lcom/google/android/gms/internal/ads/zzaqx;)Z

    .line 8
    :goto_3a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapt;->G:Landroid/util/DisplayMetrics;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->n2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 10
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5d

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaqp;

    .line 11
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaqp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapt;->H:Lcom/google/android/gms/internal/ads/zzaqp;
    :try_end_5d
    .catchall {:try_start_1f .. :try_end_5d} :catchall_5d

    :catchall_5d
    :cond_5d
    return-void
.end method

.method private final n()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->u:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->q:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->r:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->s:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->t:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->v:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->w:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->p:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->p:Ljava/util/LinkedList;

    .line 2
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    .line 3
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1e

    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->p:Ljava/util/LinkedList;

    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    goto :goto_3b

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->o:Landroid/view/MotionEvent;

    if-eqz v0, :cond_3b

    .line 5
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_3b
    :goto_3b
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->o:Landroid/view/MotionEvent;

    return-void
.end method

.method private final o(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2
    sget-object v7, Lcom/google/android/gms/internal/ads/zzbar;->f2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v7

    .line 4
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_46

    sget-object v10, Lcom/google/android/gms/internal/ads/zzapt;->I:Lcom/google/android/gms/internal/ads/zzaqx;

    if-eqz v10, :cond_2d

    sget-object v10, Lcom/google/android/gms/internal/ads/zzapt;->I:Lcom/google/android/gms/internal/ads/zzaqx;

    .line 5
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzaqx;->d()Lcom/google/android/gms/internal/ads/zzapr;

    move-result-object v10

    goto :goto_2e

    :cond_2d
    move-object v10, v9

    :goto_2e
    sget-object v11, Lcom/google/android/gms/internal/ads/zzbar;->O2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v11

    .line 7
    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eq v8, v11, :cond_43

    const-string v11, "te"

    goto :goto_48

    :cond_43
    const-string v11, "be"

    goto :goto_48

    :cond_46
    move-object v10, v9

    move-object v11, v10

    :goto_48
    const/4 v15, 0x2

    const/4 v14, 0x3

    if-ne v2, v14, :cond_5f

    .line 8
    :try_start_4c
    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzapt;->j(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzamv;

    move-result-object v9
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_50} :catch_5c

    :try_start_50
    iput-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzapt;->E:Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_52} :catch_57

    const/16 v0, 0x3ea

    const/16 v13, 0x3ea

    goto :goto_74

    :catch_57
    move-exception v0

    move-object/from16 v18, v0

    const/4 v8, 0x3

    goto :goto_91

    :catch_5c
    move-exception v0

    const/4 v8, 0x3

    goto :goto_8f

    :cond_5f
    if-ne v2, v15, :cond_6b

    .line 9
    :try_start_61
    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzapt;->l(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzamv;

    move-result-object v0

    const/16 v3, 0x3f0

    move-object v9, v0

    const/16 v13, 0x3f0

    goto :goto_74

    .line 10
    :cond_6b
    invoke-virtual {v1, v0, v9}, Lcom/google/android/gms/internal/ads/zzapt;->k(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzamo;)Lcom/google/android/gms/internal/ads/zzamv;

    move-result-object v0

    const/16 v3, 0x3e8

    move-object v9, v0

    const/16 v13, 0x3e8

    :goto_74
    if-eqz v7, :cond_8c

    if-eqz v10, :cond_8c

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_7c} :catch_5c

    sub-long/2addr v3, v5

    const/4 v0, -0x1

    const/16 v18, 0x0

    move-object v12, v10

    const/4 v8, 0x3

    move v14, v0

    move-wide v15, v3

    move-object/from16 v17, v11

    .line 12
    :try_start_86
    invoke-virtual/range {v12 .. v18}, Lcom/google/android/gms/internal/ads/zzapr;->c(IIJLjava/lang/String;Ljava/lang/Exception;)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_8d

    :catch_8a
    move-exception v0

    goto :goto_8f

    :cond_8c
    const/4 v8, 0x3

    :cond_8d
    :goto_8d
    const/4 v3, 0x2

    goto :goto_b6

    :goto_8f
    move-object/from16 v18, v0

    :goto_91
    if-eqz v7, :cond_8d

    if-eqz v10, :cond_8d

    if-ne v2, v8, :cond_9d

    const/16 v0, 0x3eb

    const/4 v3, 0x2

    const/16 v13, 0x3eb

    goto :goto_aa

    :cond_9d
    const/4 v3, 0x2

    if-ne v2, v3, :cond_a5

    const/16 v0, 0x3f1

    const/16 v13, 0x3f1

    goto :goto_aa

    :cond_a5
    const/16 v0, 0x3e9

    const/4 v2, 0x1

    const/16 v13, 0x3e9

    :goto_aa
    const/4 v14, -0x1

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v5

    move-object v12, v10

    move-object/from16 v17, v11

    .line 14
    invoke-virtual/range {v12 .. v18}, Lcom/google/android/gms/internal/ads/zzapr;->c(IIJLjava/lang/String;Ljava/lang/Exception;)V

    .line 15
    :goto_b6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-eqz v9, :cond_fd

    .line 16
    :try_start_bc
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzans;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqm;->U()I

    move-result v0

    if-nez v0, :cond_c9

    goto :goto_fd

    .line 17
    :cond_c9
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzans;

    move-object/from16 v6, p2

    .line 18
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzaol;->a(Lcom/google/android/gms/internal/ads/zzans;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v7, :cond_12e

    if-eqz v10, :cond_12e

    if-ne v2, v8, :cond_e0

    const/16 v6, 0x3ee

    const/16 v13, 0x3ee

    goto :goto_eb

    :cond_e0
    if-ne v2, v3, :cond_e7

    const/16 v6, 0x3f2

    const/16 v13, 0x3f2

    goto :goto_eb

    :cond_e7
    const/16 v6, 0x3ec

    const/16 v13, 0x3ec

    .line 19
    :goto_eb
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v16, v14, v4

    const/4 v14, -0x1

    const/16 v18, 0x0

    move-object v12, v10

    move-wide/from16 v15, v16

    move-object/from16 v17, v11

    .line 20
    invoke-virtual/range {v12 .. v18}, Lcom/google/android/gms/internal/ads/zzapr;->c(IIJLjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_12e

    :cond_fd
    :goto_fd
    const/4 v0, 0x5

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_102} :catch_103

    goto :goto_12e

    :catch_103
    move-exception v0

    move-object/from16 v18, v0

    const/4 v0, 0x7

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v7, :cond_12e

    if-eqz v10, :cond_12e

    if-ne v2, v8, :cond_116

    const/16 v2, 0x3ef

    const/16 v13, 0x3ef

    goto :goto_121

    :cond_116
    if-ne v2, v3, :cond_11d

    const/16 v2, 0x3f3

    const/16 v13, 0x3f3

    goto :goto_121

    :cond_11d
    const/16 v2, 0x3ed

    const/16 v13, 0x3ed

    :goto_121
    const/4 v14, -0x1

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v15, v2, v4

    move-object v12, v10

    move-object/from16 v17, v11

    .line 24
    invoke-virtual/range {v12 .. v18}, Lcom/google/android/gms/internal/ads/zzapr;->c(IIJLjava/lang/String;Ljava/lang/Exception;)V

    :cond_12e
    :goto_12e
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public final b([Ljava/lang/StackTraceElement;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->n2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->H:Lcom/google/android/gms/internal/ads/zzaqp;

    if-eqz v0, :cond_1d

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaqp;->b(Ljava/util/List;)V

    :cond_1d
    return-void
.end method

.method public final c(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzarb;->f()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 2
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzapt;->o(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The caller must not be called from the UI thread."

    .line 4
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized d(III)V
    .registers 20

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1
    :try_start_3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzapt;->o:Landroid/view/MotionEvent;

    if-eqz v0, :cond_22

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->d2:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzapt;->n()V

    goto :goto_22

    .line 5
    :cond_1d
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzapt;->o:Landroid/view/MotionEvent;

    .line 6
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 7
    :cond_22
    :goto_22
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzapt;->G:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_46

    const-wide/16 v2, 0x0

    move/from16 v4, p3

    int-to-long v4, v4

    const/4 v6, 0x1

    move/from16 v7, p1

    int-to-float v7, v7

    .line 8
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v7, v7, v0

    move/from16 v8, p2

    int-to-float v8, v8

    mul-float v8, v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzapt;->o:Landroid/view/MotionEvent;

    goto :goto_49

    :cond_46
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzapt;->o:Landroid/view/MotionEvent;

    :goto_49
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzapt;->F:Z
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_4e

    monitor-exit p0

    return-void

    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .registers 12

    const/4 v3, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzapt;->o(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized f(Landroid/view/MotionEvent;)V
    .registers 15

    monitor-enter p0

    .line 1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->E:Z

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzapt;->n()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->E:Z

    .line 2
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_43

    if-eq v0, v2, :cond_18

    if-eq v0, v1, :cond_18

    goto :goto_55

    .line 3
    :cond_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v3, v0

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-double v5, v0

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzapt;->y:D
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_106

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v7, v3, v7

    :try_start_29
    iget-wide v9, p0, Lcom/google/android/gms/internal/ads/zzapt;->z:D
    :try_end_2b
    .catchall {:try_start_29 .. :try_end_2b} :catchall_106

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v9, v5, v9

    :try_start_30
    iget-wide v11, p0, Lcom/google/android/gms/internal/ads/zzapt;->x:D

    mul-double v7, v7, v7

    mul-double v9, v9, v9

    add-double/2addr v7, v9

    .line 5
    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    add-double/2addr v11, v7

    iput-wide v11, p0, Lcom/google/android/gms/internal/ads/zzapt;->x:D

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzapt;->y:D

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzapt;->z:D

    goto :goto_55

    :cond_43
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzapt;->x:D

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-double v3, v0

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzapt;->y:D

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-double v3, v0

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzapt;->z:D

    .line 8
    :goto_55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-wide/16 v3, 0x1

    if-eqz v0, :cond_e5

    if-eq v0, v2, :cond_b1

    if-eq v0, v1, :cond_6d

    const/4 p1, 0x3

    if-eq v0, p1, :cond_66

    goto/16 :goto_102

    .line 9
    :cond_66
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->t:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->t:J

    goto/16 :goto_102

    .line 10
    :cond_6d
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->r:J

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    add-int/2addr v3, v2

    int-to-long v3, v3

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->r:J
    :try_end_78
    .catchall {:try_start_30 .. :try_end_78} :catchall_106

    .line 12
    :try_start_78
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzapt;->m(Landroid/view/MotionEvent;)Lcom/google/android/gms/internal/ads/zzara;

    move-result-object p1

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzara;->e:Ljava/lang/Long;

    if-eqz v0, :cond_94

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzara;->h:Ljava/lang/Long;

    if-eqz v1, :cond_94

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzapt;->v:J

    .line 13
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzara;->h:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v0, v5

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzapt;->v:J

    :cond_94
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->G:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_102

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzara;->f:Ljava/lang/Long;

    if-eqz v0, :cond_102

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzara;->i:Ljava/lang/Long;

    if-eqz v1, :cond_102

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzapt;->w:J

    .line 14
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzara;->i:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v0, v5

    add-long/2addr v3, v0

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzapt;->w:J
    :try_end_b0
    .catch Lcom/google/android/gms/internal/ads/zzaqn; {:try_start_78 .. :try_end_b0} :catch_102
    .catchall {:try_start_78 .. :try_end_b0} :catchall_106

    goto :goto_102

    .line 15
    :cond_b1
    :try_start_b1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapt;->o:Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->p:Ljava/util/LinkedList;

    .line 16
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzapt;->p:Ljava/util/LinkedList;

    .line 17
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v0, 0x6

    if-le p1, v0, :cond_d0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzapt;->p:Ljava/util/LinkedList;

    .line 18
    invoke-virtual {p1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    :cond_d0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->s:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->s:J
    :try_end_d5
    .catchall {:try_start_b1 .. :try_end_d5} :catchall_106

    :try_start_d5
    new-instance p1, Ljava/lang/Throwable;

    .line 19
    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzapt;->i([Ljava/lang/StackTraceElement;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->u:J
    :try_end_e4
    .catch Lcom/google/android/gms/internal/ads/zzaqn; {:try_start_d5 .. :try_end_e4} :catch_102
    .catchall {:try_start_d5 .. :try_end_e4} :catchall_106

    goto :goto_102

    .line 20
    :cond_e5
    :try_start_e5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->A:F

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->B:F

    .line 22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->C:F

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzapt;->D:F

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->q:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzapt;->q:J

    .line 24
    :catch_102
    :cond_102
    :goto_102
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzapt;->F:Z
    :try_end_104
    .catchall {:try_start_e5 .. :try_end_104} :catchall_106

    monitor-exit p0

    return-void

    :catchall_106
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final g(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .registers 11

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzapt;->o(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final h(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .registers 11

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzapt;->o(Landroid/content/Context;Ljava/lang/String;ILandroid/view/View;Landroid/app/Activity;[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected abstract i([Ljava/lang/StackTraceElement;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaqn;
        }
    .end annotation
.end method

.method protected abstract j(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzamv;
.end method

.method protected abstract k(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzamo;)Lcom/google/android/gms/internal/ads/zzamv;
.end method

.method protected abstract l(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzamv;
.end method

.method protected abstract m(Landroid/view/MotionEvent;)Lcom/google/android/gms/internal/ads/zzara;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaqn;
        }
    .end annotation
.end method
