###### Class com.google.android.gms.internal.ads.zzcax (com.google.android.gms.internal.ads.zzcax)
.class public final Lcom/google/android/gms/internal/ads/zzcax;
.super Landroid/widget/FrameLayout;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcao;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private A:J

.field private B:Ljava/lang/String;

.field private C:[Ljava/lang/String;

.field private D:Landroid/graphics/Bitmap;

.field private final E:Landroid/widget/ImageView;

.field private F:Z

.field private final G:Ljava/lang/Integer;

.field private final o:Lcom/google/android/gms/internal/ads/zzcbj;

.field private final p:Landroid/widget/FrameLayout;

.field private final q:Landroid/view/View;

.field private final r:Lcom/google/android/gms/internal/ads/zzbbj;

.field final s:Lcom/google/android/gms/internal/ads/zzcbl;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private final t:J

.field private final u:Lcom/google/android/gms/internal/ads/zzcap;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcbj;IZLcom/google/android/gms/internal/ads/zzbbj;Lcom/google/android/gms/internal/ads/zzcbi;Ljava/lang/Integer;)V
    .registers 23

    move-object v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p5

    .line 1
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v7, p2

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzcax;->o:Lcom/google/android/gms/internal/ads/zzcbj;

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzcax;->r:Lcom/google/android/gms/internal/ads/zzbbj;

    new-instance v11, Landroid/widget/FrameLayout;

    .line 2
    invoke-direct {v11, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzcax;->p:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x1

    .line 3
    invoke-direct {v1, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v11, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzcbj;->h()Lcom/google/android/gms/ads/internal/zza;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzcbj;->h()Lcom/google/android/gms/ads/internal/zza;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zza;->a:Lcom/google/android/gms/internal/ads/zzcaq;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzcbk;

    .line 6
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzcbj;->k()Lcom/google/android/gms/internal/ads/zzbzg;

    move-result-object v3

    .line 7
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzcbj;->L0()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzcbj;->i()Lcom/google/android/gms/internal/ads/zzbbg;

    move-result-object v6

    move-object v1, v8

    move-object/from16 v2, p1

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcbk;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbj;Lcom/google/android/gms/internal/ads/zzbbg;)V

    const/4 v1, 0x2

    move/from16 v2, p3

    if-ne v2, v1, :cond_5c

    .line 9
    new-instance v13, Lcom/google/android/gms/internal/ads/zzccb;

    .line 10
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzcaq;->a(Lcom/google/android/gms/internal/ads/zzcbj;)Z

    move-result v6

    move-object v1, v13

    move-object/from16 v2, p1

    move-object v3, v8

    move-object/from16 v4, p2

    move/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzccb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcbk;Lcom/google/android/gms/internal/ads/zzcbj;ZZLcom/google/android/gms/internal/ads/zzcbi;Ljava/lang/Integer;)V

    goto :goto_86

    .line 11
    :cond_5c
    new-instance v13, Lcom/google/android/gms/internal/ads/zzcan;

    .line 12
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzcaq;->a(Lcom/google/android/gms/internal/ads/zzcbj;)Z

    move-result v8

    new-instance v14, Lcom/google/android/gms/internal/ads/zzcbk;

    .line 13
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzcbj;->k()Lcom/google/android/gms/internal/ads/zzbzg;

    move-result-object v3

    .line 14
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzcbj;->L0()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzcbj;->i()Lcom/google/android/gms/internal/ads/zzbbg;

    move-result-object v6

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzcbk;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzg;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbbj;Lcom/google/android/gms/internal/ads/zzbbg;)V

    move-object v1, v13

    move-object/from16 v3, p2

    move/from16 v4, p4

    move v5, v8

    move-object/from16 v6, p6

    move-object v7, v14

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzcan;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcbj;ZZLcom/google/android/gms/internal/ads/zzcbi;Lcom/google/android/gms/internal/ads/zzcbk;Ljava/lang/Integer;)V

    .line 16
    :goto_86
    iput-object v13, v0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcax;->G:Ljava/lang/Integer;

    new-instance v1, Landroid/view/View;

    .line 17
    invoke-direct {v1, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcax;->q:Landroid/view/View;

    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    .line 19
    invoke-direct {v2, v12, v12, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v11, v13, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbar;->D:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_be

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 23
    invoke-direct {v2, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    invoke-virtual {v11, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_be
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->A:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcax;->x()V

    :cond_d3
    new-instance v1, Landroid/widget/ImageView;

    .line 28
    invoke-direct {v1, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcax;->E:Landroid/widget/ImageView;

    .line 29
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->F:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 30
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzcax;->t:J

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbar;->C:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 32
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcax;->y:Z

    if-eqz v10, :cond_10d

    const/4 v2, 0x1

    if-eq v2, v1, :cond_106

    const-string v1, "0"

    goto :goto_108

    :cond_106
    const-string v1, "1"

    :goto_108
    const-string v2, "spinner_used"

    .line 34
    invoke-virtual {v10, v2, v1}, Lcom/google/android/gms/internal/ads/zzbbj;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10d
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcbl;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcbl;-><init>(Lcom/google/android/gms/internal/ads/zzcax;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcax;->s:Lcom/google/android/gms/internal/ads/zzcbl;

    .line 35
    invoke-virtual {v13, p0}, Lcom/google/android/gms/internal/ads/zzcap;->u(Lcom/google/android/gms/internal/ads/zzcao;)V

    return-void
.end method

.method private final s()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->o:Lcom/google/android/gms/internal/ads/zzcbj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcbj;->g()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->w:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->x:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->o:Lcom/google/android/gms/internal/ads/zzcbj;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcbj;->g()Landroid/app/Activity;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->w:Z

    :cond_23
    return-void
.end method

.method private final varargs t(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcax;->v()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 2
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "playerId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    const-string v1, "event"

    .line 3
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length p1, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v2

    :goto_1d
    if-ge v1, p1, :cond_2c

    .line 4
    aget-object v4, p2, v1

    if-nez v3, :cond_25

    move-object v3, v4

    goto :goto_29

    .line 5
    :cond_25
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    :goto_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcax;->o:Lcom/google/android/gms/internal/ads/zzcbj;

    const-string p2, "onVideoEvent"

    .line 6
    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbki;->v0(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final u()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->E:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method static bridge synthetic w(Lcom/google/android/gms/internal/ads/zzcax;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcax;->t(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final synthetic A(Z)V
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "hasWindowFocus"

    aput-object v2, v0, v1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "windowFocusChanged"

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcax;->t(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final B()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcax;->B:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcax;->C:[Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcap;->f(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_17
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "no_src"

    .line 3
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzcax;->t(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final C()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcap;->p:Lcom/google/android/gms/internal/ads/zzcbn;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcbn;->d(Z)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcap;->k()V

    return-void
.end method

.method final D()V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcap;->g()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcax;->z:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_b1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_b1

    long-to-float v2, v0

    .line 2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbar;->G1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v3

    .line 4
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v2, v4

    const-string v4, "timeupdate"

    const/4 v5, 0x1

    const-string v6, "time"

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eqz v3, :cond_a2

    const/16 v3, 0xc

    new-array v3, v3, [Ljava/lang/String;

    aput-object v6, v3, v7

    .line 5
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    const-string v2, "totalBytes"

    aput-object v2, v3, v8

    const/4 v2, 0x3

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    .line 6
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzcap;->o()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    const/4 v2, 0x4

    const-string v5, "qoeCachedBytes"

    aput-object v5, v3, v2

    const/4 v2, 0x5

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    .line 7
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzcap;->m()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    const/4 v2, 0x6

    const-string v5, "qoeLoadedBytes"

    aput-object v5, v3, v2

    const/4 v2, 0x7

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    .line 8
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzcap;->n()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    const/16 v2, 0x8

    const-string v5, "droppedFrames"

    aput-object v5, v3, v2

    const/16 v2, 0x9

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    .line 9
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzcap;->h()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    const/16 v2, 0xa

    const-string v5, "reportTime"

    aput-object v5, v3, v2

    const/16 v2, 0xb

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 11
    invoke-direct {p0, v4, v3}, Lcom/google/android/gms/internal/ads/zzcax;->t(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_af

    :cond_a2
    new-array v3, v8, [Ljava/lang/String;

    aput-object v6, v3, v7

    .line 12
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-direct {p0, v4, v3}, Lcom/google/android/gms/internal/ads/zzcax;->t(Ljava/lang/String;[Ljava/lang/String;)V

    .line 13
    :goto_af
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->z:J

    :cond_b1
    return-void
.end method

.method public final E()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcap;->q()V

    return-void
.end method

.method public final F()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcap;->r()V

    return-void
.end method

.method public final G(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcap;->s(I)V

    return-void
.end method

.method public final H(Landroid/view/MotionEvent;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1}, Landroid/view/TextureView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final I(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcap;->y(I)V

    return-void
.end method

.method public final J(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcap;->z(I)V

    return-void
.end method

.method public final a(II)V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->y:Z

    if-nez v0, :cond_5

    goto :goto_41

    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->E:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr p1, v1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/2addr p2, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->D:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_42

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_42

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->D:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p2, :cond_41

    goto :goto_42

    :cond_41
    :goto_41
    return-void

    :cond_42
    :goto_42
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 7
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcax;->D:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcax;->F:Z

    return-void
.end method

.method public final b()V
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->I1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->s:Lcom/google/android/gms/internal/ads/zzcbl;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbl;->b()V

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->o:Lcom/google/android/gms/internal/ads/zzcbj;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcbj;->g()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_21

    goto :goto_50

    :cond_21
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->w:Z

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->o:Lcom/google/android/gms/internal/ads/zzcbj;

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcbj;->g()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 7
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-eqz v0, :cond_3c

    const/4 v0, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->x:Z

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->o:Lcom/google/android/gms/internal/ads/zzcbj;

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcbj;->g()Landroid/app/Activity;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcax;->w:Z

    .line 11
    :cond_50
    :goto_50
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcax;->v:Z

    return-void
.end method

.method public final c()V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcax;->A:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_4d

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcap;->i()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcap;->l()I

    move-result v1

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcap;->j()I

    move-result v3

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "duration"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v0, v6

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x2

    const-string v5, "videoWidth"

    aput-object v5, v4, v0

    const/4 v0, 0x3

    .line 5
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-string v1, "videoHeight"

    aput-object v1, v4, v0

    .line 6
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "canplaythrough"

    .line 7
    invoke-direct {p0, v0, v4}, Lcom/google/android/gms/internal/ads/zzcax;->t(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_4d
    return-void
.end method

.method public final d()V
    .registers 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "pause"

    .line 1
    invoke-direct {p0, v2, v1}, Lcom/google/android/gms/internal/ads/zzcax;->t(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcax;->s()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->v:Z

    return-void
.end method

.method public final e()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->q:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->i:Lcom/google/android/gms/internal/ads/zzfkr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcat;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcat;-><init>(Lcom/google/android/gms/internal/ads/zzcax;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final f()V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->s:Lcom/google/android/gms/internal/ads/zzcbl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbl;->b()V

    .line 2
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->i:Lcom/google/android/gms/internal/ads/zzfkr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcau;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcau;-><init>(Lcom/google/android/gms/internal/ads/zzcax;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->s:Lcom/google/android/gms/internal/ads/zzcbl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbl;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    if-eqz v0, :cond_13

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbzn;->e:Lcom/google/android/gms/internal/ads/zzfuu;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcar;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzcar;-><init>(Lcom/google/android/gms/internal/ads/zzcap;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_17

    .line 3
    :cond_13
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_17
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 4
    throw v0
.end method

.method public final g()V
    .registers 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->F:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->D:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2e

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcax;->u()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->E:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcax;->D:Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->E:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->p:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcax;->E:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    .line 4
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->p:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcax;->E:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->s:Lcom/google/android/gms/internal/ads/zzcbl;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbl;->a()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->z:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->A:J

    .line 7
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->i:Lcom/google/android/gms/internal/ads/zzfkr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcav;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcav;-><init>(Lcom/google/android/gms/internal/ads/zzcax;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final h(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcap;->A(I)V

    return-void
.end method

.method public final i()V
    .registers 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->v:Z

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcax;->u()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->p:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcax;->E:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    if-nez v0, :cond_16

    goto :goto_75

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->D:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_75

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcax;->D:Landroid/graphics/Bitmap;

    .line 4
    invoke-virtual {v2, v3}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2f

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzcax;->F:Z

    .line 5
    :cond_2f
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zze;->m()Z

    move-result v0

    if-eqz v0, :cond_57

    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Spinner frame grab took "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    :cond_57
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->t:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_75

    const-string v0, "Spinner frame grab crossed jank threshold! Suspending spinner."

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->g(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->y:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->D:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->r:Lcom/google/android/gms/internal/ads/zzbbj;

    if-eqz v0, :cond_75

    .line 9
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "spinner_jank"

    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbbj;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    :goto_75
    return-void
.end method

.method public final j(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcap;->B(I)V

    return-void
.end method

.method public final j1(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "what"

    aput-object v1, p1, v0

    const/4 v0, 0x1

    const-string v1, "ExoPlayerAdapter exception"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "extra"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    aput-object p2, p1, v0

    const-string p2, "exception"

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzcax;->t(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final k(I)V
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->D:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->p:Landroid/widget/FrameLayout;

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->q:Landroid/view/View;

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1c
    return-void
.end method

.method public final l(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcap;->c(I)V

    return-void
.end method

.method public final m(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcax;->B:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcax;->C:[Ljava/lang/String;

    return-void
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "what"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v1, "extra"

    aput-object v1, v0, p1

    const/4 p1, 0x3

    aput-object p2, v0, p1

    const-string p1, "error"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcax;->t(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final o(IIII)V
    .registers 7

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zze;->m()Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set video bounds to x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";w:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";h:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->k(Ljava/lang/String;)V

    :cond_32
    if-eqz p3, :cond_48

    if-nez p4, :cond_37

    goto :goto_48

    :cond_37
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 3
    invoke-direct {v0, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 p3, 0x0

    .line 4
    invoke-virtual {v0, p1, p2, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcax;->p:Landroid/widget/FrameLayout;

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_48
    :goto_48
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->s:Lcom/google/android/gms/internal/ads/zzcbl;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbl;->b()V

    goto :goto_14

    .line 3
    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->s:Lcom/google/android/gms/internal/ads/zzcbl;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbl;->a()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->z:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->A:J

    .line 5
    :goto_14
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->i:Lcom/google/android/gms/internal/ads/zzfkr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcas;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcas;-><init>(Lcom/google/android/gms/internal/ads/zzcax;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .registers 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcax;->s:Lcom/google/android/gms/internal/ads/zzcbl;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcbl;->b()V

    const/4 p1, 0x1

    goto :goto_16

    .line 3
    :cond_c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcax;->s:Lcom/google/android/gms/internal/ads/zzcbl;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcbl;->a()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->z:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->A:J

    const/4 p1, 0x0

    .line 5
    :goto_16
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->i:Lcom/google/android/gms/internal/ads/zzfkr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcaw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzcaw;-><init>(Lcom/google/android/gms/internal/ads/zzcax;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final p(F)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcap;->p:Lcom/google/android/gms/internal/ads/zzcbn;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcbn;->e(F)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcap;->k()V

    return-void
.end method

.method public final q(FF)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcap;->x(FF)V

    :cond_7
    return-void
.end method

.method public final r()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcap;->p:Lcom/google/android/gms/internal/ads/zzcbn;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcbn;->d(Z)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcap;->k()V

    return-void
.end method

.method public final v()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcap;->q:Ljava/lang/Integer;

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->G:Ljava/lang/Integer;

    return-object v0
.end method

.method public final x()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    .line 2
    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyj;->d()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_1b

    const-string v0, "AdMob - "

    goto :goto_21

    .line 4
    :cond_1b
    sget v2, Lcom/google/android/gms/ads/impl/R$string;->r:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_21
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcap;->p()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, -0x10000

    .line 8
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, -0x100

    .line 9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->p:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/16 v4, 0x11

    .line 10
    invoke-direct {v2, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->p:Landroid/widget/FrameLayout;

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method public final y()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->s:Lcom/google/android/gms/internal/ads/zzcbl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbl;->a()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->u:Lcom/google/android/gms/internal/ads/zzcap;

    if-eqz v0, :cond_c

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcap;->w()V

    .line 3
    :cond_c
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcax;->s()V

    return-void
.end method

.method final synthetic z()V
    .registers 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "firstFrameRendered"

    .line 1
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzcax;->t(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final zza()V
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->I1:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcax;->s:Lcom/google/android/gms/internal/ads/zzcbl;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbl;->a()V

    :cond_17
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ended"

    .line 5
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzcax;->t(Ljava/lang/String;[Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcax;->s()V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzcar (com.google.android.gms.internal.ads.zzcar)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcar;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzcap;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcap;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcar;->o:Lcom/google/android/gms/internal/ads/zzcap;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcar;->o:Lcom/google/android/gms/internal/ads/zzcap;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcap;->w()V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzcas (com.google.android.gms.internal.ads.zzcas)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcas;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzcax;

.field public final synthetic p:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcax;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcas;->o:Lcom/google/android/gms/internal/ads/zzcax;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcas;->p:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcas;->o:Lcom/google/android/gms/internal/ads/zzcax;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcas;->p:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcax;->A(Z)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzcat (com.google.android.gms.internal.ads.zzcat)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcat;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzcax;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcax;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcat;->o:Lcom/google/android/gms/internal/ads/zzcax;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcat;->o:Lcom/google/android/gms/internal/ads/zzcax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcax;->z()V

    return-void
.end method
