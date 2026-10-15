###### Class com.google.android.gms.measurement.internal.zzli (com.google.android.gms.measurement.internal.zzli)
.class public final Lcom/google/android/gms/measurement/internal/zzli;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@20.1.2"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/a1;


# static fields
.field private static volatile F:Lcom/google/android/gms/measurement/internal/zzli;


# instance fields
.field private final A:Ljava/util/Map;

.field private final B:Ljava/util/Map;

.field private C:Lcom/google/android/gms/measurement/internal/zziu;

.field private D:Ljava/lang/String;

.field private final E:Lcom/google/android/gms/measurement/internal/c4;

.field private final a:Lcom/google/android/gms/measurement/internal/zzfz;

.field private final b:Lcom/google/android/gms/measurement/internal/zzfe;

.field private c:Lcom/google/android/gms/measurement/internal/e;

.field private d:Lcom/google/android/gms/measurement/internal/w;

.field private e:Lcom/google/android/gms/measurement/internal/zzku;

.field private f:Lcom/google/android/gms/measurement/internal/l4;

.field private final g:Lcom/google/android/gms/measurement/internal/zzlk;

.field private h:Lcom/google/android/gms/measurement/internal/z1;

.field private i:Lcom/google/android/gms/measurement/internal/zzkd;

.field private final j:Lcom/google/android/gms/measurement/internal/zzkx;

.field private k:Lcom/google/android/gms/measurement/internal/zzfq;

.field private final l:Lcom/google/android/gms/measurement/internal/zzgi;

.field private m:Z

.field private n:Z

.field o:J
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation
.end field

.field private p:Ljava/util/List;

.field private q:I

.field private r:I

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Ljava/nio/channels/FileLock;

.field private w:Ljava/nio/channels/FileChannel;

.field private x:Ljava/util/List;

.field private y:Ljava/util/List;

.field private z:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzlj;Lcom/google/android/gms/measurement/internal/zzgi;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/zzli;->m:Z

    new-instance p2, Lcom/google/android/gms/measurement/internal/y3;

    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/y3;-><init>(Lcom/google/android/gms/measurement/internal/zzli;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzli;->E:Lcom/google/android/gms/measurement/internal/c4;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/zzlj;->a:Landroid/content/Context;

    const/4 v0, 0x0

    .line 2
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/measurement/internal/zzgi;->F(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/zzcl;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/zzgi;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->z:J

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzkx;

    .line 3
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzkx;-><init>(Lcom/google/android/gms/measurement/internal/zzli;)V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzli;->j:Lcom/google/android/gms/measurement/internal/zzkx;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzlk;

    .line 4
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzlk;-><init>(Lcom/google/android/gms/measurement/internal/zzli;)V

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/r3;->e()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzfe;

    .line 6
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzfe;-><init>(Lcom/google/android/gms/measurement/internal/zzli;)V

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/r3;->e()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzli;->b:Lcom/google/android/gms/measurement/internal/zzfe;

    new-instance p2, Lcom/google/android/gms/measurement/internal/zzfz;

    .line 8
    invoke-direct {p2, p0}, Lcom/google/android/gms/measurement/internal/zzfz;-><init>(Lcom/google/android/gms/measurement/internal/zzli;)V

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/r3;->e()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    new-instance p2, Ljava/util/HashMap;

    .line 10
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzli;->A:Ljava/util/Map;

    new-instance p2, Ljava/util/HashMap;

    .line 11
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzli;->B:Ljava/util/Map;

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/measurement/internal/s3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/s3;-><init>(Lcom/google/android/gms/measurement/internal/zzli;Lcom/google/android/gms/measurement/internal/zzlj;)V

    .line 13
    invoke-virtual {p2, v0}, Lcom/google/android/gms/measurement/internal/zzgf;->v(Ljava/lang/Runnable;)V

    return-void
.end method

.method static final C(Lcom/google/android/gms/internal/measurement/zzfr;ILjava/lang/String;)V
    .registers 7
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfr;->G()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "_err"

    if-ge v1, v2, :cond_21

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfw;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    return-void

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4
    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfw;->y()Lcom/google/android/gms/internal/measurement/zzfv;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/measurement/zzfv;->A(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    int-to-long v1, p1

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzfv;->z(J)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzfw;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfw;->y()Lcom/google/android/gms/internal/measurement/zzfv;

    move-result-object v0

    const-string v1, "_ev"

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfv;->A(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 10
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/measurement/zzfv;->B(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzfw;

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzfr;->w(Lcom/google/android/gms/internal/measurement/zzfw;)Lcom/google/android/gms/internal/measurement/zzfr;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/zzfr;->w(Lcom/google/android/gms/internal/measurement/zzfw;)Lcom/google/android/gms/internal/measurement/zzfr;

    return-void
.end method

.method static final E(Lcom/google/android/gms/internal/measurement/zzfr;Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfr;->G()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfw;->A()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/zzfr;->y(I)Lcom/google/android/gms/internal/measurement/zzfr;

    return-void

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_22
    return-void
.end method

.method private final F(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;
    .registers 35

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/e;->P(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c0;

    move-result-object v15

    const/4 v1, 0x0

    if-eqz v15, :cond_96

    .line 3
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/c0;->h0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto/16 :goto_96

    .line 4
    :cond_1c
    invoke-direct {v0, v15}, Lcom/google/android/gms/measurement/internal/zzli;->G(Lcom/google/android/gms/measurement/internal/c0;)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 5
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3a

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "App version does not match; dropping. appId"

    .line 8
    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 9
    :cond_3a
    new-instance v32, Lcom/google/android/gms/measurement/internal/zzp;

    move-object/from16 v1, v32

    .line 10
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/c0;->j0()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/c0;->h0()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/c0;->M()J

    move-result-wide v5

    .line 13
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/c0;->g0()Ljava/lang/String;

    move-result-object v7

    .line 14
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/c0;->X()J

    move-result-wide v8

    .line 15
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/c0;->U()J

    move-result-wide v10

    const/4 v12, 0x0

    .line 16
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/c0;->K()Z

    move-result v13

    const/4 v14, 0x0

    .line 17
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/c0;->i0()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v27, v15

    move-object/from16 v15, v16

    .line 18
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/measurement/internal/c0;->A()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    .line 19
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/measurement/internal/c0;->J()Z

    move-result v21

    const/16 v22, 0x0

    .line 20
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/measurement/internal/c0;->c0()Ljava/lang/String;

    move-result-object v23

    .line 21
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/measurement/internal/c0;->b0()Ljava/lang/Boolean;

    move-result-object v24

    .line 22
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/measurement/internal/c0;->V()J

    move-result-wide v25

    .line 23
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/gms/measurement/internal/c0;->c()Ljava/util/List;

    move-result-object v27

    const/16 v28, 0x0

    .line 24
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzli;->S(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/gms/measurement/internal/zzah;->h()Ljava/lang/String;

    move-result-object v29

    const/16 v31, 0x0

    const-string v30, ""

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v31}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v32

    .line 25
    :cond_96
    :goto_96
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzey;->l()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    const-string v4, "No app data available; dropping"

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method private final G(Lcom/google/android/gms/measurement/internal/c0;)Ljava/lang/Boolean;
    .registers 8

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c0;->M()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->N0()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->a(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c0;->e0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->f(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c0;->M()J

    move-result-wide v1

    int-to-long v3, v0

    cmp-long p1, v1, v3

    if-nez p1, :cond_4f

    .line 5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 6
    :cond_2c
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->N0()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->a(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c0;->e0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->f(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c0;->h0()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4f

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 11
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_4e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_4e} :catch_52

    return-object p1

    .line 12
    :cond_4f
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :catch_52
    const/4 p1, 0x0

    return-object p1
.end method

.method private final H()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->s:Z

    if-nez v0, :cond_46

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->t:Z

    if-nez v0, :cond_46

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->u:Z

    if-eqz v0, :cond_14

    goto :goto_46

    .line 2
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->p:Ljava/util/List;

    if-nez v0, :cond_26

    return-void

    .line 3
    :cond_26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 4
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_2a

    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->p:Ljava/util/List;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 6
    :cond_46
    :goto_46
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzli;->s:Z

    .line 8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzli;->t:Z

    .line 9
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/zzli;->u:Z

    .line 10
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Not stopping services. fetch, network, upload"

    .line 11
    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzew;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final I(Lcom/google/android/gms/internal/measurement/zzgb;JZ)V
    .registers 15
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    if-eq v0, p4, :cond_6

    const-string v1, "_lte"

    goto :goto_8

    :cond_6
    const-string v1, "_se"

    .line 1
    :goto_8
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgb;->n0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/e;->W(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/b4;

    move-result-object v2

    if-eqz v2, :cond_3f

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/b4;->e:Ljava/lang/Object;

    if-nez v3, :cond_1c

    goto :goto_3f

    .line 3
    :cond_1c
    new-instance v9, Lcom/google/android/gms/measurement/internal/b4;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgb;->n0()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v6

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/b4;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    move-object v2, v9

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/b4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_58

    .line 7
    :cond_3f
    :goto_3f
    new-instance v9, Lcom/google/android/gms/measurement/internal/b4;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzgb;->n0()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v6

    .line 10
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v4, "auto"

    move-object v2, v9

    move-object v5, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/b4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 11
    :goto_58
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgl;->x()Lcom/google/android/gms/internal/measurement/zzgk;

    move-result-object v2

    .line 12
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzgk;->w(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgk;

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzgk;->x(J)Lcom/google/android/gms/internal/measurement/zzgk;

    iget-object v3, v9, Lcom/google/android/gms/measurement/internal/b4;->e:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 14
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/measurement/zzgk;->v(J)Lcom/google/android/gms/internal/measurement/zzgk;

    .line 15
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzgl;

    .line 16
    invoke-static {p1, v1}, Lcom/google/android/gms/measurement/internal/zzlk;->r(Lcom/google/android/gms/internal/measurement/zzgb;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_85

    .line 17
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/measurement/zzgb;->j0(ILcom/google/android/gms/internal/measurement/zzgl;)Lcom/google/android/gms/internal/measurement/zzgb;

    goto :goto_88

    .line 18
    :cond_85
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/measurement/zzgb;->D0(Lcom/google/android/gms/internal/measurement/zzgl;)Lcom/google/android/gms/internal/measurement/zzgb;

    :goto_88
    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-lez p1, :cond_ac

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 21
    invoke-virtual {p1, v9}, Lcom/google/android/gms/measurement/internal/e;->s(Lcom/google/android/gms/measurement/internal/b4;)Z

    if-eq v0, p4, :cond_9b

    const-string p1, "lifetime"

    goto :goto_9d

    :cond_9b
    const-string p1, "session-scoped"

    .line 22
    :goto_9d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p2

    .line 23
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p2

    iget-object p3, v9, Lcom/google/android/gms/measurement/internal/b4;->e:Ljava/lang/Object;

    const-string p4, "Updated engagement user property. scope, value"

    .line 24
    invoke-virtual {p2, p4, p1, p3}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_ac
    return-void
.end method

.method private final J()V
    .registers 21

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->b()V

    iget-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzli;->o:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_4e

    const-wide/32 v1, 0x36ee80

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v5

    iget-wide v7, v0, Lcom/google/android/gms/measurement/internal/zzli;->o:J

    sub-long/2addr v5, v7

    .line 4
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long/2addr v1, v5

    cmp-long v5, v1, v3

    if-lez v5, :cond_4c

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Upload has been suspended. Will update scheduling later in approximately ms"

    .line 8
    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->X()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w;->c()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzli;->e:Lcom/google/android/gms/measurement/internal/zzku;

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzku;->h()V

    return-void

    :cond_4c
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzli;->o:J

    :cond_4e
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->m()Z

    move-result v1

    if-eqz v1, :cond_255

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->L()Z

    move-result v1

    if-nez v1, :cond_5e

    goto/16 :goto_255

    .line 13
    :cond_5e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v1

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 15
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzel;->B:Lcom/google/android/gms/measurement/internal/zzek;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzek;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 16
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 17
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/e;->o()Z

    move-result v5

    const/4 v10, 0x1

    if-nez v5, :cond_93

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 18
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 19
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/e;->n()Z

    move-result v5

    if-eqz v5, :cond_92

    goto :goto_93

    :cond_92
    const/4 v10, 0x0

    :cond_93
    :goto_93
    if-eqz v10, :cond_d3

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzaf;->p()Ljava/lang/String;

    move-result-object v5

    .line 21
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_bf

    const-string v11, ".none."

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_bf

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzel;->w:Lcom/google/android/gms/measurement/internal/zzek;

    .line 23
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzek;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    goto :goto_e6

    .line 24
    :cond_bf
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzel;->v:Lcom/google/android/gms/measurement/internal/zzek;

    .line 25
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzek;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    goto :goto_e6

    .line 26
    :cond_d3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzel;->u:Lcom/google/android/gms/measurement/internal/zzek;

    .line 27
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzek;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    .line 28
    :goto_e6
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzli;->i:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 29
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkd;->j:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfj;->a()J

    move-result-wide v13

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzli;->i:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 30
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzkd;->k:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzfj;->a()J

    move-result-wide v15

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 31
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    move/from16 v17, v10

    .line 32
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/e;->K()J

    move-result-wide v9

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 33
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    move-wide/from16 v18, v7

    .line 34
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/e;->L()J

    move-result-wide v6

    .line 35
    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-nez v7, :cond_117

    :cond_114
    move-wide v7, v3

    goto/16 :goto_18f

    :cond_117
    sub-long/2addr v5, v1

    .line 36
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long v5, v1, v5

    sub-long/2addr v13, v1

    .line 37
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    sub-long/2addr v15, v1

    .line 38
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    sub-long v9, v1, v9

    sub-long/2addr v1, v7

    .line 39
    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    add-long v7, v5, v18

    if-eqz v17, :cond_13c

    cmp-long v13, v1, v3

    if-lez v13, :cond_13c

    .line 40
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    add-long/2addr v7, v11

    :cond_13c
    iget-object v13, v0, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 41
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 42
    invoke-virtual {v13, v1, v2, v11, v12}, Lcom/google/android/gms/measurement/internal/zzlk;->K(JJ)Z

    move-result v13

    if-nez v13, :cond_149

    add-long v7, v1, v11

    :cond_149
    cmp-long v1, v9, v3

    if-eqz v1, :cond_18f

    cmp-long v1, v9, v5

    if-ltz v1, :cond_18f

    const/4 v1, 0x0

    .line 43
    :goto_152
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    const/16 v2, 0x14

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzel;->D:Lcom/google/android/gms/measurement/internal/zzek;

    const/4 v6, 0x0

    .line 44
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzek;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v11, 0x0

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_114

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzel;->C:Lcom/google/android/gms/measurement/internal/zzek;

    .line 46
    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzek;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    const-wide/16 v12, 0x1

    shl-long/2addr v12, v1

    mul-long v5, v5, v12

    add-long/2addr v7, v5

    cmp-long v2, v7, v9

    if-gtz v2, :cond_18f

    add-int/lit8 v1, v1, 0x1

    goto :goto_152

    :cond_18f
    :goto_18f
    cmp-long v1, v7, v3

    if-eqz v1, :cond_238

    .line 47
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzli;->b:Lcom/google/android/gms/measurement/internal/zzfe;

    .line 48
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 49
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfe;->h()Z

    move-result v1

    if-eqz v1, :cond_21b

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzli;->i:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 50
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzkd;->i:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfj;->a()J

    move-result-wide v1

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzel;->s:Lcom/google/android/gms/measurement/internal/zzek;

    const/4 v6, 0x0

    .line 52
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzek;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iget-object v9, v0, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 53
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 54
    invoke-virtual {v9, v1, v2, v5, v6}, Lcom/google/android/gms/measurement/internal/zzlk;->K(JJ)Z

    move-result v9

    if-nez v9, :cond_1ca

    add-long/2addr v1, v5

    .line 55
    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 56
    :cond_1ca
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->X()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w;->c()V

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v1

    sub-long/2addr v7, v1

    cmp-long v1, v7, v3

    if-gtz v1, :cond_201

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzel;->x:Lcom/google/android/gms/measurement/internal/zzek;

    const/4 v2, 0x0

    .line 59
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzek;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzli;->i:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 60
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzkd;->j:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfj;->b(J)V

    .line 61
    :cond_201
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Upload scheduled in approximately ms"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzli;->e:Lcom/google/android/gms/measurement/internal/zzku;

    .line 62
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 63
    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/measurement/internal/zzku;->i(J)V

    return-void

    .line 64
    :cond_21b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->X()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w;->b()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzli;->e:Lcom/google/android/gms/measurement/internal/zzku;

    .line 66
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 67
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzku;->h()V

    return-void

    .line 68
    :cond_238
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->X()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w;->c()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzli;->e:Lcom/google/android/gms/measurement/internal/zzku;

    .line 70
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 71
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzku;->h()V

    return-void

    .line 72
    :cond_255
    :goto_255
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->X()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w;->c()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzli;->e:Lcom/google/android/gms/measurement/internal/zzku;

    .line 74
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 75
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzku;->h()V

    return-void
.end method

.method private final K(Ljava/lang/String;J)Z
    .registers 45

    move-object/from16 v1, p0

    const-string v2, "_npa"

    const-string v3, "_ai"

    .line 1
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e;->d0()V

    :try_start_e
    new-instance v4, Lcom/google/android/gms/measurement/internal/z3;

    const/4 v12, 0x0

    invoke-direct {v4, v1, v12}, Lcom/google/android/gms/measurement/internal/z3;-><init>(Lcom/google/android/gms/measurement/internal/zzli;Lcom/google/android/gms/measurement/internal/zzle;)V

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 3
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    const/4 v6, 0x0

    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/zzli;->z:J

    move-wide/from16 v7, p2

    move-object v11, v4

    .line 4
    invoke-virtual/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/e;->E(Ljava/lang/String;JJLcom/google/android/gms/measurement/internal/z3;)V

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/z3;->c:Ljava/util/List;

    if-eqz v5, :cond_d05

    .line 5
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2e

    goto/16 :goto_d05

    .line 6
    :cond_2e
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/z3;->a:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 7
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzkc;->j()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzgb;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgb;->I0()Lcom/google/android/gms/internal/measurement/zzgb;

    move-object v10, v12

    move-object v13, v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, -0x1

    const/4 v14, -0x1

    const/4 v15, 0x0

    :goto_40
    iget-object v12, v4, Lcom/google/android/gms/measurement/internal/z3;->c:Ljava/util/List;

    .line 8
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12
    :try_end_46
    .catchall {:try_start_e .. :try_end_46} :catchall_d17

    const-string v6, "_fr"

    const-string v7, "_et"

    move/from16 v16, v15

    const-string v15, "_e"

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    if-ge v8, v12, :cond_543

    :try_start_54
    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/z3;->c:Ljava/util/List;

    .line 9
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzkc;->j()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfr;

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 10
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/z3;->a:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v2

    move/from16 v20, v9

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->F()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v2, v9}, Lcom/google/android/gms/measurement/internal/zzfz;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_77
    .catchall {:try_start_54 .. :try_end_77} :catchall_d17

    const-string v9, "_err"

    if-eqz v2, :cond_f3

    .line 12
    :try_start_7b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v6, "Dropping blocked raw event. appId"

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/z3;->a:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 14
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 15
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v12

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->F()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/google/android/gms/measurement/internal/zzet;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 17
    invoke-virtual {v2, v6, v7, v12}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 18
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/z3;->a:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 19
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzfz;->A(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e8

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 20
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/z3;->a:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 21
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/gms/measurement/internal/zzfz;->E(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c3

    goto :goto_e8

    .line 22
    :cond_c3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e8

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->f0()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v21

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->E:Lcom/google/android/gms/measurement/internal/c4;

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/z3;->a:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 24
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0xb

    const-string v25, "_ev"

    .line 25
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->F()Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v22, v2

    .line 26
    invoke-virtual/range {v21 .. v27}, Lcom/google/android/gms/measurement/internal/zzlp;->y(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_e8
    :goto_e8
    move v7, v8

    move-object/from16 v23, v10

    move/from16 v15, v16

    move/from16 v9, v20

    move-object v10, v5

    const/4 v5, -0x1

    goto/16 :goto_538

    .line 27
    :cond_f3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->F()Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-static/range {v18 .. v18}, Lcom/google/android/gms/measurement/internal/zzhf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16d

    move-object/from16 v2, v18

    .line 29
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzfr;->z(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v12

    move-object/from16 v18, v2

    const-string v2, "Renaming ad_impression to _ai"

    invoke-virtual {v12, v2}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->z()Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x5

    .line 32
    invoke-static {v2, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_16d

    const/4 v2, 0x0

    .line 33
    :goto_125
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->r()I

    move-result v12

    if-ge v2, v12, :cond_16d

    const-string v12, "ad_platform"

    .line 34
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzfr;->E(I)Lcom/google/android/gms/internal/measurement/zzfw;

    move-result-object v21

    move/from16 v22, v8

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/measurement/zzfw;->A()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_168

    .line 35
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzfr;->E(I)Lcom/google/android/gms/internal/measurement/zzfw;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzfw;->B()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_168

    const-string v8, "admob"

    .line 36
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/measurement/zzfr;->E(I)Lcom/google/android/gms/internal/measurement/zzfw;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfw;->B()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_168

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v8

    .line 38
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzey;->s()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v8

    const-string v12, "AdMob ad impression logged from app. Potentially duplicative."

    .line 39
    invoke-virtual {v8, v12}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    :cond_168
    add-int/lit8 v2, v2, 0x1

    move/from16 v8, v22

    goto :goto_125

    :cond_16d
    move/from16 v22, v8

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 40
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    iget-object v8, v4, Lcom/google/android/gms/measurement/internal/z3;->a:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 41
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->F()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v8, v12}, Lcom/google/android/gms/measurement/internal/zzfz;->C(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_182
    .catchall {:try_start_7b .. :try_end_182} :catchall_d17

    const-string v8, "_c"

    if-nez v2, :cond_1db

    :try_start_186
    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 42
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 43
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->F()Ljava/lang/String;

    move-result-object v12

    .line 44
    invoke-static {v12}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    move/from16 v21, v11

    .line 45
    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v11
    :try_end_198
    .catchall {:try_start_186 .. :try_end_198} :catchall_d17

    move-object/from16 v23, v10

    const v10, 0x171c4

    if-eq v11, v10, :cond_1be

    const v10, 0x17331

    if-eq v11, v10, :cond_1b4

    const v10, 0x17333

    if-eq v11, v10, :cond_1aa

    goto :goto_1c8

    :cond_1aa
    const-string v10, "_ui"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c8

    const/4 v10, 0x1

    goto :goto_1c9

    :cond_1b4
    const-string v10, "_ug"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c8

    const/4 v10, 0x2

    goto :goto_1c9

    :cond_1be
    const-string v10, "_in"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c8

    const/4 v10, 0x0

    goto :goto_1c9

    :cond_1c8
    :goto_1c8
    const/4 v10, -0x1

    :goto_1c9
    if-eqz v10, :cond_1df

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1df

    const/4 v11, 0x2

    if-eq v10, v11, :cond_1df

    move-object/from16 v25, v5

    move-object/from16 v24, v7

    move-object v7, v13

    move/from16 v19, v14

    const/4 v2, 0x0

    goto/16 :goto_3a5

    :cond_1db
    move-object/from16 v23, v10

    move/from16 v21, v11

    :cond_1df
    move-object/from16 v24, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 46
    :goto_1e4
    :try_start_1e4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->r()I

    move-result v7
    :try_end_1e8
    .catchall {:try_start_1e4 .. :try_end_1e8} :catchall_d17

    move-object/from16 v25, v5

    const-string v5, "_r"

    if-ge v10, v7, :cond_24b

    .line 47
    :try_start_1ee
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/measurement/zzfr;->E(I)Lcom/google/android/gms/internal/measurement/zzfw;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfw;->A()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_219

    .line 48
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/measurement/zzfr;->E(I)Lcom/google/android/gms/internal/measurement/zzfw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzkc;->j()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfv;

    move-object v7, v13

    move/from16 v19, v14

    const-wide/16 v13, 0x1

    .line 49
    invoke-virtual {v5, v13, v14}, Lcom/google/android/gms/internal/measurement/zzfv;->z(J)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 50
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfw;

    .line 51
    invoke-virtual {v3, v10, v5}, Lcom/google/android/gms/internal/measurement/zzfr;->B(ILcom/google/android/gms/internal/measurement/zzfw;)Lcom/google/android/gms/internal/measurement/zzfr;

    const/4 v11, 0x1

    goto :goto_243

    :cond_219
    move-object v7, v13

    move/from16 v19, v14

    .line 52
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/measurement/zzfr;->E(I)Lcom/google/android/gms/internal/measurement/zzfw;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfw;->A()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_243

    .line 53
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/measurement/zzfr;->E(I)Lcom/google/android/gms/internal/measurement/zzfw;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzkc;->j()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfv;

    const-wide/16 v12, 0x1

    .line 54
    invoke-virtual {v5, v12, v13}, Lcom/google/android/gms/internal/measurement/zzfv;->z(J)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 55
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfw;

    .line 56
    invoke-virtual {v3, v10, v5}, Lcom/google/android/gms/internal/measurement/zzfr;->B(ILcom/google/android/gms/internal/measurement/zzfw;)Lcom/google/android/gms/internal/measurement/zzfr;

    const/4 v12, 0x1

    :cond_243
    :goto_243
    add-int/lit8 v10, v10, 0x1

    move-object v13, v7

    move/from16 v14, v19

    move-object/from16 v5, v25

    goto :goto_1e4

    :cond_24b
    move-object v7, v13

    move/from16 v19, v14

    if-nez v11, :cond_27c

    if-eqz v2, :cond_27c

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v10

    .line 58
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v10

    const-string v11, "Marking event as conversion"

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 59
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v13

    .line 60
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->F()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/android/gms/measurement/internal/zzet;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 61
    invoke-virtual {v10, v11, v13}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfw;->y()Lcom/google/android/gms/internal/measurement/zzfv;

    move-result-object v10

    .line 63
    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/measurement/zzfv;->A(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    const-wide/16 v13, 0x1

    .line 64
    invoke-virtual {v10, v13, v14}, Lcom/google/android/gms/internal/measurement/zzfv;->z(J)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 65
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/measurement/zzfr;->v(Lcom/google/android/gms/internal/measurement/zzfv;)Lcom/google/android/gms/internal/measurement/zzfr;

    :cond_27c
    if-nez v12, :cond_2a8

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v10

    .line 67
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v10

    const-string v11, "Marking event as real-time"

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 68
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v12

    .line 69
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->F()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/android/gms/measurement/internal/zzet;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 70
    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfw;->y()Lcom/google/android/gms/internal/measurement/zzfv;

    move-result-object v10

    .line 72
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/measurement/zzfv;->A(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    const-wide/16 v11, 0x1

    .line 73
    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/measurement/zzfv;->z(J)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 74
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/measurement/zzfr;->v(Lcom/google/android/gms/internal/measurement/zzfv;)Lcom/google/android/gms/internal/measurement/zzfr;

    :cond_2a8
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 75
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->D()J

    move-result-wide v27

    iget-object v11, v4, Lcom/google/android/gms/measurement/internal/z3;->a:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 77
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x1

    move-object/from16 v26, v10

    .line 78
    invoke-virtual/range {v26 .. v34}, Lcom/google/android/gms/measurement/internal/e;->R(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v10

    iget-wide v10, v10, Lcom/google/android/gms/measurement/internal/zzaj;->e:J

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v12

    iget-object v13, v4, Lcom/google/android/gms/measurement/internal/z3;->a:Lcom/google/android/gms/internal/measurement/zzgc;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v13

    .line 80
    sget-object v14, Lcom/google/android/gms/measurement/internal/zzel;->p:Lcom/google/android/gms/measurement/internal/zzek;

    .line 81
    invoke-virtual {v12, v13, v14}, Lcom/google/android/gms/measurement/internal/zzaf;->j(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)I

    move-result v12

    int-to-long v12, v12

    cmp-long v14, v10, v12

    if-lez v14, :cond_2e2

    .line 82
    invoke-static {v3, v5}, Lcom/google/android/gms/measurement/internal/zzli;->E(Lcom/google/android/gms/internal/measurement/zzfr;Ljava/lang/String;)V

    goto :goto_2e4

    :cond_2e2
    const/16 v16, 0x1

    .line 83
    :goto_2e4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->F()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzlp;->W(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a5

    if-eqz v2, :cond_3a5

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 84
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->D()J

    move-result-wide v27

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/z3;->a:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 86
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v26, v5

    .line 87
    invoke-virtual/range {v26 .. v34}, Lcom/google/android/gms/measurement/internal/e;->R(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v5

    iget-wide v10, v5, Lcom/google/android/gms/measurement/internal/zzaj;->c:J

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    iget-object v12, v4, Lcom/google/android/gms/measurement/internal/z3;->a:Lcom/google/android/gms/internal/measurement/zzgc;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lcom/google/android/gms/measurement/internal/zzel;->o:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v5, v12, v13}, Lcom/google/android/gms/measurement/internal/zzaf;->j(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)I

    move-result v5

    int-to-long v12, v5

    cmp-long v5, v10, v12

    if-lez v5, :cond_3a5

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v5

    .line 90
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v5

    const-string v10, "Too many conversions. Not logging as conversion. appId"

    iget-object v11, v4, Lcom/google/android/gms/measurement/internal/z3;->a:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 91
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 92
    invoke-virtual {v5, v10, v11}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 93
    :goto_341
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->r()I

    move-result v13

    if-ge v10, v13, :cond_36b

    .line 94
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/measurement/zzfr;->E(I)Lcom/google/android/gms/internal/measurement/zzfw;

    move-result-object v13

    .line 95
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfw;->A()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_35d

    .line 96
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzkc;->j()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfv;

    move v12, v10

    goto :goto_368

    .line 97
    :cond_35d
    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/zzfw;->A()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_368

    const/4 v11, 0x1

    :cond_368
    :goto_368
    add-int/lit8 v10, v10, 0x1

    goto :goto_341

    :cond_36b
    if-eqz v11, :cond_374

    if-eqz v5, :cond_373

    .line 98
    invoke-virtual {v3, v12}, Lcom/google/android/gms/internal/measurement/zzfr;->y(I)Lcom/google/android/gms/internal/measurement/zzfr;

    goto :goto_3a5

    :cond_373
    const/4 v5, 0x0

    :cond_374
    if-eqz v5, :cond_38e

    .line 99
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzjy;->l()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfv;

    .line 100
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/measurement/zzfv;->A(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    const-wide/16 v9, 0xa

    .line 101
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/internal/measurement/zzfv;->z(J)Lcom/google/android/gms/internal/measurement/zzfv;

    .line 102
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfw;

    .line 103
    invoke-virtual {v3, v12, v5}, Lcom/google/android/gms/internal/measurement/zzfr;->B(ILcom/google/android/gms/internal/measurement/zzfw;)Lcom/google/android/gms/internal/measurement/zzfr;

    goto :goto_3a5

    .line 104
    :cond_38e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v5

    .line 105
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v5

    const-string v9, "Did not find conversion parameter. appId"

    iget-object v10, v4, Lcom/google/android/gms/measurement/internal/z3;->a:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 106
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 107
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3a5
    :goto_3a5
    if-eqz v2, :cond_45e

    .line 108
    new-instance v2, Ljava/util/ArrayList;

    .line 109
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->G()Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v5, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    .line 110
    :goto_3b3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11
    :try_end_3b7
    .catchall {:try_start_1ee .. :try_end_3b7} :catchall_d17

    const-string v12, "currency"

    const-string v13, "value"

    if-ge v5, v11, :cond_3e3

    .line 111
    :try_start_3bd
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfw;->A()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3cf

    move v9, v5

    goto :goto_3e0

    .line 112
    :cond_3cf
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfw;->A()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3e0

    move v10, v5

    :cond_3e0
    :goto_3e0
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b3

    :cond_3e3
    const/4 v5, -0x1

    if-ne v9, v5, :cond_3e8

    goto/16 :goto_45f

    .line 113
    :cond_3e8
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfw;->Q()Z

    move-result v5

    if-nez v5, :cond_419

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfw;->O()Z

    move-result v5

    if-nez v5, :cond_419

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->s()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v5, "Value must be specified with a numeric type."

    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/zzfr;->y(I)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 116
    invoke-static {v3, v8}, Lcom/google/android/gms/measurement/internal/zzli;->E(Lcom/google/android/gms/internal/measurement/zzfr;Ljava/lang/String;)V

    const/16 v2, 0x12

    .line 117
    invoke-static {v3, v2, v13}, Lcom/google/android/gms/measurement/internal/zzli;->C(Lcom/google/android/gms/internal/measurement/zzfr;ILjava/lang/String;)V

    goto :goto_45e

    :cond_419
    const/4 v5, -0x1

    if-ne v10, v5, :cond_41d

    goto :goto_445

    .line 118
    :cond_41d
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzfw;->B()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_445

    const/4 v10, 0x0

    .line 120
    :goto_42f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_45f

    .line 121
    invoke-virtual {v2, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v11

    .line 122
    invoke-static {v11}, Ljava/lang/Character;->isLetter(I)Z

    move-result v13

    if-eqz v13, :cond_445

    .line 123
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    add-int/2addr v10, v11

    goto :goto_42f

    .line 124
    :cond_445
    :goto_445
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 125
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->s()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v10, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    .line 126
    invoke-virtual {v2, v10}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/zzfr;->y(I)Lcom/google/android/gms/internal/measurement/zzfr;

    .line 128
    invoke-static {v3, v8}, Lcom/google/android/gms/measurement/internal/zzli;->E(Lcom/google/android/gms/internal/measurement/zzfr;Ljava/lang/String;)V

    const/16 v2, 0x13

    .line 129
    invoke-static {v3, v2, v12}, Lcom/google/android/gms/measurement/internal/zzli;->C(Lcom/google/android/gms/internal/measurement/zzfr;ILjava/lang/String;)V

    goto :goto_45f

    :cond_45e
    :goto_45e
    const/4 v5, -0x1

    .line 130
    :cond_45f
    :goto_45f
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v8, 0x3e8

    if-eqz v2, :cond_4c5

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 131
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 132
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-static {v2, v6}, Lcom/google/android/gms/measurement/internal/zzlk;->i(Lcom/google/android/gms/internal/measurement/zzfs;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfw;

    move-result-object v2

    if-nez v2, :cond_4c0

    if-eqz v7, :cond_4b4

    .line 133
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzfr;->t()J

    move-result-wide v10

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->t()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v2, v10, v8

    if-gtz v2, :cond_4b4

    .line 134
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzjy;->l()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfr;

    .line 135
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzli;->M(Lcom/google/android/gms/internal/measurement/zzfr;Lcom/google/android/gms/internal/measurement/zzfr;)Z

    move-result v6

    if-eqz v6, :cond_4a7

    move/from16 v6, v19

    move-object/from16 v10, v25

    .line 136
    invoke-virtual {v10, v6, v2}, Lcom/google/android/gms/internal/measurement/zzgb;->K(ILcom/google/android/gms/internal/measurement/zzfr;)Lcom/google/android/gms/internal/measurement/zzgb;

    move/from16 v11, v21

    const/4 v2, 0x0

    const/4 v13, 0x0

    goto :goto_4af

    :cond_4a7
    move/from16 v6, v19

    move-object/from16 v10, v25

    move-object v2, v3

    move-object v13, v7

    move/from16 v11, v20

    :goto_4af
    move-object/from16 v23, v2

    move v14, v6

    goto/16 :goto_524

    :cond_4b4
    move/from16 v6, v19

    move-object/from16 v10, v25

    move-object/from16 v23, v3

    move v14, v6

    move-object v13, v7

    move/from16 v11, v20

    goto/16 :goto_524

    :cond_4c0
    move/from16 v6, v19

    move-object/from16 v10, v25

    goto :goto_51f

    :cond_4c5
    move/from16 v6, v19

    move-object/from16 v10, v25

    const-string v2, "_vs"

    .line 137
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->F()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51f

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 138
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 139
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs;

    move-object/from16 v11, v24

    invoke-static {v2, v11}, Lcom/google/android/gms/measurement/internal/zzlk;->i(Lcom/google/android/gms/internal/measurement/zzfs;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfw;

    move-result-object v2

    if-nez v2, :cond_51f

    if-eqz v23, :cond_518

    .line 140
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/internal/measurement/zzfr;->t()J

    move-result-wide v11

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfr;->t()J

    move-result-wide v13

    sub-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    cmp-long v2, v11, v8

    if-gtz v2, :cond_518

    .line 141
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/internal/measurement/zzjy;->l()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfr;

    .line 142
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzli;->M(Lcom/google/android/gms/internal/measurement/zzfr;Lcom/google/android/gms/internal/measurement/zzfr;)Z

    move-result v7

    if-eqz v7, :cond_511

    move/from16 v8, v21

    .line 143
    invoke-virtual {v10, v8, v2}, Lcom/google/android/gms/internal/measurement/zzgb;->K(ILcom/google/android/gms/internal/measurement/zzfr;)Lcom/google/android/gms/internal/measurement/zzgb;

    move v14, v6

    const/4 v2, 0x0

    const/16 v23, 0x0

    goto :goto_516

    :cond_511
    move/from16 v8, v21

    move-object v2, v3

    move/from16 v14, v20

    :goto_516
    move-object v13, v2

    goto :goto_523

    :cond_518
    move/from16 v8, v21

    move-object v13, v3

    move v11, v8

    move/from16 v14, v20

    goto :goto_524

    :cond_51f
    :goto_51f
    move/from16 v8, v21

    move v14, v6

    move-object v13, v7

    :goto_523
    move v11, v8

    .line 144
    :goto_524
    iget-object v2, v4, Lcom/google/android/gms/measurement/internal/z3;->c:Ljava/util/List;

    .line 145
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/measurement/zzfs;

    move/from16 v7, v22

    invoke-interface {v2, v7, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v20, 0x1

    .line 146
    invoke-virtual {v10, v3}, Lcom/google/android/gms/internal/measurement/zzgb;->B0(Lcom/google/android/gms/internal/measurement/zzfr;)Lcom/google/android/gms/internal/measurement/zzgb;

    move/from16 v15, v16

    :goto_538
    add-int/lit8 v8, v7, 0x1

    move-object v5, v10

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v10, v23

    goto/16 :goto_40

    :cond_543
    move-object v10, v5

    move-object v11, v7

    move/from16 v20, v9

    const-wide/16 v2, 0x0

    move-wide v7, v2

    const/4 v5, 0x0

    :goto_54b
    if-ge v5, v9, :cond_59b

    .line 147
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/measurement/zzgb;->u0(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v12

    .line 148
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfs;->B()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_56e

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 149
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 150
    invoke-static {v12, v6}, Lcom/google/android/gms/measurement/internal/zzlk;->i(Lcom/google/android/gms/internal/measurement/zzfs;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfw;

    move-result-object v13

    if-eqz v13, :cond_56e

    .line 151
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/measurement/zzgb;->r(I)Lcom/google/android/gms/internal/measurement/zzgb;

    add-int/lit8 v9, v9, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_598

    :cond_56e
    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 152
    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 153
    invoke-static {v12, v11}, Lcom/google/android/gms/measurement/internal/zzlk;->i(Lcom/google/android/gms/internal/measurement/zzfs;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfw;

    move-result-object v12

    if-eqz v12, :cond_598

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfw;->Q()Z

    move-result v13

    if-eqz v13, :cond_588

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzfw;->x()J

    move-result-wide v12

    .line 154
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    goto :goto_589

    :cond_588
    const/4 v12, 0x0

    :goto_589
    if-eqz v12, :cond_598

    .line 155
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v18, v13, v2

    if-lez v18, :cond_598

    .line 156
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    add-long/2addr v7, v12

    :cond_598
    :goto_598
    const/4 v12, 0x1

    add-int/2addr v5, v12

    goto :goto_54b

    :cond_59b
    const/4 v5, 0x0

    .line 157
    invoke-direct {v1, v10, v7, v8, v5}, Lcom/google/android/gms/measurement/internal/zzli;->I(Lcom/google/android/gms/internal/measurement/zzgb;JZ)V

    .line 158
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgb;->p0()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5a7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_5ab
    .catchall {:try_start_3bd .. :try_end_5ab} :catchall_d17

    const-string v9, "_se"

    if-eqz v6, :cond_5cd

    :try_start_5af
    const-string v6, "_s"

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfs;

    .line 159
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfs;->B()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a7

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 160
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 161
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgb;->n0()Ljava/lang/String;

    move-result-object v6

    .line 162
    invoke-virtual {v5, v6, v9}, Lcom/google/android/gms/measurement/internal/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5cd
    const-string v5, "_sid"

    .line 163
    invoke-static {v10, v5}, Lcom/google/android/gms/measurement/internal/zzlk;->r(Lcom/google/android/gms/internal/measurement/zzgb;Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_5da

    const/4 v5, 0x1

    .line 164
    invoke-direct {v1, v10, v7, v8, v5}, Lcom/google/android/gms/measurement/internal/zzli;->I(Lcom/google/android/gms/internal/measurement/zzgb;JZ)V

    goto :goto_5fa

    .line 165
    :cond_5da
    invoke-static {v10, v9}, Lcom/google/android/gms/measurement/internal/zzlk;->r(Lcom/google/android/gms/internal/measurement/zzgb;Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_5fa

    .line 166
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/measurement/zzgb;->s(I)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v5

    .line 168
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v5

    const-string v6, "Session engagement user property is in the bundle without session ID. appId"

    iget-object v7, v4, Lcom/google/android/gms/measurement/internal/z3;->a:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 169
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 170
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    :cond_5fa
    :goto_5fa
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 172
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 173
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v6

    .line 174
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v6

    const-string v7, "Checking account type status for ad personalization signals"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 175
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 176
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgb;->n0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzfz;->y(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_691

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 177
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 178
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgb;->n0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/e;->P(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c0;

    move-result-object v6

    if-eqz v6, :cond_691

    .line 179
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/c0;->J()Z

    move-result v6

    if-eqz v6, :cond_691

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 180
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->w()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v6

    .line 181
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzap;->n()Z

    move-result v6

    if-eqz v6, :cond_691

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 182
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v6

    .line 183
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzey;->l()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v6

    const-string v7, "Turning off ad personalization due to account type"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgl;->x()Lcom/google/android/gms/internal/measurement/zzgk;

    move-result-object v6

    move-object/from16 v7, v17

    .line 185
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzgk;->w(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgk;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 186
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgi;->w()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v5

    .line 187
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzap;->j()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/internal/measurement/zzgk;->x(J)Lcom/google/android/gms/internal/measurement/zzgk;

    const-wide/16 v8, 0x1

    .line 188
    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/internal/measurement/zzgk;->v(J)Lcom/google/android/gms/internal/measurement/zzgk;

    .line 189
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzgl;

    const/4 v6, 0x0

    .line 190
    :goto_673
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgb;->r0()I

    move-result v8

    if-ge v6, v8, :cond_68e

    .line 191
    invoke-virtual {v10, v6}, Lcom/google/android/gms/internal/measurement/zzgb;->m0(I)Lcom/google/android/gms/internal/measurement/zzgl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgl;->z()Ljava/lang/String;

    move-result-object v8

    .line 192
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_68b

    .line 193
    invoke-virtual {v10, v6, v5}, Lcom/google/android/gms/internal/measurement/zzgb;->j0(ILcom/google/android/gms/internal/measurement/zzgl;)Lcom/google/android/gms/internal/measurement/zzgb;

    goto :goto_691

    :cond_68b
    add-int/lit8 v6, v6, 0x1

    goto :goto_673

    .line 194
    :cond_68e
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/measurement/zzgb;->D0(Lcom/google/android/gms/internal/measurement/zzgl;)Lcom/google/android/gms/internal/measurement/zzgb;

    :cond_691
    :goto_691
    const-wide v5, 0x7fffffffffffffffL

    .line 195
    invoke-virtual {v10, v5, v6}, Lcom/google/android/gms/internal/measurement/zzgb;->f0(J)Lcom/google/android/gms/internal/measurement/zzgb;

    const-wide/high16 v5, -0x8000000000000000L

    invoke-virtual {v10, v5, v6}, Lcom/google/android/gms/internal/measurement/zzgb;->I(J)Lcom/google/android/gms/internal/measurement/zzgb;

    const/4 v5, 0x0

    .line 196
    :goto_69f
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgb;->U()I

    move-result v6

    if-ge v5, v6, :cond_6d2

    .line 197
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/measurement/zzgb;->u0(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v6

    .line 198
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfs;->x()J

    move-result-wide v7

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgb;->t0()J

    move-result-wide v11

    cmp-long v9, v7, v11

    if-gez v9, :cond_6bc

    .line 199
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfs;->x()J

    move-result-wide v7

    invoke-virtual {v10, v7, v8}, Lcom/google/android/gms/internal/measurement/zzgb;->f0(J)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 200
    :cond_6bc
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfs;->x()J

    move-result-wide v7

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgb;->s0()J

    move-result-wide v11

    cmp-long v9, v7, v11

    if-lez v9, :cond_6cf

    .line 201
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzfs;->x()J

    move-result-wide v6

    invoke-virtual {v10, v6, v7}, Lcom/google/android/gms/internal/measurement/zzgb;->I(J)Lcom/google/android/gms/internal/measurement/zzgb;

    :cond_6cf
    add-int/lit8 v5, v5, 0x1

    goto :goto_69f

    .line 202
    :cond_6d2
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgb;->Q0()Lcom/google/android/gms/internal/measurement/zzgb;

    .line 203
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgb;->F0()Lcom/google/android/gms/internal/measurement/zzgb;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzli;->f:Lcom/google/android/gms/measurement/internal/l4;

    .line 204
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 205
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgb;->n0()Ljava/lang/String;

    move-result-object v21

    .line 206
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgb;->p0()Ljava/util/List;

    move-result-object v22

    .line 207
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgb;->q0()Ljava/util/List;

    move-result-object v23

    .line 208
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgb;->t0()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    .line 209
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgb;->s0()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    move-object/from16 v20, v5

    .line 210
    invoke-virtual/range {v20 .. v25}, Lcom/google/android/gms/measurement/internal/l4;->h(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v5

    .line 211
    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/measurement/zzgb;->v0(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    iget-object v6, v4, Lcom/google/android/gms/measurement/internal/z3;->a:Lcom/google/android/gms/internal/measurement/zzgc;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzaf;->D(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a51

    new-instance v5, Ljava/util/HashMap;

    .line 213
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    .line 214
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->f0()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzlp;->p()Ljava/security/SecureRandom;

    move-result-object v7

    const/4 v8, 0x0

    .line 216
    :goto_725
    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/zzgb;->U()I

    move-result v9

    if-ge v8, v9, :cond_a17

    .line 217
    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/measurement/zzgb;->u0(I)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzkc;->j()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzfr;

    .line 218
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfr;->F()Ljava/lang/String;

    move-result-object v11

    const-string v12, "_ep"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_73f
    .catchall {:try_start_5af .. :try_end_73f} :catchall_d17

    const-string v12, "_efs"

    const-string v13, "_sr"

    if-eqz v11, :cond_7c8

    :try_start_745
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 219
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 220
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfs;

    const-string v14, "_en"

    invoke-static {v11, v14}, Lcom/google/android/gms/measurement/internal/zzlk;->j(Lcom/google/android/gms/internal/measurement/zzfs;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 221
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/measurement/internal/h;

    if-nez v14, :cond_77c

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 222
    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    iget-object v15, v4, Lcom/google/android/gms/measurement/internal/z3;->a:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 223
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v15

    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v2, v17

    check-cast v2, Ljava/lang/String;

    .line 224
    invoke-virtual {v14, v15, v2}, Lcom/google/android/gms/measurement/internal/e;->T(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v14

    if-eqz v14, :cond_77c

    .line 225
    invoke-interface {v5, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_77c
    if-eqz v14, :cond_7bb

    iget-object v2, v14, Lcom/google/android/gms/measurement/internal/h;->i:Ljava/lang/Long;

    if-nez v2, :cond_7bb

    iget-object v2, v14, Lcom/google/android/gms/measurement/internal/h;->j:Ljava/lang/Long;

    if-eqz v2, :cond_79a

    .line 226
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v17, 0x1

    cmp-long v11, v2, v17

    if-lez v11, :cond_79a

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 227
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    iget-object v2, v14, Lcom/google/android/gms/measurement/internal/h;->j:Ljava/lang/Long;

    .line 228
    invoke-static {v9, v13, v2}, Lcom/google/android/gms/measurement/internal/zzlk;->N(Lcom/google/android/gms/internal/measurement/zzfr;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_79a
    iget-object v2, v14, Lcom/google/android/gms/measurement/internal/h;->k:Ljava/lang/Boolean;

    if-eqz v2, :cond_7b2

    .line 229
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7b2

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 230
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    const-wide/16 v2, 0x1

    .line 231
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v9, v12, v11}, Lcom/google/android/gms/measurement/internal/zzlk;->N(Lcom/google/android/gms/internal/measurement/zzfr;Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    :cond_7b2
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_7bb
    invoke-virtual {v10, v8, v9}, Lcom/google/android/gms/internal/measurement/zzgb;->K(ILcom/google/android/gms/internal/measurement/zzfr;)Lcom/google/android/gms/internal/measurement/zzgb;

    :goto_7be
    move-object/from16 v24, v4

    move-object/from16 v22, v7

    move-object v2, v10

    move-object v7, v5

    const-wide/16 v4, 0x1

    goto/16 :goto_a0b

    :cond_7c8
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 234
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/z3;->a:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 235
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v3

    const-string v11, "measurement.account.time_zone_offset_minutes"

    .line 236
    invoke-virtual {v2, v3, v11}, Lcom/google/android/gms/measurement/internal/zzfz;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 237
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_7dd
    .catchall {:try_start_745 .. :try_end_7dd} :catchall_d17

    if-nez v14, :cond_7f9

    .line 238
    :try_start_7df
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_7e3
    .catch Ljava/lang/NumberFormatException; {:try_start_7df .. :try_end_7e3} :catch_7e4
    .catchall {:try_start_7df .. :try_end_7e3} :catchall_d17

    goto :goto_7fb

    :catch_7e4
    move-exception v0

    move-object v11, v0

    .line 239
    :try_start_7e6
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 240
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 241
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v14, "Unable to parse timezone offset. appId"

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 242
    invoke-virtual {v2, v14, v3, v11}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7f9
    const-wide/16 v2, 0x0

    .line 243
    :goto_7fb
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->f0()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v11

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfr;->t()J

    move-result-wide v14

    invoke-virtual {v11, v14, v15, v2, v3}, Lcom/google/android/gms/measurement/internal/zzlp;->s0(JJ)J

    move-result-wide v14

    .line 244
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfs;

    move-object/from16 p3, v12

    const-wide/16 v17, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-wide/from16 v17, v2

    const-string v2, "_dbg"

    .line 245
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_853

    .line 246
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfs;->C()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_827
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_853

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfw;

    move-object/from16 v22, v3

    .line 247
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfw;->A()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_850

    .line 248
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzfw;->x()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_84e

    goto :goto_853

    :cond_84e
    const/4 v2, 0x1

    goto :goto_866

    :cond_850
    move-object/from16 v3, v22

    goto :goto_827

    :cond_853
    :goto_853
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 249
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    iget-object v3, v4, Lcom/google/android/gms/measurement/internal/z3;->a:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 250
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfr;->F()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v3, v11}, Lcom/google/android/gms/measurement/internal/zzfz;->m(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :goto_866
    if-gtz v2, :cond_88b

    .line 251
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    .line 252
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    const-string v11, "Sample rate must be positive. event, rate"

    .line 253
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfr;->F()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v11, v12, v2}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 254
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-virtual {v10, v8, v9}, Lcom/google/android/gms/internal/measurement/zzgb;->K(ILcom/google/android/gms/internal/measurement/zzfr;)Lcom/google/android/gms/internal/measurement/zzgb;

    goto/16 :goto_7be

    .line 256
    :cond_88b
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfr;->F()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/h;

    if-nez v3, :cond_8eb

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 257
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    iget-object v11, v4, Lcom/google/android/gms/measurement/internal/z3;->a:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 258
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfr;->F()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Lcom/google/android/gms/measurement/internal/e;->T(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v3

    if-nez v3, :cond_8eb

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    .line 260
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    const-string v11, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v12, v4, Lcom/google/android/gms/measurement/internal/z3;->a:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 261
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v12

    move-wide/from16 v22, v14

    .line 262
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfr;->F()Ljava/lang/String;

    move-result-object v14

    .line 263
    invoke-virtual {v3, v11, v12, v14}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/measurement/internal/h;

    iget-object v11, v4, Lcom/google/android/gms/measurement/internal/z3;->a:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 264
    invoke-virtual {v11}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v25

    .line 265
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfr;->F()Ljava/lang/String;

    move-result-object v26

    const-wide/16 v27, 0x1

    const-wide/16 v29, 0x1

    const-wide/16 v31, 0x1

    .line 266
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfr;->t()J

    move-result-wide v33

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v24, v3

    invoke-direct/range {v24 .. v40}, Lcom/google/android/gms/measurement/internal/h;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_8ed

    :cond_8eb
    move-wide/from16 v22, v14

    :goto_8ed
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 267
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 268
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfs;

    const-string v12, "_eid"

    invoke-static {v11, v12}, Lcom/google/android/gms/measurement/internal/zzlk;->j(Lcom/google/android/gms/internal/measurement/zzfs;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    if-eqz v11, :cond_904

    const/4 v12, 0x1

    goto :goto_905

    :cond_904
    const/4 v12, 0x0

    .line 269
    :goto_905
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    const/4 v14, 0x1

    if-ne v2, v14, :cond_938

    .line 270
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_933

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/h;->i:Ljava/lang/Long;

    if-nez v2, :cond_927

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/h;->j:Ljava/lang/Long;

    if-nez v2, :cond_927

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/h;->k:Ljava/lang/Boolean;

    if-eqz v2, :cond_933

    :cond_927
    const/4 v2, 0x0

    .line 272
    invoke-virtual {v3, v2, v2, v2}, Lcom/google/android/gms/measurement/internal/h;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v3

    .line 273
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfr;->F()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_933
    invoke-virtual {v10, v8, v9}, Lcom/google/android/gms/internal/measurement/zzgb;->K(ILcom/google/android/gms/internal/measurement/zzfr;)Lcom/google/android/gms/internal/measurement/zzgb;

    goto/16 :goto_7be

    .line 275
    :cond_938
    invoke-virtual {v7, v2}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v14

    if-nez v14, :cond_97a

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 276
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    int-to-long v14, v2

    .line 277
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v9, v13, v2}, Lcom/google/android/gms/measurement/internal/zzlk;->N(Lcom/google/android/gms/internal/measurement/zzfr;Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_95f

    const/4 v11, 0x0

    .line 280
    invoke-virtual {v3, v11, v2, v11}, Lcom/google/android/gms/measurement/internal/h;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v3

    .line 281
    :cond_95f
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfr;->F()Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfr;->t()J

    move-result-wide v11

    move-wide/from16 v14, v22

    invoke-virtual {v3, v11, v12, v14, v15}, Lcom/google/android/gms/measurement/internal/h;->b(JJ)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v3

    .line 283
    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v24, v4

    move-object/from16 v22, v7

    move-object v2, v10

    move-object v7, v5

    const-wide/16 v4, 0x1

    goto/16 :goto_a08

    :cond_97a
    move-wide/from16 v14, v22

    move-object/from16 v22, v7

    .line 284
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/h;->h:Ljava/lang/Long;

    if-eqz v7, :cond_98f

    .line 285
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-object/from16 v24, v4

    move-object/from16 v26, v5

    move-object/from16 v25, v10

    move-object/from16 v23, v11

    goto :goto_9a5

    .line 286
    :cond_98f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->f0()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v7

    move-object/from16 v25, v10

    move-object/from16 v23, v11

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfr;->s()J

    move-result-wide v10

    move-object/from16 v24, v4

    move-object/from16 v26, v5

    move-wide/from16 v4, v17

    invoke-virtual {v7, v10, v11, v4, v5}, Lcom/google/android/gms/measurement/internal/zzlp;->s0(JJ)J

    move-result-wide v17

    :goto_9a5
    cmp-long v4, v17, v14

    if-eqz v4, :cond_9ee

    .line 287
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 288
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    const-wide/16 v4, 0x1

    .line 289
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v10, p3

    invoke-static {v9, v10, v7}, Lcom/google/android/gms/measurement/internal/zzlk;->N(Lcom/google/android/gms/internal/measurement/zzfr;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 290
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    int-to-long v10, v2

    .line 291
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v9, v13, v2}, Lcom/google/android/gms/measurement/internal/zzlk;->N(Lcom/google/android/gms/internal/measurement/zzfr;Ljava/lang/String;Ljava/lang/Object;)V

    .line 292
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_9dc

    .line 294
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v10, 0x0

    invoke-virtual {v3, v10, v2, v7}, Lcom/google/android/gms/measurement/internal/h;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v3

    .line 295
    :cond_9dc
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfr;->F()Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfr;->t()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11, v14, v15}, Lcom/google/android/gms/measurement/internal/h;->b(JJ)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v3

    move-object/from16 v7, v26

    .line 297
    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a06

    :cond_9ee
    move-object/from16 v7, v26

    const-wide/16 v4, 0x1

    .line 298
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a06

    .line 299
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzfr;->F()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v11, v23

    const/4 v10, 0x0

    invoke-virtual {v3, v11, v10, v10}, Lcom/google/android/gms/measurement/internal/h;->a(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v3

    .line 300
    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a06
    :goto_a06
    move-object/from16 v2, v25

    .line 301
    :goto_a08
    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzgb;->K(ILcom/google/android/gms/internal/measurement/zzfr;)Lcom/google/android/gms/internal/measurement/zzgb;

    :goto_a0b
    add-int/lit8 v8, v8, 0x1

    move-object v10, v2

    move-object v5, v7

    move-object/from16 v7, v22

    move-object/from16 v4, v24

    const-wide/16 v2, 0x0

    goto/16 :goto_725

    :cond_a17
    move-object/from16 v24, v4

    move-object v7, v5

    move-object v2, v10

    .line 302
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgb;->U()I

    move-result v4

    if-ge v3, v4, :cond_a2b

    .line 303
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgb;->I0()Lcom/google/android/gms/internal/measurement/zzgb;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzgb;->w0(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 304
    :cond_a2b
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 305
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 306
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/measurement/internal/h;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/e;->l(Lcom/google/android/gms/measurement/internal/h;)V

    goto :goto_a33

    :cond_a4e
    move-object/from16 v3, v24

    goto :goto_a53

    :cond_a51
    move-object v2, v10

    move-object v3, v4

    :goto_a53
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/z3;->a:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 307
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 308
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 309
    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/e;->P(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c0;

    move-result-object v5

    if-nez v5, :cond_a7c

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v5

    .line 311
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v5

    const-string v6, "Bundling raw events w/o app info. appId"

    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/z3;->a:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 312
    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 313
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_ad8

    .line 314
    :cond_a7c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgb;->U()I

    move-result v6

    if-lez v6, :cond_ad8

    .line 315
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/c0;->Y()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_a90

    .line 316
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzgb;->Y(J)Lcom/google/android/gms/internal/measurement/zzgb;

    goto :goto_a93

    .line 317
    :cond_a90
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgb;->M0()Lcom/google/android/gms/internal/measurement/zzgb;

    .line 318
    :goto_a93
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/c0;->a0()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-nez v12, :cond_a9e

    goto :goto_a9f

    :cond_a9e
    move-wide v6, v8

    :goto_a9f
    cmp-long v8, v6, v10

    if-eqz v8, :cond_aa7

    .line 319
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzgb;->Z(J)Lcom/google/android/gms/internal/measurement/zzgb;

    goto :goto_aaa

    .line 320
    :cond_aa7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgb;->N0()Lcom/google/android/gms/internal/measurement/zzgb;

    .line 321
    :goto_aaa
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/c0;->e()V

    .line 322
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/c0;->Z()J

    move-result-wide v6

    long-to-int v7, v6

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/measurement/zzgb;->A(I)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 323
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgb;->t0()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/c0;->D(J)V

    .line 324
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgb;->s0()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/c0;->B(J)V

    .line 325
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/c0;->d0()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_acd

    .line 326
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzgb;->Q(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    goto :goto_ad0

    .line 327
    :cond_acd
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgb;->J0()Lcom/google/android/gms/internal/measurement/zzgb;

    .line 328
    :goto_ad0
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 329
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 330
    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/e;->k(Lcom/google/android/gms/measurement/internal/c0;)V

    .line 331
    :cond_ad8
    :goto_ad8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgb;->U()I

    move-result v5

    if-lez v5, :cond_c5c

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 332
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgi;->t()Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 333
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/z3;->a:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 334
    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfz;->o(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v5

    const-wide/16 v6, -0x1

    if-eqz v5, :cond_b05

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfe;->L()Z

    move-result v8

    if-nez v8, :cond_afd

    goto :goto_b05

    .line 335
    :cond_afd
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzfe;->w()J

    move-result-wide v8

    .line 336
    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzgb;->C(J)Lcom/google/android/gms/internal/measurement/zzgb;

    goto :goto_b2c

    .line 337
    :cond_b05
    :goto_b05
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/z3;->a:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 338
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgc;->A()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b15

    .line 339
    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/zzgb;->C(J)Lcom/google/android/gms/internal/measurement/zzgb;

    goto :goto_b2c

    .line 340
    :cond_b15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v5

    .line 341
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v5

    const-string v8, "Did not find measurement config or missing version info. appId"

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/z3;->a:Lcom/google/android/gms/internal/measurement/zzgc;

    .line 342
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 343
    invoke-virtual {v5, v8, v9}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    :goto_b2c
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 345
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 346
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzgc;

    .line 347
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 348
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/r3;->d()V

    .line 349
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 351
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgc;->i1()Z

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->n(Z)V

    .line 352
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/e;->g0()V

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 353
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object v8

    .line 354
    invoke-interface {v8}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v8

    .line 355
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgc;->F1()J

    move-result-wide v10

    iget-object v12, v5, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 356
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 357
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->d()J

    move-result-wide v12

    sub-long v12, v8, v12

    cmp-long v14, v10, v12

    if-ltz v14, :cond_b80

    .line 358
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgc;->F1()J

    move-result-wide v10

    iget-object v12, v5, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 359
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 360
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->d()J

    move-result-wide v12

    add-long/2addr v12, v8

    cmp-long v14, v10, v12

    if-lez v14, :cond_ba3

    :cond_b80
    iget-object v10, v5, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 361
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v10

    .line 362
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v10

    const-string v11, "Storing bundle outside of the max uploading time span. appId, now, timestamp"

    .line 363
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 364
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 365
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgc;->F1()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 366
    invoke-virtual {v10, v11, v12, v8, v9}, Lcom/google/android/gms/measurement/internal/zzew;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 367
    :cond_ba3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzil;->h()[B

    move-result-object v8
    :try_end_ba7
    .catchall {:try_start_7e6 .. :try_end_ba7} :catchall_d17

    :try_start_ba7
    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 368
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 369
    invoke-virtual {v9, v8}, Lcom/google/android/gms/measurement/internal/zzlk;->M([B)[B

    move-result-object v8
    :try_end_bb2
    .catch Ljava/io/IOException; {:try_start_ba7 .. :try_end_bb2} :catch_c43
    .catchall {:try_start_ba7 .. :try_end_bb2} :catchall_d17

    :try_start_bb2
    iget-object v9, v5, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 370
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v9

    .line 371
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v9

    const-string v10, "Saving bundle, size"

    array-length v11, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v9, Landroid/content/ContentValues;

    .line 372
    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "app_id"

    .line 373
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "bundle_end_timestamp"

    .line 374
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgc;->F1()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v10, "data"

    .line 375
    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v8, "has_realtime"

    .line 376
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 377
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgc;->p1()Z

    move-result v8

    if-eqz v8, :cond_c02

    const-string v8, "retry_count"

    .line 378
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgc;->y1()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_c02
    .catchall {:try_start_bb2 .. :try_end_c02} :catchall_d17

    .line 379
    :cond_c02
    :try_start_c02
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/e;->N()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const-string v10, "queue"

    const/4 v11, 0x0

    .line 380
    invoke-virtual {v8, v10, v11, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    cmp-long v10, v8, v6

    if-nez v10, :cond_c5c

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 381
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v6

    .line 382
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v6

    const-string v7, "Failed to insert bundle (got -1). appId"

    .line 383
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c28
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c02 .. :try_end_c28} :catch_c29
    .catchall {:try_start_c02 .. :try_end_c28} :catchall_d17

    goto :goto_c5c

    :catch_c29
    move-exception v0

    move-object v6, v0

    .line 384
    :try_start_c2b
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 385
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v5

    .line 386
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v5

    const-string v7, "Error storing bundle. appId"

    .line 387
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v7, v2, v6}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c5c

    :catch_c43
    move-exception v0

    move-object v6, v0

    .line 388
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 389
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v5

    .line 390
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v5

    const-string v7, "Data loss. Failed to serialize bundle. appId"

    .line 391
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 392
    invoke-virtual {v5, v7, v2, v6}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 393
    :cond_c5c
    :goto_c5c
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 394
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/z3;->b:Ljava/util/List;

    .line 395
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 397
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/r3;->d()V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "rowid in ("

    .line 398
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 399
    :goto_c74
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_c91

    if-eqz v6, :cond_c81

    const-string v7, ","

    .line 400
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :cond_c81
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_c74

    :cond_c91
    const-string v6, ")"

    .line 402
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->N()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "raw_events"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    .line 404
    invoke-virtual {v6, v7, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 405
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_cc6

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 406
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 407
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v6, "Deleted fewer rows from raw events table than expected"

    .line 408
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 409
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 410
    invoke-virtual {v2, v6, v5, v3}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_cc6
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 411
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 412
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->N()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_ccf
    .catchall {:try_start_c2b .. :try_end_ccf} :catchall_d17

    const/4 v5, 0x2

    :try_start_cd0
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const-string v6, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    .line 413
    invoke-virtual {v3, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_cdd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_cd0 .. :try_end_cdd} :catch_cde
    .catchall {:try_start_cd0 .. :try_end_cdd} :catchall_d17

    goto :goto_cf3

    :catch_cde
    move-exception v0

    move-object v3, v0

    .line 414
    :try_start_ce0
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 415
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 416
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v5, "Failed to remove unused event metadata. appId"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 417
    invoke-virtual {v2, v5, v4, v3}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 418
    :goto_cf3
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 419
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 420
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->j()V
    :try_end_cfb
    .catchall {:try_start_ce0 .. :try_end_cfb} :catchall_d17

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 421
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 422
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->e0()V

    const/4 v2, 0x1

    return v2

    .line 423
    :cond_d05
    :goto_d05
    :try_start_d05
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 424
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 425
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->j()V
    :try_end_d0d
    .catchall {:try_start_d05 .. :try_end_d0d} :catchall_d17

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 426
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 427
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->e0()V

    const/4 v2, 0x0

    return v2

    :catchall_d17
    move-exception v0

    move-object v2, v0

    .line 428
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 429
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 430
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e;->e0()V

    .line 431
    goto :goto_d23

    :goto_d22
    throw v2

    :goto_d23
    goto :goto_d22
.end method

.method private final L()Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->b()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->m()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->Y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 v0, 0x0

    return v0

    :cond_27
    :goto_27
    const/4 v0, 0x1

    return v0
.end method

.method private final M(Lcom/google/android/gms/internal/measurement/zzfr;Lcom/google/android/gms/internal/measurement/zzfr;)Z
    .registers 12

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfr;->F()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs;

    const-string v2, "_sc"

    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzlk;->i(Lcom/google/android/gms/internal/measurement/zzfs;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfw;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_23

    move-object v0, v2

    goto :goto_27

    .line 5
    :cond_23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfw;->B()Ljava/lang/String;

    move-result-object v0

    .line 6
    :goto_27
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 7
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzfs;

    const-string v4, "_pc"

    invoke-static {v3, v4}, Lcom/google/android/gms/measurement/internal/zzlk;->i(Lcom/google/android/gms/internal/measurement/zzfs;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfw;

    move-result-object v3

    if-nez v3, :cond_3b

    goto :goto_3f

    .line 9
    :cond_3b
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzfw;->B()Ljava/lang/String;

    move-result-object v2

    :goto_3f
    if-eqz v2, :cond_b6

    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzfr;->F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs;

    const-string v1, "_et"

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzlk;->i(Lcom/google/android/gms/internal/measurement/zzfs;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfw;

    move-result-object v0

    if-eqz v0, :cond_b4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfw;->Q()Z

    move-result v2

    if-eqz v2, :cond_b4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfw;->x()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_76

    goto :goto_b4

    :cond_76
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfw;->x()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 16
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzfs;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzlk;->i(Lcom/google/android/gms/internal/measurement/zzfs;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfw;

    move-result-object v0

    if-eqz v0, :cond_98

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfw;->x()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-lez v8, :cond_98

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzfw;->x()J

    move-result-wide v4

    add-long/2addr v2, v4

    :cond_98
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 18
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/google/android/gms/measurement/internal/zzlk;->N(Lcom/google/android/gms/internal/measurement/zzfr;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 19
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    const-wide/16 v0, 0x1

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "_fr"

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/measurement/internal/zzlk;->N(Lcom/google/android/gms/internal/measurement/zzfr;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b4
    :goto_b4
    const/4 p1, 0x1

    return p1

    :cond_b6
    const/4 p1, 0x0

    return p1
.end method

.method private static final N(Lcom/google/android/gms/measurement/internal/zzp;)Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzp;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzp;->E:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method private static final O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;
    .registers 3

    if-eqz p0, :cond_1d

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/r3;->f()Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Component not initialized: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static bridge synthetic Z(Lcom/google/android/gms/measurement/internal/zzli;)Lcom/google/android/gms/measurement/internal/zzgi;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    return-object p0
.end method

.method public static d0(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/zzli;
    .registers 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/measurement/internal/zzli;->F:Lcom/google/android/gms/measurement/internal/zzli;

    if-nez v0, :cond_2d

    const-class v0, Lcom/google/android/gms/measurement/internal/zzli;

    monitor-enter v0

    :try_start_11
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzli;->F:Lcom/google/android/gms/measurement/internal/zzli;

    if-nez v1, :cond_28

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzlj;

    .line 3
    invoke-direct {v1, p0}, Lcom/google/android/gms/measurement/internal/zzlj;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/measurement/internal/zzlj;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzli;

    const/4 v2, 0x0

    .line 5
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/measurement/internal/zzli;-><init>(Lcom/google/android/gms/measurement/internal/zzlj;Lcom/google/android/gms/measurement/internal/zzgi;)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzli;->F:Lcom/google/android/gms/measurement/internal/zzli;

    .line 6
    :cond_28
    monitor-exit v0

    goto :goto_2d

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_11 .. :try_end_2c} :catchall_2a

    throw p0

    :cond_2d
    :goto_2d
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzli;->F:Lcom/google/android/gms/measurement/internal/zzli;

    return-object p0
.end method

.method static bridge synthetic i0(Lcom/google/android/gms/measurement/internal/zzli;Lcom/google/android/gms/measurement/internal/zzlj;)V
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzfq;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzfq;-><init>(Lcom/google/android/gms/measurement/internal/zzli;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->k:Lcom/google/android/gms/measurement/internal/zzfq;

    .line 2
    new-instance p1, Lcom/google/android/gms/measurement/internal/e;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/e;-><init>(Lcom/google/android/gms/measurement/internal/zzli;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/r3;->e()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/b;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzaf;->v(Lcom/google/android/gms/measurement/internal/b;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzkd;

    .line 5
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzkd;-><init>(Lcom/google/android/gms/measurement/internal/zzli;)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/r3;->e()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->i:Lcom/google/android/gms/measurement/internal/zzkd;

    new-instance p1, Lcom/google/android/gms/measurement/internal/l4;

    .line 7
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/l4;-><init>(Lcom/google/android/gms/measurement/internal/zzli;)V

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/r3;->e()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->f:Lcom/google/android/gms/measurement/internal/l4;

    new-instance p1, Lcom/google/android/gms/measurement/internal/z1;

    .line 9
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/z1;-><init>(Lcom/google/android/gms/measurement/internal/zzli;)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/r3;->e()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->h:Lcom/google/android/gms/measurement/internal/z1;

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzku;

    .line 11
    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzku;-><init>(Lcom/google/android/gms/measurement/internal/zzli;)V

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/r3;->e()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->e:Lcom/google/android/gms/measurement/internal/zzku;

    .line 13
    new-instance p1, Lcom/google/android/gms/measurement/internal/w;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/w;-><init>(Lcom/google/android/gms/measurement/internal/zzli;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->d:Lcom/google/android/gms/measurement/internal/w;

    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->q:I

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->r:I

    if-eq p1, v0, :cond_75

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->q:I

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzli;->r:I

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all upload components initialized"

    .line 18
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_75
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->m:Z

    return-void
.end method


# virtual methods
.method final A()Z
    .registers 6
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->v:Ljava/nio/channels/FileLock;

    const/4 v1, 0x1

    const-string v2, "Storage concurrent access okay"

    if-eqz v0, :cond_21

    .line 2
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_21

    .line 3
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    return v1

    .line 4
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->N0()Landroid/content/Context;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    const-string v4, "google_app_measurement.db"

    .line 8
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_39
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    .line 9
    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->w:Ljava/nio/channels/FileChannel;

    .line 10
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->v:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_5a

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    return v1

    .line 12
    :cond_5a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_67} :catch_86
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_67} :catch_77
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_39 .. :try_end_67} :catch_68

    goto :goto_94

    :catch_68
    move-exception v0

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    const-string v2, "Storage lock already acquired"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_94

    :catch_77
    move-exception v0

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_94

    :catch_86
    move-exception v0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_94
    const/4 v0, 0x0

    return v0
.end method

.method public final B()Lcom/google/android/gms/measurement/internal/zzgf;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    return-object v0
.end method

.method final D()J
    .registers 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzli;->i:Lcom/google/android/gms/measurement/internal/zzkd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/r3;->d()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzkd;->l:Lcom/google/android/gms/measurement/internal/zzfj;

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzfj;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_36

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->L()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzlp;->p()Ljava/security/SecureRandom;

    move-result-object v3

    const v4, 0x5265c00

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzkd;->l:Lcom/google/android/gms/measurement/internal/zzfj;

    .line 5
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzfj;->b(J)V

    :cond_36
    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final N0()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->N0()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method final P(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/c0;
    .registers 12

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->b()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpg;->b()Z

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzel;->L0:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    .line 7
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->K:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->B:Ljava/util/Map;

    .line 8
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/measurement/internal/a4;

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzp;->K:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v1}, Lcom/google/android/gms/measurement/internal/a4;-><init>(Lcom/google/android/gms/measurement/internal/zzli;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzlg;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 10
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/e;->P(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c0;

    move-result-object v0

    .line 11
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    .line 12
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzli;->S(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->J:Ljava/lang/String;

    .line 13
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzah;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzah;->c(Lcom/google/android/gms/measurement/internal/zzah;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v2

    .line 14
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzag;->p:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzah;->i(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v4

    if-eqz v4, :cond_66

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzli;->i:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 15
    iget-object v5, p1, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzkd;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_68

    :cond_66
    const-string v4, ""

    :goto_68
    if-nez v0, :cond_8d

    new-instance v0, Lcom/google/android/gms/measurement/internal/c0;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 16
    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/measurement/internal/c0;-><init>(Lcom/google/android/gms/measurement/internal/zzgi;Ljava/lang/String;)V

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzag;->q:Lcom/google/android/gms/measurement/internal/zzag;

    .line 17
    invoke-virtual {v2, v5}, Lcom/google/android/gms/measurement/internal/zzah;->i(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 18
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzli;->g0(Lcom/google/android/gms/measurement/internal/zzah;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/c0;->i(Ljava/lang/String;)V

    .line 19
    :cond_82
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzah;->i(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v2

    if-eqz v2, :cond_155

    .line 20
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/c0;->G(Ljava/lang/String;)V

    goto/16 :goto_155

    .line 21
    :cond_8d
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzah;->i(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v3

    if-eqz v3, :cond_13c

    if-eqz v4, :cond_13c

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c0;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13c

    .line 23
    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/c0;->G(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzne;->b()Z

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzel;->p0:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v3

    const-string v5, "00000000-0000-0000-0000-000000000000"

    if-eqz v3, :cond_d7

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v3

    sget-object v6, Lcom/google/android/gms/measurement/internal/zzel;->u0:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v3, v1, v6}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v3

    if-eqz v3, :cond_d7

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzli;->i:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 27
    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    .line 28
    invoke-virtual {v3, v6, v2}, Lcom/google/android/gms/measurement/internal/zzkd;->i(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzah;)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 29
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_de

    .line 30
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzli;->g0(Lcom/google/android/gms/measurement/internal/zzah;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/c0;->i(Ljava/lang/String;)V

    goto :goto_de

    .line 31
    :cond_d7
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzli;->g0(Lcom/google/android/gms/measurement/internal/zzah;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/c0;->i(Ljava/lang/String;)V

    .line 32
    :cond_de
    :goto_de
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzne;->b()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v3

    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v3

    if-eqz v3, :cond_155

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzli;->i:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 33
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    .line 34
    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/zzkd;->i(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzah;)Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 35
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_155

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 36
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 37
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    const-string v4, "_id"

    .line 38
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/e;->W(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/b4;

    move-result-object v2

    if-eqz v2, :cond_155

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 39
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 40
    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    const-string v4, "_lair"

    .line 41
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/e;->W(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/b4;

    move-result-object v2

    if-nez v2, :cond_155

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v7

    new-instance v2, Lcom/google/android/gms/measurement/internal/b4;

    .line 43
    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    const-wide/16 v5, 0x1

    .line 44
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v5, "auto"

    const-string v6, "_lair"

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/b4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 45
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 46
    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/e;->s(Lcom/google/android/gms/measurement/internal/b4;)Z

    goto :goto_155

    .line 47
    :cond_13c
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c0;->f0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_155

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzag;->q:Lcom/google/android/gms/measurement/internal/zzag;

    .line 48
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzah;->i(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v3

    if-eqz v3, :cond_155

    .line 49
    invoke-virtual {p0, v2}, Lcom/google/android/gms/measurement/internal/zzli;->g0(Lcom/google/android/gms/measurement/internal/zzah;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/c0;->i(Ljava/lang/String;)V

    .line 50
    :cond_155
    :goto_155
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/c0;->x(Ljava/lang/String;)V

    .line 51
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->E:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/c0;->f(Ljava/lang/String;)V

    .line 52
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->y:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16c

    .line 53
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/c0;->w(Ljava/lang/String;)V

    .line 54
    :cond_16c
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->s:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_177

    .line 55
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/c0;->y(J)V

    .line 56
    :cond_177
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_184

    .line 57
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/c0;->k(Ljava/lang/String;)V

    .line 58
    :cond_184
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->x:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/c0;->l(J)V

    .line 59
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->r:Ljava/lang/String;

    if-eqz v2, :cond_190

    .line 60
    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/c0;->j(Ljava/lang/String;)V

    .line 61
    :cond_190
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->t:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/c0;->t(J)V

    .line 62
    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->v:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/c0;->E(Z)V

    .line 63
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->u:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a7

    .line 64
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->u:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/c0;->z(Ljava/lang/String;)V

    .line 65
    :cond_1a7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzel;->j0:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v2

    if-nez v2, :cond_1b8

    .line 66
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->z:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/c0;->h(J)V

    .line 67
    :cond_1b8
    iget-boolean v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->C:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/c0;->g(Z)V

    .line 68
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->F:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/c0;->F(Ljava/lang/Boolean;)V

    .line 69
    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->G:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/c0;->u(J)V

    .line 70
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpp;->b()Z

    .line 71
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzel;->J0:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v2

    if-eqz v2, :cond_1db

    .line 72
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->L:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/c0;->I(Ljava/lang/String;)V

    .line 73
    :cond_1db
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznz;->b()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzel;->B0:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v2

    if-eqz v2, :cond_1f0

    .line 74
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->H:Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/c0;->H(Ljava/util/List;)V

    goto :goto_202

    .line 75
    :cond_1f0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zznz;->b()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object p1

    sget-object v2, Lcom/google/android/gms/measurement/internal/zzel;->A0:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result p1

    if-eqz p1, :cond_202

    .line 76
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/c0;->H(Ljava/util/List;)V

    .line 77
    :cond_202
    :goto_202
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c0;->L()Z

    move-result p1

    if-eqz p1, :cond_210

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 78
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 79
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/e;->k(Lcom/google/android/gms/measurement/internal/c0;)V

    :cond_210
    return-object v0
.end method

.method public final Q()Lcom/google/android/gms/measurement/internal/l4;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->f:Lcom/google/android/gms/measurement/internal/l4;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    return-object v0
.end method

.method public final R()Lcom/google/android/gms/measurement/internal/zzaf;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    return-object v0
.end method

.method final S(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;
    .registers 8

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzah;->b:Lcom/google/android/gms/measurement/internal/zzah;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->b()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->A:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzah;

    if-nez v0, :cond_69

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r3;->d()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->N()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "select consent_state from consent_settings where app_id=? limit 1;"

    const/4 v5, 0x0

    .line 10
    :try_start_31
    invoke-virtual {v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 11
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 12
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_31 .. :try_end_3f} :catch_52
    .catchall {:try_start_31 .. :try_end_3f} :catchall_50

    .line 13
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_48

    :cond_43
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const-string v0, "G1"

    .line 14
    :goto_48
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzah;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzli;->v(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzah;)V

    goto :goto_69

    :catchall_50
    move-exception p1

    goto :goto_63

    :catch_52
    move-exception p1

    .line 16
    :try_start_53
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v1, "Database error"

    invoke-virtual {v0, v1, v4, p1}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    throw p1
    :try_end_63
    .catchall {:try_start_53 .. :try_end_63} :catchall_50

    :goto_63
    if-eqz v5, :cond_68

    .line 20
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 21
    :cond_68
    throw p1

    :cond_69
    :goto_69
    return-object v0
.end method

.method public final T()Lcom/google/android/gms/measurement/internal/e;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    return-object v0
.end method

.method public final U()Lcom/google/android/gms/measurement/internal/zzey;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    return-object v0
.end method

.method public final V()Lcom/google/android/gms/measurement/internal/zzet;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v0

    return-object v0
.end method

.method public final W()Lcom/google/android/gms/measurement/internal/zzfe;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->b:Lcom/google/android/gms/measurement/internal/zzfe;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    return-object v0
.end method

.method public final X()Lcom/google/android/gms/measurement/internal/w;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->d:Lcom/google/android/gms/measurement/internal/w;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final Y()Lcom/google/android/gms/measurement/internal/zzfz;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    return-object v0
.end method

.method final a()V
    .registers 10
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->b()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->n:Z

    if-nez v0, :cond_127

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->n:Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->A()Z

    move-result v1

    if-eqz v1, :cond_127

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzli;->w:Ljava/nio/channels/FileChannel;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    const-wide/16 v2, 0x0

    const-string v4, "Bad channel to read from"

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eqz v1, :cond_68

    .line 5
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v7

    if-nez v7, :cond_2f

    goto :goto_68

    .line 6
    :cond_2f
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 7
    :try_start_33
    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 8
    invoke-virtual {v1, v7}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-eq v1, v5, :cond_51

    const/4 v7, -0x1

    if-eq v1, v7, :cond_73

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v7

    const-string v8, "Unexpected data length. Bytes read"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_73

    .line 10
    :cond_51
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 11
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_58} :catch_59

    goto :goto_73

    :catch_59
    move-exception v1

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v7

    const-string v8, "Failed to read from channel"

    invoke-virtual {v7, v8, v1}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_73

    .line 13
    :cond_68
    :goto_68
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    :cond_73
    :goto_73
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->y()Lcom/google/android/gms/measurement/internal/zzep;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzep;->k()I

    move-result v1

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    if-le v6, v1, :cond_9c

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    .line 18
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    .line 20
    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_9c
    if-ge v6, v1, :cond_127

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/zzli;->w:Ljava/nio/channels/FileChannel;

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    if-eqz v7, :cond_107

    .line 22
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v8

    if-nez v8, :cond_b0

    goto :goto_107

    .line 23
    :cond_b0
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 24
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 26
    :try_start_ba
    invoke-virtual {v7, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 27
    invoke-virtual {v7, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 28
    invoke-virtual {v7, v0}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 29
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_e2

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_e2} :catch_f8

    .line 31
    :cond_e2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    .line 33
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgraded. Previous, current version"

    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catch_f8
    move-exception v0

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v3, "Failed to write to channel"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_112

    .line 35
    :cond_107
    :goto_107
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    .line 36
    :goto_112
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    .line 38
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgrade failed. Previous, current version"

    .line 40
    invoke-virtual {v0, v3, v2, v1}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_127
    return-void
.end method

.method final a0()Lcom/google/android/gms/measurement/internal/zzgi;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    return-object v0
.end method

.method final b()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->m:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b0()Lcom/google/android/gms/measurement/internal/z1;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->h:Lcom/google/android/gms/measurement/internal/z1;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    return-object v0
.end method

.method final c(Lcom/google/android/gms/measurement/internal/c0;)V
    .registers 14

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c0;->j0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c0;->c0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_31

    .line 3
    :cond_1c
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c0;->e0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0xcc

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzli;->h(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    .line 5
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->j:Lcom/google/android/gms/measurement/internal/zzkx;

    new-instance v1, Landroid/net/Uri$Builder;

    .line 6
    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c0;->j0()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c0;->c0()Ljava/lang/String;

    move-result-object v2

    .line 10
    :cond_46
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzel;->f:Lcom/google/android/gms/measurement/internal/zzek;

    const/4 v4, 0x0

    .line 11
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzek;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzel;->g:Lcom/google/android/gms/measurement/internal/zzek;

    .line 12
    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/zzek;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "config/app/"

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "platform"

    const-string v5, "android"

    .line 14
    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v3

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaf;->l()J

    const-wide/32 v5, 0xee48

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v5, "gmp_version"

    invoke-virtual {v2, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "runtime_version"

    const-string v5, "0"

    .line 17
    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpg;->b()Z

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c0;->e0()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzel;->C0:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v0

    if-nez v0, :cond_b0

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c0;->f0()Ljava/lang/String;

    move-result-object v0

    const-string v2, "app_instance_id"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 22
    :cond_b0
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    :try_start_b8
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c0;->e0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 24
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    const-string v2, "Fetching remote configuration"

    invoke-virtual {v1, v2, v7}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 26
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 27
    invoke-virtual {v1, v7}, Lcom/google/android/gms/measurement/internal/zzfz;->o(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 28
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 29
    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/zzfz;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_129

    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_fa

    .line 31
    new-instance v1, Lo/a;

    invoke-direct {v1}, Lo/a;-><init>()V

    const-string v3, "If-Modified-Since"

    .line 32
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_fb

    :cond_fa
    move-object v1, v4

    .line 33
    :goto_fb
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpg;->b()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/zzel;->O0:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v2

    if-eqz v2, :cond_127

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 34
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 35
    invoke-virtual {v2, v7}, Lcom/google/android/gms/measurement/internal/zzfz;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_127

    if-nez v1, :cond_120

    .line 37
    new-instance v1, Lo/a;

    invoke-direct {v1}, Lo/a;-><init>()V

    :cond_120
    move-object v4, v1

    const-string v1, "If-None-Match"

    .line 38
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_129

    :cond_127
    move-object v10, v1

    goto :goto_12a

    :cond_129
    :goto_129
    move-object v10, v4

    :goto_12a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzli;->s:Z

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/zzli;->b:Lcom/google/android/gms/measurement/internal/zzfe;

    .line 39
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    new-instance v11, Lcom/google/android/gms/measurement/internal/v3;

    invoke-direct {v11, p0}, Lcom/google/android/gms/measurement/internal/v3;-><init>(Lcom/google/android/gms/measurement/internal/zzli;)V

    .line 40
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 41
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/r3;->d()V

    .line 42
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v6, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/u;

    const/4 v9, 0x0

    move-object v5, v2

    .line 45
    invoke-direct/range {v5 .. v11}, Lcom/google/android/gms/measurement/internal/u;-><init>(Lcom/google/android/gms/measurement/internal/zzfe;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/s;)V

    .line 46
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzgf;->u(Ljava/lang/Runnable;)V
    :try_end_153
    .catch Ljava/net/MalformedURLException; {:try_start_b8 .. :try_end_153} :catch_154

    return-void

    .line 47
    :catch_154
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c0;->e0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    .line 50
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final c0()Lcom/google/android/gms/measurement/internal/zzkd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->i:Lcom/google/android/gms/measurement/internal/zzkd;

    return-object v0
.end method

.method final d(Lcom/google/android/gms/measurement/internal/zzav;Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->b()V

    .line 5
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    move-object/from16 v3, p1

    .line 6
    iget-wide v10, v3, Lcom/google/android/gms/measurement/internal/zzav;->r:J

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpm;->b()Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzel;->v0:Lcom/google/android/gms/measurement/internal/zzek;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_52

    .line 8
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzez;->b(Lcom/google/android/gms/measurement/internal/zzav;)Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v3

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzli;->C:Lcom/google/android/gms/measurement/internal/zziu;

    if-eqz v4, :cond_49

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzli;->D:Ljava/lang/String;

    if-eqz v4, :cond_49

    .line 10
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    goto :goto_49

    .line 11
    :cond_47
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzli;->C:Lcom/google/android/gms/measurement/internal/zziu;

    .line 12
    :cond_49
    :goto_49
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzez;->d:Landroid/os/Bundle;

    .line 13
    invoke-static {v6, v4, v5}, Lcom/google/android/gms/measurement/internal/zzlp;->u(Lcom/google/android/gms/measurement/internal/zziu;Landroid/os/Bundle;Z)V

    .line 14
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzez;->a()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v3

    :cond_52
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 15
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 16
    invoke-static {v3, v0}, Lcom/google/android/gms/measurement/internal/zzlk;->h(Lcom/google/android/gms/measurement/internal/zzav;Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v4

    if-nez v4, :cond_5e

    return-void

    .line 17
    :cond_5e
    iget-boolean v4, v0, Lcom/google/android/gms/measurement/internal/zzp;->v:Z

    if-nez v4, :cond_66

    .line 18
    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzli;->P(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/c0;

    return-void

    .line 19
    :cond_66
    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzp;->H:Ljava/util/List;

    if-eqz v4, :cond_a5

    .line 20
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzav;->o:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_93

    .line 21
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzav;->p:Lcom/google/android/gms/measurement/internal/zzat;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzat;->X3()Landroid/os/Bundle;

    move-result-object v4

    const-wide/16 v6, 0x1

    const-string v8, "ga_safelisted"

    .line 22
    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    new-instance v6, Lcom/google/android/gms/measurement/internal/zzav;

    .line 23
    iget-object v13, v3, Lcom/google/android/gms/measurement/internal/zzav;->o:Ljava/lang/String;

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzat;

    invoke-direct {v14, v4}, Lcom/google/android/gms/measurement/internal/zzat;-><init>(Landroid/os/Bundle;)V

    iget-object v15, v3, Lcom/google/android/gms/measurement/internal/zzav;->q:Ljava/lang/String;

    iget-wide v3, v3, Lcom/google/android/gms/measurement/internal/zzav;->r:J

    move-object v12, v6

    move-wide/from16 v16, v3

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/measurement/internal/zzav;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzat;Ljava/lang/String;J)V

    goto :goto_a6

    .line 24
    :cond_93
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->l()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzav;->o:Ljava/lang/String;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzav;->q:Ljava/lang/String;

    const-string v5, "Dropping non-safelisted event. appId, event name, origin"

    .line 26
    invoke-virtual {v0, v5, v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzew;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_a5
    move-object v12, v3

    .line 27
    :goto_a6
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 28
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 29
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e;->d0()V

    :try_start_ae
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 30
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 31
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 33
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/r3;->d()V

    const/4 v4, 0x2

    const-wide/16 v6, 0x0

    const/4 v13, 0x1

    cmp-long v8, v10, v6

    if-gez v8, :cond_e0

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 34
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    .line 35
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    const-string v8, "Invalid time querying timed out conditional properties"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 36
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 37
    invoke-virtual {v3, v8, v9, v14}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_f0

    :cond_e0
    new-array v8, v4, [Ljava/lang/String;

    aput-object v2, v8, v5

    .line 39
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v13

    const-string v9, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    .line 40
    invoke-virtual {v3, v9, v8}, Lcom/google/android/gms/measurement/internal/e;->a0(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 41
    :goto_f0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f4
    :goto_f4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_140

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzab;

    if-eqz v8, :cond_f4

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v9

    .line 43
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v9

    const-string v14, "User property timed out"

    iget-object v15, v8, Lcom/google/android/gms/measurement/internal/zzab;->o:Ljava/lang/String;

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 44
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v13

    iget-object v5, v8, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    .line 45
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    invoke-virtual {v13, v5}, Lcom/google/android/gms/measurement/internal/zzet;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v13, v8, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    .line 46
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzll;->V3()Ljava/lang/Object;

    move-result-object v13

    .line 47
    invoke-virtual {v9, v14, v15, v5, v13}, Lcom/google/android/gms/measurement/internal/zzew;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, v8, Lcom/google/android/gms/measurement/internal/zzab;->u:Lcom/google/android/gms/measurement/internal/zzav;

    if-eqz v5, :cond_131

    new-instance v9, Lcom/google/android/gms/measurement/internal/zzav;

    .line 48
    invoke-direct {v9, v5, v10, v11}, Lcom/google/android/gms/measurement/internal/zzav;-><init>(Lcom/google/android/gms/measurement/internal/zzav;J)V

    invoke-virtual {v1, v9, v0}, Lcom/google/android/gms/measurement/internal/zzli;->z(Lcom/google/android/gms/measurement/internal/zzav;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_131
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 49
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    .line 50
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    invoke-virtual {v5, v2, v8}, Lcom/google/android/gms/measurement/internal/e;->H(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v13, 0x1

    goto :goto_f4

    :cond_140
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 51
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 52
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 54
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/r3;->d()V

    cmp-long v5, v10, v6

    if-gez v5, :cond_16e

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 55
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    .line 56
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    const-string v5, "Invalid time querying expired conditional properties"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 57
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 58
    invoke-virtual {v3, v5, v8, v9}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_180

    :cond_16e
    new-array v5, v4, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v5, v8

    .line 60
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v5, v9

    const-string v8, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    .line 61
    invoke-virtual {v3, v8, v5}, Lcom/google/android/gms/measurement/internal/e;->a0(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 62
    :goto_180
    new-instance v5, Ljava/util/ArrayList;

    .line 63
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 64
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18d
    :goto_18d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1df

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/measurement/internal/zzab;

    if-eqz v8, :cond_18d

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v9

    .line 66
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v9

    const-string v13, "User property expired"

    iget-object v14, v8, Lcom/google/android/gms/measurement/internal/zzab;->o:Ljava/lang/String;

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 67
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v15

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    .line 68
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    invoke-virtual {v15, v4}, Lcom/google/android/gms/measurement/internal/zzet;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v15, v8, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    .line 69
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzll;->V3()Ljava/lang/Object;

    move-result-object v15

    .line 70
    invoke-virtual {v9, v13, v14, v4, v15}, Lcom/google/android/gms/measurement/internal/zzew;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 71
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    .line 72
    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    invoke-virtual {v4, v2, v9}, Lcom/google/android/gms/measurement/internal/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v8, Lcom/google/android/gms/measurement/internal/zzab;->y:Lcom/google/android/gms/measurement/internal/zzav;

    if-eqz v4, :cond_1d1

    .line 73
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d1
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 74
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    .line 75
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    invoke-virtual {v4, v2, v8}, Lcom/google/android/gms/measurement/internal/e;->H(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    goto :goto_18d

    .line 76
    :cond_1df
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/measurement/internal/zzav;

    new-instance v5, Lcom/google/android/gms/measurement/internal/zzav;

    .line 77
    invoke-direct {v5, v4, v10, v11}, Lcom/google/android/gms/measurement/internal/zzav;-><init>(Lcom/google/android/gms/measurement/internal/zzav;J)V

    invoke-virtual {v1, v5, v0}, Lcom/google/android/gms/measurement/internal/zzli;->z(Lcom/google/android/gms/measurement/internal/zzav;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_1e3

    :cond_1f8
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 78
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 79
    iget-object v4, v12, Lcom/google/android/gms/measurement/internal/zzav;->o:Ljava/lang/String;

    .line 80
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 83
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/r3;->d()V

    cmp-long v5, v10, v6

    if-gez v5, :cond_235

    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 84
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v5

    .line 85
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v5

    const-string v6, "Invalid time querying triggered conditional properties"

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 86
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v3

    .line 87
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzet;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 89
    invoke-virtual {v5, v6, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzew;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_24b

    :cond_235
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v4, v5, v2

    .line 91
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v5, v4

    const-string v2, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    .line 92
    invoke-virtual {v3, v2, v5}, Lcom/google/android/gms/measurement/internal/e;->a0(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 93
    :goto_24b
    new-instance v13, Ljava/util/ArrayList;

    .line 94
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_258
    :goto_258
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/google/android/gms/measurement/internal/zzab;

    if-eqz v14, :cond_258

    iget-object v3, v14, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    new-instance v15, Lcom/google/android/gms/measurement/internal/b4;

    iget-object v4, v14, Lcom/google/android/gms/measurement/internal/zzab;->o:Ljava/lang/String;

    .line 96
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/zzab;->p:Ljava/lang/String;

    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    .line 97
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzll;->V3()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v3, v15

    move-wide v7, v10

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/measurement/internal/b4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 98
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 99
    invoke-virtual {v3, v15}, Lcom/google/android/gms/measurement/internal/e;->s(Lcom/google/android/gms/measurement/internal/b4;)Z

    move-result v3

    if-eqz v3, :cond_2ad

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    .line 101
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    const-string v4, "User property triggered"

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/zzab;->o:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 102
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v6

    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/b4;->c:Ljava/lang/String;

    .line 103
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzet;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/b4;->e:Ljava/lang/Object;

    .line 104
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzew;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2ce

    .line 105
    :cond_2ad
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    .line 106
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    const-string v4, "Too many active user properties, ignoring"

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/zzab;->o:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 107
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v6

    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/b4;->c:Ljava/lang/String;

    .line 108
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzet;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v15, Lcom/google/android/gms/measurement/internal/b4;->e:Ljava/lang/Object;

    .line 109
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzew;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    :goto_2ce
    iget-object v3, v14, Lcom/google/android/gms/measurement/internal/zzab;->w:Lcom/google/android/gms/measurement/internal/zzav;

    if-eqz v3, :cond_2d5

    .line 111
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d5
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzll;

    .line 112
    invoke-direct {v3, v15}, Lcom/google/android/gms/measurement/internal/zzll;-><init>(Lcom/google/android/gms/measurement/internal/b4;)V

    iput-object v3, v14, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    const/4 v3, 0x1

    iput-boolean v3, v14, Lcom/google/android/gms/measurement/internal/zzab;->s:Z

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 113
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 114
    invoke-virtual {v4, v14}, Lcom/google/android/gms/measurement/internal/e;->r(Lcom/google/android/gms/measurement/internal/zzab;)Z

    goto/16 :goto_258

    .line 115
    :cond_2e9
    invoke-virtual {v1, v12, v0}, Lcom/google/android/gms/measurement/internal/zzli;->z(Lcom/google/android/gms/measurement/internal/zzav;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 116
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_305

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzav;

    new-instance v4, Lcom/google/android/gms/measurement/internal/zzav;

    .line 117
    invoke-direct {v4, v3, v10, v11}, Lcom/google/android/gms/measurement/internal/zzav;-><init>(Lcom/google/android/gms/measurement/internal/zzav;J)V

    invoke-virtual {v1, v4, v0}, Lcom/google/android/gms/measurement/internal/zzli;->z(Lcom/google/android/gms/measurement/internal/zzav;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_2f0

    :cond_305
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 118
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 119
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->j()V
    :try_end_30d
    .catchall {:try_start_ae .. :try_end_30d} :catchall_316

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 120
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 121
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->e0()V

    return-void

    :catchall_316
    move-exception v0

    .line 122
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 123
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 124
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->e0()V

    .line 125
    goto :goto_321

    :goto_320
    throw v0

    :goto_321
    goto :goto_320
.end method

.method final e(Lcom/google/android/gms/measurement/internal/zzav;Ljava/lang/String;)V
    .registers 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    .line 1
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 2
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/e;->P(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c0;

    move-result-object v15

    if-eqz v15, :cond_bc

    .line 3
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/c0;->h0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto/16 :goto_bc

    .line 4
    :cond_1d
    invoke-direct {v0, v15}, Lcom/google/android/gms/measurement/internal/zzli;->G(Lcom/google/android/gms/measurement/internal/c0;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_3f

    .line 5
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzav;->o:Ljava/lang/String;

    const-string v4, "_ui"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Could not find package. appId"

    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_57

    .line 7
    :cond_3f
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_57

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "App version does not match; dropping event. appId"

    .line 10
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 11
    :cond_57
    :goto_57
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzp;

    move-object v2, v14

    .line 12
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/c0;->j0()Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/c0;->h0()Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/c0;->M()J

    move-result-wide v6

    .line 15
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/c0;->g0()Ljava/lang/String;

    move-result-object v8

    .line 16
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/c0;->X()J

    move-result-wide v9

    .line 17
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/c0;->U()J

    move-result-wide v11

    const/4 v13, 0x0

    .line 18
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/c0;->K()Z

    move-result v16

    move-object/from16 v33, v14

    move/from16 v14, v16

    const/16 v16, 0x0

    move-object/from16 v28, v15

    move/from16 v15, v16

    .line 19
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/measurement/internal/c0;->i0()Ljava/lang/String;

    move-result-object v16

    .line 20
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/measurement/internal/c0;->A()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    .line 21
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/measurement/internal/c0;->J()Z

    move-result v22

    const/16 v23, 0x0

    .line 22
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/measurement/internal/c0;->c0()Ljava/lang/String;

    move-result-object v24

    .line 23
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/measurement/internal/c0;->b0()Ljava/lang/Boolean;

    move-result-object v25

    .line 24
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/measurement/internal/c0;->V()J

    move-result-wide v26

    .line 25
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/measurement/internal/c0;->c()Ljava/util/List;

    move-result-object v28

    const/16 v29, 0x0

    .line 26
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzli;->S(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/measurement/internal/zzah;->h()Ljava/lang/String;

    move-result-object v30

    const/16 v32, 0x0

    const-string v31, ""

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v32}, Lcom/google/android/gms/measurement/internal/zzp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v33

    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzli;->f(Lcom/google/android/gms/measurement/internal/zzav;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void

    .line 28
    :cond_bc
    :goto_bc
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->l()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final e0()Lcom/google/android/gms/measurement/internal/zzlk;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    return-object v0
.end method

.method final f(Lcom/google/android/gms/measurement/internal/zzav;Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 11

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzez;->b(Lcom/google/android/gms/measurement/internal/zzav;)Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->f0()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzez;->d:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 4
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 5
    iget-object v3, p2, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/e;->O(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzlp;->v(Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->f0()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzaf;->i(Ljava/lang/String;)I

    move-result v1

    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/zzlp;->w(Lcom/google/android/gms/measurement/internal/zzez;I)V

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzez;->a()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object p1

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzav;->o:Ljava/lang/String;

    const-string v1, "_cmp"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    goto :goto_6a

    .line 12
    :cond_3d
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzav;->p:Lcom/google/android/gms/measurement/internal/zzat;

    const-string v1, "_cis"

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzat;->b4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "referrer API v2"

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzav;->p:Lcom/google/android/gms/measurement/internal/zzat;

    const-string v1, "gclid"

    .line 15
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzat;->b4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 17
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzll;

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzav;->r:J

    const-string v3, "_lgclid"

    const-string v7, "auto"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/measurement/internal/zzll;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/measurement/internal/zzli;->w(Lcom/google/android/gms/measurement/internal/zzll;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 19
    :cond_6a
    :goto_6a
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzli;->d(Lcom/google/android/gms/measurement/internal/zzav;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void
.end method

.method public final f0()Lcom/google/android/gms/measurement/internal/zzlp;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->L()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v0

    return-object v0
.end method

.method final g()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->r:I

    return-void
.end method

.method final g0(Lcom/google/android/gms/measurement/internal/zzah;)Ljava/lang/String;
    .registers 6

    .line 1
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzag;->q:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzah;->i(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result p1

    if-eqz p1, :cond_2b

    const/16 p1, 0x10

    new-array p1, p1, [B

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->f0()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzlp;->p()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/math/BigInteger;

    .line 3
    invoke-direct {v3, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    const-string p1, "%032x"

    invoke-static {v0, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2b
    const/4 p1, 0x0

    return-object p1
.end method

.method final h(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .registers 14
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->b()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_12

    :try_start_10
    new-array p4, v0, [B

    .line 4
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    array-length v2, p4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "onConfigFetched. Response size"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->d0()V
    :try_end_2c
    .catchall {:try_start_10 .. :try_end_2c} :catchall_1a1

    :try_start_2c
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 8
    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/e;->P(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c0;

    move-result-object v1

    const/16 v3, 0xc8

    const/16 v4, 0x130

    if-eq p2, v3, :cond_43

    const/16 v3, 0xcc

    if-eq p2, v3, :cond_43

    if-ne p2, v4, :cond_47

    const/16 p2, 0x130

    :cond_43
    if-nez p3, :cond_47

    const/4 v3, 0x1

    goto :goto_48

    :cond_47
    const/4 v3, 0x0

    :goto_48
    if-nez v1, :cond_5d

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_189

    :cond_5d
    const/16 v5, 0x194

    if-nez v3, :cond_bb

    if-ne p2, v5, :cond_64

    goto :goto_bb

    .line 12
    :cond_64
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object p4

    invoke-interface {p4}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Lcom/google/android/gms/measurement/internal/c0;->v(J)V

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 13
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 14
    invoke-virtual {p4, v1}, Lcom/google/android/gms/measurement/internal/e;->k(Lcom/google/android/gms/measurement/internal/c0;)V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 16
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 17
    invoke-virtual {p3, p1}, Lcom/google/android/gms/measurement/internal/zzfz;->v(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->i:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 18
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkd;->k:Lcom/google/android/gms/measurement/internal/zzfj;

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Lcom/google/android/gms/measurement/internal/zzfj;->b(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_a7

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_b6

    :cond_a7
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->i:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 20
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkd;->i:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzfj;->b(J)V

    .line 21
    :cond_b6
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzli;->J()V

    goto/16 :goto_189

    :cond_bb
    :goto_bb
    const/4 p3, 0x0

    if-eqz p5, :cond_c7

    const-string v3, "Last-Modified"

    .line 22
    invoke-interface {p5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    goto :goto_c8

    :cond_c7
    move-object v3, p3

    :goto_c8
    if-eqz v3, :cond_d7

    .line 23
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d7

    .line 24
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_d8

    :cond_d7
    move-object v3, p3

    .line 25
    :goto_d8
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpg;->b()Z

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v6

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzel;->O0:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v6, p3, v7}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v6

    if-eqz v6, :cond_102

    if-eqz p5, :cond_f2

    const-string v6, "ETag"

    .line 26
    invoke-interface {p5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_f3

    :cond_f2
    move-object p5, p3

    :goto_f3
    if-eqz p5, :cond_102

    .line 27
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_102

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_103

    :cond_102
    move-object p5, p3

    :goto_103
    if-eq p2, v5, :cond_121

    if-ne p2, v4, :cond_108

    goto :goto_121

    .line 28
    :cond_108
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 29
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 30
    invoke-virtual {p3, p1, p4, v3, p5}, Lcom/google/android/gms/measurement/internal/zzfz;->F(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result p3
    :try_end_111
    .catchall {:try_start_2c .. :try_end_111} :catchall_197

    if-nez p3, :cond_13d

    :try_start_113
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 32
    :goto_118
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->e0()V
    :try_end_11b
    .catchall {:try_start_113 .. :try_end_11b} :catchall_1a1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->s:Z

    .line 33
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzli;->H()V

    return-void

    .line 34
    :cond_121
    :goto_121
    :try_start_121
    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 35
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 36
    invoke-virtual {p4, p1}, Lcom/google/android/gms/measurement/internal/zzfz;->o(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfe;

    move-result-object p4

    if-nez p4, :cond_13d

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 37
    invoke-static {p4}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 38
    invoke-virtual {p4, p1, p3, p3, p3}, Lcom/google/android/gms/measurement/internal/zzfz;->F(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result p3
    :try_end_135
    .catchall {:try_start_121 .. :try_end_135} :catchall_197

    if-nez p3, :cond_13d

    :try_start_137
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;
    :try_end_13c
    .catchall {:try_start_137 .. :try_end_13c} :catchall_1a1

    goto :goto_118

    .line 40
    :cond_13d
    :try_start_13d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide p3

    invoke-virtual {v1, p3, p4}, Lcom/google/android/gms/measurement/internal/c0;->m(J)V

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 41
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 42
    invoke-virtual {p3, v1}, Lcom/google/android/gms/measurement/internal/e;->k(Lcom/google/android/gms/measurement/internal/c0;)V

    if-ne p2, v5, :cond_160

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p2

    .line 44
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzey;->s()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    .line 45
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_171

    .line 46
    :cond_160
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    .line 48
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 49
    invoke-virtual {p1, p3, p2, v2}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    :goto_171
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->b:Lcom/google/android/gms/measurement/internal/zzfe;

    .line 51
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfe;->h()Z

    move-result p1

    if-eqz p1, :cond_186

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzli;->L()Z

    move-result p1

    if-eqz p1, :cond_186

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->y()V

    goto :goto_189

    .line 54
    :cond_186
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzli;->J()V

    .line 55
    :goto_189
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 56
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 57
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->j()V
    :try_end_191
    .catchall {:try_start_13d .. :try_end_191} :catchall_197

    :try_start_191
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 58
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    goto :goto_118

    :catchall_197
    move-exception p1

    .line 59
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 60
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 61
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e;->e0()V

    .line 62
    throw p1
    :try_end_1a1
    .catchall {:try_start_191 .. :try_end_1a1} :catchall_1a1

    :catchall_1a1
    move-exception p1

    .line 63
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->s:Z

    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzli;->H()V

    .line 65
    goto :goto_1a9

    :goto_1a8
    throw p1

    :goto_1a9
    goto :goto_1a8
.end method

.method final h0(Lcom/google/android/gms/measurement/internal/zzp;)Ljava/lang/String;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/w3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/w3;-><init>(Lcom/google/android/gms/measurement/internal/zzli;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzgf;->n(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v1, 0x7530

    :try_start_f
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_17
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_f .. :try_end_17} :catch_1c
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_17} :catch_1a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_f .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    move-exception v0

    goto :goto_1d

    :catch_1a
    move-exception v0

    goto :goto_1d

    :catch_1c
    move-exception v0

    .line 4
    :goto_1d
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to get app instance id. appId"

    .line 6
    invoke-virtual {v1, v2, p1, v0}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method final i(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzli;->J()V

    return-void
.end method

.method final j(ILjava/lang/Throwable;[BLjava/lang/String;)V
    .registers 13
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->b()V

    const/4 p4, 0x0

    if-nez p3, :cond_f

    :try_start_d
    new-array p3, p4, [B

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->x:Ljava/util/List;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzli;->x:Ljava/util/List;
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_16b

    const/16 v2, 0xc8

    const/16 v3, 0xcc

    if-eq p1, v2, :cond_24

    if-ne p1, v3, :cond_123

    const/16 p1, 0xcc

    :cond_24
    if-nez p2, :cond_123

    :try_start_26
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzli;->i:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 4
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzkd;->j:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfj;->b(J)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzli;->i:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 5
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzkd;->k:Lcom/google/android/gms/measurement/internal/zzfj;

    const-wide/16 v2, 0x0

    invoke-virtual {p2, v2, v3}, Lcom/google/android/gms/measurement/internal/zzfj;->b(J)V

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzli;->J()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p2

    const-string v4, "Successful upload. Got network response. code, size"

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    array-length p3, p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v4, p1, p3}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->d0()V
    :try_end_5f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_26 .. :try_end_5f} :catch_f7
    .catchall {:try_start_26 .. :try_end_5f} :catchall_16b

    .line 12
    :try_start_5f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_63
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_bc

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;
    :try_end_6f
    .catchall {:try_start_5f .. :try_end_6f} :catchall_ed

    :try_start_6f
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 13
    invoke-static {p3}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 14
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 15
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 16
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/r3;->d()V

    .line 17
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/e;->N()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    .line 18
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, p4
    :try_end_8b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6f .. :try_end_8b} :catch_af
    .catchall {:try_start_6f .. :try_end_8b} :catchall_ed

    :try_start_8b
    const-string v4, "queue"

    const-string v5, "rowid=?"

    .line 19
    invoke-virtual {v0, v4, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_96

    goto :goto_63

    .line 20
    :cond_96
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v4, "Deleted fewer rows from queue than expected"

    invoke-direct {v0, v4}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8b .. :try_end_9e} :catch_9e
    .catchall {:try_start_8b .. :try_end_9e} :catchall_ed

    :catch_9e
    move-exception v0

    .line 21
    :try_start_9f
    iget-object p3, p3, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 22
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p3

    .line 23
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p3

    const-string v4, "Failed to delete a bundle in a queue table"

    invoke-virtual {p3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    throw v0
    :try_end_af
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9f .. :try_end_af} :catch_af
    .catchall {:try_start_9f .. :try_end_af} :catchall_ed

    :catch_af
    move-exception p3

    .line 25
    :try_start_b0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->y:Ljava/util/List;

    if-eqz v0, :cond_bb

    .line 26
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_bb

    goto :goto_63

    .line 27
    :cond_bb
    throw p3

    .line 28
    :cond_bc
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->j()V
    :try_end_c4
    .catchall {:try_start_b0 .. :try_end_c4} :catchall_ed

    :try_start_c4
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 31
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->e0()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzli;->y:Ljava/util/List;

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->b:Lcom/google/android/gms/measurement/internal/zzfe;

    .line 33
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzfe;->h()Z

    move-result p1

    if-eqz p1, :cond_e3

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzli;->L()Z

    move-result p1

    if-eqz p1, :cond_e3

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->y()V

    goto :goto_ea

    :cond_e3
    const-wide/16 p1, -0x1

    .line 36
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->z:J

    .line 37
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzli;->J()V

    .line 38
    :goto_ea
    iput-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzli;->o:J

    goto :goto_165

    :catchall_ed
    move-exception p1

    .line 39
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 40
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 41
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e;->e0()V

    .line 42
    throw p1
    :try_end_f7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c4 .. :try_end_f7} :catch_f7
    .catchall {:try_start_c4 .. :try_end_f7} :catchall_16b

    :catch_f7
    move-exception p1

    .line 43
    :try_start_f8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->o:J

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->o:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_165

    .line 46
    :cond_123
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p3

    .line 47
    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p3

    const-string v1, "Network upload failed. Will retry later. code, error"

    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2, p2}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzli;->i:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 49
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzkd;->k:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfj;->b(J)V

    const/16 p2, 0x1f7

    if-eq p1, p2, :cond_14b

    const/16 p2, 0x1ad

    if-ne p1, p2, :cond_15a

    :cond_14b
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->i:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 50
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzkd;->i:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/measurement/internal/zzfj;->b(J)V

    :cond_15a
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 51
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 52
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/e;->f0(Ljava/util/List;)V

    .line 53
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzli;->J()V
    :try_end_165
    .catchall {:try_start_f8 .. :try_end_165} :catchall_16b

    .line 54
    :goto_165
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzli;->t:Z

    .line 55
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzli;->H()V

    return-void

    :catchall_16b
    move-exception p1

    .line 56
    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/zzli;->t:Z

    .line 57
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzli;->H()V

    .line 58
    goto :goto_173

    :goto_172
    throw p1

    :goto_173
    goto :goto_172
.end method

.method final j0(Ljava/lang/Runnable;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->p:Ljava/util/List;

    if-nez v0, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->p:Ljava/util/List;

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->p:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final k(Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_sysu"

    const-string v4, "_sys"

    const-string v5, "com.android.vending"

    const-string v6, "_pfo"

    const-string v7, "_uwa"

    const-string v0, "app_id=?"

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->b()V

    .line 3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzli;->N(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v8

    if-eqz v8, :cond_570

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 6
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 7
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/e;->P(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c0;

    move-result-object v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_5e

    .line 8
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/c0;->j0()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5e

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzp;->p:Ljava/lang/String;

    .line 9
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5e

    .line 10
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/measurement/internal/c0;->m(J)V

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 11
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 12
    invoke-virtual {v11, v8}, Lcom/google/android/gms/measurement/internal/e;->k(Lcom/google/android/gms/measurement/internal/c0;)V

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 13
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 14
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/android/gms/measurement/internal/zzfz;->w(Ljava/lang/String;)V

    .line 15
    :cond_5e
    iget-boolean v8, v2, Lcom/google/android/gms/measurement/internal/zzp;->v:Z

    if-nez v8, :cond_66

    .line 16
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzli;->P(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/c0;

    return-void

    .line 17
    :cond_66
    iget-wide v11, v2, Lcom/google/android/gms/measurement/internal/zzp;->A:J

    cmp-long v8, v11, v9

    if-nez v8, :cond_74

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object v8

    invoke-interface {v8}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v11

    :cond_74
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 19
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->w()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v8

    .line 20
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzap;->m()V

    .line 21
    iget v8, v2, Lcom/google/android/gms/measurement/internal/zzp;->B:I

    const/4 v15, 0x1

    if-eqz v8, :cond_9c

    if-eq v8, v15, :cond_9c

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v13

    .line 23
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v13

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-static {v14}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 24
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Incorrect app type, assuming installed app. appId, appType"

    .line 25
    invoke-virtual {v13, v9, v14, v8}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v8, 0x0

    :cond_9c
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 26
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 27
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/e;->d0()V

    :try_start_a4
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 28
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 29
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    const-string v13, "_npa"

    .line 30
    invoke-virtual {v9, v10, v13}, Lcom/google/android/gms/measurement/internal/e;->W(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/b4;

    move-result-object v9

    if-eqz v9, :cond_c5

    const-string v10, "auto"

    iget-object v13, v9, Lcom/google/android/gms/measurement/internal/b4;->b:Ljava/lang/String;

    .line 31
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_be

    goto :goto_c5

    :cond_be
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_119

    .line 32
    :cond_c5
    :goto_c5
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzp;->F:Ljava/lang/Boolean;

    if-eqz v10, :cond_101

    .line 33
    new-instance v10, Lcom/google/android/gms/measurement/internal/zzll;

    const-string v14, "_npa"

    .line 34
    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzp;->F:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eq v15, v13, :cond_d8

    const-wide/16 v19, 0x0

    goto :goto_da

    :cond_d8
    const-wide/16 v19, 0x1

    :goto_da
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const-string v20, "auto"

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    const-wide/16 v3, 0x1

    move-object v13, v10

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-wide v15, v11

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzll;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    if-eqz v9, :cond_fd

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/b4;->e:Ljava/lang/Object;

    iget-object v13, v10, Lcom/google/android/gms/measurement/internal/zzll;->r:Ljava/lang/Long;

    .line 35
    invoke-virtual {v9, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_119

    .line 36
    :cond_fd
    invoke-virtual {v1, v10, v2}, Lcom/google/android/gms/measurement/internal/zzli;->w(Lcom/google/android/gms/measurement/internal/zzll;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_119

    :cond_101
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v9, :cond_119

    .line 37
    new-instance v9, Lcom/google/android/gms/measurement/internal/zzll;

    const-string v14, "_npa"

    const/16 v17, 0x0

    const-string v18, "auto"

    move-object v13, v9

    move-wide v15, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzll;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, v9, v2}, Lcom/google/android/gms/measurement/internal/zzli;->o(Lcom/google/android/gms/measurement/internal/zzll;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 39
    :cond_119
    :goto_119
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 40
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 41
    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/e;->P(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c0;

    move-result-object v9

    if-eqz v9, :cond_1e2

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->f0()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v13

    iget-object v14, v2, Lcom/google/android/gms/measurement/internal/zzp;->p:Ljava/lang/String;

    .line 43
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/c0;->j0()Ljava/lang/String;

    move-result-object v15

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/zzp;->E:Ljava/lang/String;

    .line 44
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/c0;->c0()Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-virtual {v13, v14, v15, v10, v3}, Lcom/google/android/gms/measurement/internal/zzlp;->b0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e2

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    .line 47
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    const-string v10, "New GMP App Id passed in. Removing cached database data. appId"

    .line 48
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/c0;->e0()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 49
    invoke-virtual {v3, v10, v13}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 50
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 51
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/c0;->e0()Ljava/lang/String;

    move-result-object v9

    .line 52
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/r3;->d()V

    .line 53
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 54
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;
    :try_end_169
    .catchall {:try_start_a4 .. :try_end_169} :catchall_566

    .line 55
    :try_start_169
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e;->N()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    new-array v13, v4, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    const-string v14, "events"

    .line 56
    invoke-virtual {v10, v14, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    const-string v15, "user_attributes"

    .line 57
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "conditional_properties"

    .line 58
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "apps"

    .line 59
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "raw_events"

    .line 60
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "raw_events_metadata"

    .line 61
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "event_filters"

    .line 62
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "property_filters"

    .line 63
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "audience_filter_values"

    .line 64
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    const-string v15, "consent_settings"

    .line 65
    invoke-virtual {v10, v15, v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v14, v0

    if-lez v14, :cond_1e1

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v10, "Deleted application data. app, records"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v10, v9, v13}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1cc
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_169 .. :try_end_1cc} :catch_1cd
    .catchall {:try_start_169 .. :try_end_1cc} :catchall_566

    goto :goto_1e1

    :catch_1cd
    move-exception v0

    .line 68
    :try_start_1ce
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 69
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    .line 70
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    const-string v10, "Error deleting application data. appId, error"

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 71
    invoke-virtual {v3, v10, v9, v0}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e1
    :goto_1e1
    const/4 v9, 0x0

    :cond_1e2
    if-eqz v9, :cond_239

    .line 72
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/c0;->M()J

    move-result-wide v13

    const-wide/32 v15, -0x80000000

    cmp-long v0, v13, v15

    if-eqz v0, :cond_1fc

    .line 73
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/c0;->M()J

    move-result-wide v13

    move-object v3, v5

    iget-wide v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->x:J

    cmp-long v0, v13, v4

    if-eqz v0, :cond_1fd

    const/4 v0, 0x1

    goto :goto_1fe

    :cond_1fc
    move-object v3, v5

    :cond_1fd
    const/4 v0, 0x0

    .line 74
    :goto_1fe
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/c0;->h0()Ljava/lang/String;

    move-result-object v4

    .line 75
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/c0;->M()J

    move-result-wide v13

    cmp-long v5, v13, v15

    if-nez v5, :cond_216

    if-eqz v4, :cond_216

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzp;->q:Ljava/lang/String;

    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_216

    const/4 v15, 0x1

    goto :goto_217

    :cond_216
    const/4 v15, 0x0

    :goto_217
    or-int/2addr v0, v15

    if-eqz v0, :cond_23a

    new-instance v0, Landroid/os/Bundle;

    .line 77
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v5, "_pv"

    .line 78
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzav;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzat;

    invoke-direct {v15, v0}, Lcom/google/android/gms/measurement/internal/zzat;-><init>(Landroid/os/Bundle;)V

    const-string v14, "_au"

    const-string v16, "auto"

    move-object v13, v4

    move-wide/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzav;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzat;Ljava/lang/String;J)V

    .line 80
    invoke-virtual {v1, v4, v2}, Lcom/google/android/gms/measurement/internal/zzli;->d(Lcom/google/android/gms/measurement/internal/zzav;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_23a

    :cond_239
    move-object v3, v5

    .line 81
    :cond_23a
    :goto_23a
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/measurement/internal/zzli;->P(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/c0;

    if-nez v8, :cond_24e

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 82
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 83
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    const-string v5, "_f"

    .line 84
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/e;->T(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v0

    const/4 v15, 0x0

    goto :goto_25c

    .line 85
    :cond_24e
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 86
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 87
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    const-string v5, "_v"

    .line 88
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/e;->T(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v0

    const/4 v15, 0x1

    :goto_25c
    if-nez v0, :cond_538

    const-wide/32 v4, 0x36ee80

    .line 89
    div-long v8, v11, v4
    :try_end_263
    .catchall {:try_start_1ce .. :try_end_263} :catchall_566

    const-wide/16 v13, 0x1

    add-long/2addr v8, v13

    mul-long v8, v8, v4

    const-string v4, "_dac"

    const-string v5, "_et"

    const-string v14, "_r"

    const-string v13, "_c"

    if-nez v15, :cond_4ee

    .line 90
    :try_start_272
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzll;

    const-string v15, "_fot"

    .line 91
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v18, "auto"

    move-object v8, v13

    move-object v13, v0

    move-object v9, v14

    move-object v14, v15

    move-wide v15, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzll;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzli;->w(Lcom/google/android/gms/measurement/internal/zzll;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzli;->k:Lcom/google/android/gms/measurement/internal/zzfq;

    .line 94
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/google/android/gms/measurement/internal/zzfq;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    if-eqz v0, :cond_38a

    .line 95
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2a3

    goto/16 :goto_38a

    .line 96
    :cond_2a3
    iget-object v14, v13, Lcom/google/android/gms/measurement/internal/zzfq;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 97
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzgi;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v14

    .line 98
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 99
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfq;->a()Z

    move-result v14

    if-nez v14, :cond_2c3

    iget-object v0, v13, Lcom/google/android/gms/measurement/internal/zzfq;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 100
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->p()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v3, "Install Referrer Reporter is not available"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    goto/16 :goto_399

    :cond_2c3
    new-instance v14, Lcom/google/android/gms/measurement/internal/zzfp;

    invoke-direct {v14, v13, v0}, Lcom/google/android/gms/measurement/internal/zzfp;-><init>(Lcom/google/android/gms/measurement/internal/zzfq;Ljava/lang/String;)V

    iget-object v0, v13, Lcom/google/android/gms/measurement/internal/zzfq;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 101
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    new-instance v0, Landroid/content/Intent;

    const-string v15, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    .line 103
    invoke-direct {v0, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v15, Landroid/content/ComponentName;

    const-string v10, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    .line 104
    invoke-direct {v15, v3, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v10, v13, Lcom/google/android/gms/measurement/internal/zzfq;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 105
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgi;->N0()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    if-nez v10, :cond_2ff

    iget-object v0, v13, Lcom/google/android/gms/measurement/internal/zzfq;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->u()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v3, "Failed to obtain Package Manager to verify binding conditions for Install Referrer"

    .line 108
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    goto/16 :goto_399

    :cond_2ff
    const/4 v15, 0x0

    .line 109
    invoke-virtual {v10, v0, v15}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_37a

    .line 110
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_37a

    .line 111
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 112
    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v10, :cond_399

    .line 113
    iget-object v15, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 114
    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v10, :cond_36a

    .line 115
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36a

    .line 116
    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzfq;->a()Z

    move-result v3

    if-eqz v3, :cond_36a

    new-instance v3, Landroid/content/Intent;

    .line 117
    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_32d
    .catchall {:try_start_272 .. :try_end_32d} :catchall_566

    .line 118
    :try_start_32d
    invoke-static {}, Lcom/google/android/gms/common/stats/ConnectionTracker;->b()Lcom/google/android/gms/common/stats/ConnectionTracker;

    move-result-object v0

    iget-object v10, v13, Lcom/google/android/gms/measurement/internal/zzfq;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 119
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgi;->N0()Landroid/content/Context;

    move-result-object v10

    const/4 v15, 0x1

    .line 120
    invoke-virtual {v0, v10, v3, v14, v15}, Lcom/google/android/gms/common/stats/ConnectionTracker;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iget-object v3, v13, Lcom/google/android/gms/measurement/internal/zzfq;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 121
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    .line 122
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    const-string v14, "Install Referrer Service is"
    :try_end_348
    .catch Ljava/lang/RuntimeException; {:try_start_32d .. :try_end_348} :catch_355
    .catchall {:try_start_32d .. :try_end_348} :catchall_566

    :try_start_348
    const-string v15, "available"

    const-string v16, "not available"
    :try_end_34c
    .catchall {:try_start_348 .. :try_end_34c} :catchall_566

    const/4 v10, 0x1

    if-eq v10, v0, :cond_351

    move-object/from16 v15, v16

    .line 123
    :cond_351
    :try_start_351
    invoke-virtual {v3, v14, v15}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_354
    .catch Ljava/lang/RuntimeException; {:try_start_351 .. :try_end_354} :catch_355
    .catchall {:try_start_351 .. :try_end_354} :catchall_566

    goto :goto_399

    :catch_355
    move-exception v0

    .line 124
    :try_start_356
    iget-object v3, v13, Lcom/google/android/gms/measurement/internal/zzfq;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 125
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    .line 126
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    const-string v13, "Exception occurred while binding to Install Referrer Service"

    .line 127
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-virtual {v3, v13, v0}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_399

    .line 129
    :cond_36a
    iget-object v0, v13, Lcom/google/android/gms/measurement/internal/zzfq;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 130
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v3, "Play Store version 8.3.73 or higher required for Install Referrer"

    .line 132
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    goto :goto_399

    :cond_37a
    iget-object v0, v13, Lcom/google/android/gms/measurement/internal/zzfq;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 133
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->p()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v3, "Play Service for fetching Install Referrer is unavailable on device"

    .line 135
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    goto :goto_399

    .line 136
    :cond_38a
    :goto_38a
    iget-object v0, v13, Lcom/google/android/gms/measurement/internal/zzfq;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 137
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->u()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v3, "Install Referrer Reporter was called with invalid app package name"

    .line 139
    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    .line 140
    :cond_399
    :goto_399
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->b()V

    new-instance v3, Landroid/os/Bundle;

    .line 142
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v13, 0x1

    .line 143
    invoke-virtual {v3, v8, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 144
    invoke-virtual {v3, v9, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v8, 0x0

    .line 145
    invoke-virtual {v3, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 146
    invoke-virtual {v3, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v15, v22

    .line 147
    invoke-virtual {v3, v15, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v14, v21

    .line 148
    invoke-virtual {v3, v14, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v8, 0x1

    .line 149
    invoke-virtual {v3, v5, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 150
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->D:Z

    if-eqz v0, :cond_3ce

    .line 151
    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 152
    :cond_3ce
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 153
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 154
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 156
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r3;->d()V

    const-string v5, "first_open_count"

    .line 157
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/e;->J(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 158
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->N0()Landroid/content/Context;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_40e

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v5, "PackageManager is null, first open report might be inaccurate. appId"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 162
    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_408
    .catchall {:try_start_356 .. :try_end_408} :catchall_566

    move-object/from16 v22, v6

    :cond_40a
    :goto_40a
    const-wide/16 v4, 0x0

    goto/16 :goto_4d0

    .line 163
    :cond_40e
    :try_start_40e
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 164
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->N0()Landroid/content/Context;

    move-result-object v0

    .line 165
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->a(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->f(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_41d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_40e .. :try_end_41d} :catch_41e
    .catchall {:try_start_40e .. :try_end_41d} :catchall_566

    goto :goto_431

    :catch_41e
    move-exception v0

    .line 166
    :try_start_41f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v5

    .line 167
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v5

    const-string v13, "Package info is null, first open report might be inaccurate. appId"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    .line 168
    invoke-virtual {v5, v13, v10, v0}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_431
    if-eqz v0, :cond_48f

    move-object/from16 v21, v14

    .line 169
    iget-wide v13, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v17, 0x0

    cmp-long v5, v13, v17

    if-eqz v5, :cond_489

    move-object/from16 v22, v6

    .line 170
    iget-wide v5, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v13, v5

    if-eqz v0, :cond_469

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzel;->e0:Lcom/google/android/gms/measurement/internal/zzek;

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v0

    if-eqz v0, :cond_463

    const-wide/16 v13, 0x0

    cmp-long v0, v8, v13

    if-nez v0, :cond_461

    const-wide/16 v13, 0x1

    .line 172
    invoke-virtual {v3, v7, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v0, 0x0

    const-wide/16 v8, 0x0

    goto :goto_46b

    :cond_461
    :goto_461
    const/4 v0, 0x0

    goto :goto_46b

    :cond_463
    const-wide/16 v13, 0x1

    .line 173
    invoke-virtual {v3, v7, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_461

    :cond_469
    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 174
    :goto_46b
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzll;

    const-string v14, "_fi"

    const/4 v7, 0x1

    if-eq v7, v0, :cond_475

    const-wide/16 v16, 0x0

    goto :goto_477

    :cond_475
    const-wide/16 v16, 0x1

    .line 175
    :goto_477
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v18, "auto"

    move-object v13, v5

    move-object/from16 v7, v21

    move-object v6, v15

    move-wide v15, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzll;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v1, v5, v2}, Lcom/google/android/gms/measurement/internal/zzli;->w(Lcom/google/android/gms/measurement/internal/zzll;Lcom/google/android/gms/measurement/internal/zzp;)V
    :try_end_488
    .catchall {:try_start_41f .. :try_end_488} :catchall_566

    goto :goto_493

    :cond_489
    move-object/from16 v22, v6

    move-object v6, v15

    move-object/from16 v7, v21

    goto :goto_493

    :cond_48f
    move-object/from16 v22, v6

    move-object v7, v14

    move-object v6, v15

    :goto_493
    :try_start_493
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 177
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->N0()Landroid/content/Context;

    move-result-object v0

    .line 178
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->a(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->c(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_4a2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_493 .. :try_end_4a2} :catch_4a3
    .catchall {:try_start_493 .. :try_end_4a2} :catchall_566

    goto :goto_4b6

    :catch_4a3
    move-exception v0

    .line 179
    :try_start_4a4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v5

    .line 180
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v5

    const-string v13, "Application info is null, first open report might be inaccurate. appId"

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 181
    invoke-virtual {v5, v13, v4, v0}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_4b6
    if-eqz v0, :cond_40a

    .line 182
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_4c3

    const-wide/16 v4, 0x1

    .line 183
    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 184
    :cond_4c3
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_40a

    const-wide/16 v4, 0x1

    .line 185
    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_40a

    :goto_4d0
    cmp-long v0, v8, v4

    if-ltz v0, :cond_4d9

    move-object/from16 v4, v22

    .line 186
    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 187
    :cond_4d9
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzav;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzat;

    invoke-direct {v15, v3}, Lcom/google/android/gms/measurement/internal/zzat;-><init>(Landroid/os/Bundle;)V

    const-string v14, "_f"

    const-string v16, "auto"

    move-object v13, v0

    move-wide/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzav;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzat;Ljava/lang/String;J)V

    .line 188
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzli;->f(Lcom/google/android/gms/measurement/internal/zzav;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_555

    :cond_4ee
    move-object v6, v13

    move-object v3, v14

    .line 189
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzll;

    const-string v14, "_fvt"

    .line 190
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const-string v18, "auto"

    move-object v13, v0

    move-wide v15, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzll;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/measurement/internal/zzli;->w(Lcom/google/android/gms/measurement/internal/zzll;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->b()V

    new-instance v0, Landroid/os/Bundle;

    .line 194
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v7, 0x1

    .line 195
    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 196
    invoke-virtual {v0, v3, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 197
    invoke-virtual {v0, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 198
    iget-boolean v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->D:Z

    if-eqz v3, :cond_523

    .line 199
    invoke-virtual {v0, v4, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 200
    :cond_523
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzav;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzat;

    invoke-direct {v15, v0}, Lcom/google/android/gms/measurement/internal/zzat;-><init>(Landroid/os/Bundle;)V

    const-string v14, "_v"

    const-string v16, "auto"

    move-object v13, v3

    move-wide/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzav;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzat;Ljava/lang/String;J)V

    .line 201
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzli;->f(Lcom/google/android/gms/measurement/internal/zzav;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_555

    .line 202
    :cond_538
    iget-boolean v0, v2, Lcom/google/android/gms/measurement/internal/zzp;->w:Z

    if-eqz v0, :cond_555

    new-instance v0, Landroid/os/Bundle;

    .line 203
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 204
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzav;

    new-instance v15, Lcom/google/android/gms/measurement/internal/zzat;

    invoke-direct {v15, v0}, Lcom/google/android/gms/measurement/internal/zzat;-><init>(Landroid/os/Bundle;)V

    const-string v14, "_cd"

    const-string v16, "auto"

    move-object v13, v3

    move-wide/from16 v17, v11

    invoke-direct/range {v13 .. v18}, Lcom/google/android/gms/measurement/internal/zzav;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzat;Ljava/lang/String;J)V

    .line 205
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/measurement/internal/zzli;->f(Lcom/google/android/gms/measurement/internal/zzav;Lcom/google/android/gms/measurement/internal/zzp;)V

    .line 206
    :cond_555
    :goto_555
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 207
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 208
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->j()V
    :try_end_55d
    .catchall {:try_start_4a4 .. :try_end_55d} :catchall_566

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 209
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 210
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->e0()V

    return-void

    :catchall_566
    move-exception v0

    .line 211
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 212
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 213
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->e0()V

    .line 214
    throw v0

    :cond_570
    return-void
.end method

.method final l()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->q:I

    return-void
.end method

.method final m(Lcom/google/android/gms/measurement/internal/zzab;)V
    .registers 3

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzab;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzli;->F(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzli;->n(Lcom/google/android/gms/measurement/internal/zzab;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_11
    return-void
.end method

.method final n(Lcom/google/android/gms/measurement/internal/zzab;Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 13

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzab;->o:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->b()V

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzli;->N(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_25

    return-void

    .line 8
    :cond_25
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->v:Z

    if-eqz v0, :cond_f4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->d0()V

    .line 11
    :try_start_31
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzli;->P(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/c0;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzab;->o:Ljava/lang/String;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    .line 14
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/e;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    if-eqz v0, :cond_b8

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->l()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    const-string v3, "Removing conditional user property"

    iget-object v4, p1, Lcom/google/android/gms/measurement/internal/zzab;->o:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 17
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    iget-object v6, p1, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    .line 18
    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzet;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 20
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    .line 21
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/e;->H(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzab;->s:Z

    if-eqz v1, :cond_85

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 22
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    .line 23
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_85
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzab;->y:Lcom/google/android/gms/measurement/internal/zzav;

    if-eqz v1, :cond_d9

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzav;->p:Lcom/google/android/gms/measurement/internal/zzat;

    if-eqz v1, :cond_92

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzat;->X3()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_93

    :cond_92
    const/4 v1, 0x0

    :goto_93
    move-object v4, v1

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->f0()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v1

    iget-object v3, p1, Lcom/google/android/gms/measurement/internal/zzab;->y:Lcom/google/android/gms/measurement/internal/zzav;

    .line 26
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/measurement/internal/zzav;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzav;->o:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzab;->p:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzab;->y:Lcom/google/android/gms/measurement/internal/zzav;

    iget-wide v6, p1, Lcom/google/android/gms/measurement/internal/zzav;->r:J

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 27
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/zzlp;->w0(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/measurement/internal/zzav;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzli;->z(Lcom/google/android/gms/measurement/internal/zzav;Lcom/google/android/gms/measurement/internal/zzp;)V

    goto :goto_d9

    .line 29
    :cond_b8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p2

    .line 30
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzab;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    .line 32
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzet;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-virtual {p2, v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    :cond_d9
    :goto_d9
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 35
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 36
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->j()V
    :try_end_e1
    .catchall {:try_start_31 .. :try_end_e1} :catchall_ea

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 37
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->e0()V

    return-void

    :catchall_ea
    move-exception p1

    .line 39
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 40
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 41
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e;->e0()V

    .line 42
    throw p1

    .line 43
    :cond_f4
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzli;->P(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/c0;

    return-void
.end method

.method final o(Lcom/google/android/gms/measurement/internal/zzll;Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 10

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->b()V

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzli;->N(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 4
    :cond_11
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->v:Z

    if-nez v0, :cond_19

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzli;->P(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/c0;

    return-void

    .line 6
    :cond_19
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    const-string v1, "_npa"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->F:Ljava/lang/Boolean;

    if-eqz v0, :cond_5c

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzey;->l()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    const-string v0, "Falling back to manifest metadata value for ad personalization"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzll;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v3

    const/4 v0, 0x1

    .line 9
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzp;->F:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_4a

    const-wide/16 v0, 0x0

    goto :goto_4c

    :cond_4a
    const-wide/16 v0, 0x1

    :goto_4c
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v2, "_npa"

    const-string v6, "auto"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzll;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzli;->w(Lcom/google/android/gms/measurement/internal/zzll;Lcom/google/android/gms/measurement/internal/zzp;)V

    return-void

    .line 11
    :cond_5c
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->l()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 14
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzet;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Removing user property"

    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 16
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->d0()V

    .line 18
    :try_start_7d
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzli;->P(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/c0;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzne;->b()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzel;->p0:Lcom/google/android/gms/measurement/internal/zzek;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v0

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzel;->r0:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v0

    if-eqz v0, :cond_bc

    const-string v0, "_id"

    .line 22
    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 24
    iget-object v1, p2, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    .line 25
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "_lair"

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bc
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 27
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 28
    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    .line 29
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    .line 30
    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/measurement/internal/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 31
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 32
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e;->j()V

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p2

    .line 34
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzey;->l()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p2

    const-string v0, "User property removed"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v1

    .line 36
    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/zzet;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_ef
    .catchall {:try_start_7d .. :try_end_ef} :catchall_f8

    .line 38
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->e0()V

    return-void

    :catchall_f8
    move-exception p1

    .line 41
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 42
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 43
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e;->e0()V

    .line 44
    throw p1
.end method

.method final p(Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 9
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    const-string v0, "app_id=?"

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzli;->x:Ljava/util/List;

    if-eqz v1, :cond_12

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzli;->y:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzli;->x:Ljava/util/List;

    .line 2
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 4
    iget-object v2, p1, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/r3;->d()V

    .line 8
    :try_start_28
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->N()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string v5, "apps"

    .line 9
    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    const-string v6, "events"

    .line 10
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "user_attributes"

    .line 11
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "conditional_properties"

    .line 12
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events"

    .line 13
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events_metadata"

    .line 14
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "queue"

    .line 15
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "audience_filter_values"

    .line 16
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "main_event_params"

    .line 17
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "default_event_params"

    .line 18
    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v5, v0

    if-lez v5, :cond_a1

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_28 .. :try_end_8c} :catch_8d

    goto :goto_a1

    :catch_8d
    move-exception v0

    .line 21
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Error resetting analytics data. appId, error"

    .line 24
    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    :cond_a1
    :goto_a1
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzp;->v:Z

    if-eqz v0, :cond_a8

    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzli;->k(Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_a8
    return-void
.end method

.method public final q(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zziu;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->D:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz p2, :cond_14

    goto :goto_15

    :cond_14
    return-void

    :cond_15
    :goto_15
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->D:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzli;->C:Lcom/google/android/gms/measurement/internal/zziu;

    return-void
.end method

.method protected final r()V
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->g0()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->i:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkd;->j:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfj;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->i:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzkd;->j:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzfj;->b(J)V

    .line 6
    :cond_2c
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzli;->J()V

    return-void
.end method

.method final s(Lcom/google/android/gms/measurement/internal/zzab;)V
    .registers 3

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzab;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/zzli;->F(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/measurement/internal/zzli;->u(Lcom/google/android/gms/measurement/internal/zzab;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_11
    return-void
.end method

.method public final t()Lcom/google/android/gms/measurement/internal/zzaa;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method final u(Lcom/google/android/gms/measurement/internal/zzab;Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 13

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzab;->o:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzab;->p:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->b()V

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzli;->N(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v0

    if-nez v0, :cond_2a

    return-void

    .line 9
    :cond_2a
    iget-boolean v0, p2, Lcom/google/android/gms/measurement/internal/zzp;->v:Z

    if-nez v0, :cond_32

    .line 10
    invoke-virtual {p0, p2}, Lcom/google/android/gms/measurement/internal/zzli;->P(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/c0;

    return-void

    :cond_32
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzab;

    .line 11
    invoke-direct {v0, p1}, Lcom/google/android/gms/measurement/internal/zzab;-><init>(Lcom/google/android/gms/measurement/internal/zzab;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/google/android/gms/measurement/internal/zzab;->s:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 12
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->d0()V

    :try_start_42
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 14
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzab;->o:Ljava/lang/String;

    .line 15
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    .line 16
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/e;->Q(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v1

    if-eqz v1, :cond_82

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzab;->p:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzab;->p:Ljava/lang/String;

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_82

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 20
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    .line 21
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzet;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzab;->p:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzab;->p:Ljava/lang/String;

    .line 22
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzew;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_82
    const/4 v2, 0x1

    if-eqz v1, :cond_b8

    iget-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzab;->s:Z

    if-eqz v3, :cond_b8

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzab;->p:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzab;->p:Ljava/lang/String;

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzab;->r:J

    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzab;->r:J

    iget-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzab;->v:J

    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzab;->v:J

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzab;->t:Ljava/lang/String;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzab;->t:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzab;->w:Lcom/google/android/gms/measurement/internal/zzav;

    iput-object v3, v0, Lcom/google/android/gms/measurement/internal/zzab;->w:Lcom/google/android/gms/measurement/internal/zzav;

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzab;->s:Z

    new-instance v2, Lcom/google/android/gms/measurement/internal/zzll;

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    .line 23
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    iget-wide v6, v4, Lcom/google/android/gms/measurement/internal/zzll;->q:J

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzll;->V3()Ljava/lang/Object;

    move-result-object v8

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzll;->t:Ljava/lang/String;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzll;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    goto :goto_d9

    .line 25
    :cond_b8
    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzab;->t:Ljava/lang/String;

    .line 26
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d9

    new-instance p1, Lcom/google/android/gms/measurement/internal/zzll;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    .line 27
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/zzab;->r:J

    .line 28
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzll;->V3()Ljava/lang/Object;

    move-result-object v7

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzll;->t:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/measurement/internal/zzll;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    iput-boolean v2, v0, Lcom/google/android/gms/measurement/internal/zzab;->s:Z

    const/4 p1, 0x1

    .line 29
    :cond_d9
    :goto_d9
    iget-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzab;->s:Z

    if-eqz v1, :cond_158

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    new-instance v9, Lcom/google/android/gms/measurement/internal/b4;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzab;->o:Ljava/lang/String;

    .line 30
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzab;->p:Ljava/lang/String;

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    iget-wide v6, v1, Lcom/google/android/gms/measurement/internal/zzll;->q:J

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzll;->V3()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/b4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 32
    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 33
    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/e;->s(Lcom/google/android/gms/measurement/internal/b4;)Z

    move-result v1

    if-eqz v1, :cond_125

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->l()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzab;->o:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 36
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/b4;->c:Ljava/lang/String;

    .line 37
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzet;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/b4;->e:Ljava/lang/Object;

    .line 38
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzew;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_146

    .line 39
    :cond_125
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzab;->o:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 41
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/b4;->c:Ljava/lang/String;

    .line 42
    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzet;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Lcom/google/android/gms/measurement/internal/b4;->e:Ljava/lang/Object;

    .line 43
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzew;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_146
    if-eqz p1, :cond_158

    .line 44
    iget-object p1, v0, Lcom/google/android/gms/measurement/internal/zzab;->w:Lcom/google/android/gms/measurement/internal/zzav;

    if-eqz p1, :cond_158

    .line 45
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzav;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzab;->w:Lcom/google/android/gms/measurement/internal/zzav;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzab;->r:J

    invoke-direct {p1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzav;-><init>(Lcom/google/android/gms/measurement/internal/zzav;J)V

    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzli;->z(Lcom/google/android/gms/measurement/internal/zzav;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_158
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 48
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/e;->r(Lcom/google/android/gms/measurement/internal/zzab;)Z

    move-result p1

    if-eqz p1, :cond_187

    .line 49
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzey;->l()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzab;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 51
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    .line 52
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzet;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzll;->V3()Ljava/lang/Object;

    move-result-object v0

    .line 54
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzew;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1ae

    .line 55
    :cond_187
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/zzab;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 57
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    .line 58
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzet;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzab;->q:Lcom/google/android/gms/measurement/internal/zzll;

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzll;->V3()Ljava/lang/Object;

    move-result-object v0

    .line 60
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzew;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    :goto_1ae
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 62
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 63
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->j()V
    :try_end_1b6
    .catchall {:try_start_42 .. :try_end_1b6} :catchall_1bf

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 64
    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 65
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/e;->e0()V

    return-void

    :catchall_1bf
    move-exception p1

    .line 66
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 67
    invoke-static {p2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 68
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/e;->e0()V

    .line 69
    throw p1
.end method

.method final v(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzah;)V
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzli;->b()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->A:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/r3;->d()V

    new-instance v1, Landroid/content/ContentValues;

    .line 9
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    .line 10
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzah;->h()Ljava/lang/String;

    move-result-object p2

    const-string v2, "consent_state"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :try_start_33
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->N()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v2, "consent_settings"

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 13
    invoke-virtual {p2, v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p2, v1, v3

    if-nez p2, :cond_58

    iget-object p2, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object p2

    .line 15
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object p2

    const-string v1, "Failed to insert/update consent setting (got -1). appId"

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 16
    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_58
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_33 .. :try_end_58} :catch_59

    :cond_58
    return-void

    :catch_59
    move-exception p2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Error storing consent setting. appId, error"

    .line 19
    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final w(Lcom/google/android/gms/measurement/internal/zzll;Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "_id"

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->b()V

    .line 3
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/measurement/internal/zzli;->N(Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v4

    if-nez v4, :cond_19

    return-void

    .line 4
    :cond_19
    iget-boolean v4, v2, Lcom/google/android/gms/measurement/internal/zzp;->v:Z

    if-nez v4, :cond_21

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzli;->P(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/c0;

    return-void

    .line 6
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->f0()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/zzlp;->n0(Ljava/lang/String;)I

    move-result v9

    const/4 v4, 0x1

    const/16 v5, 0x18

    const/4 v6, 0x0

    if-eqz v9, :cond_57

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->f0()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 9
    invoke-virtual {v3, v7, v5, v4}, Lcom/google/android/gms/measurement/internal/zzlp;->m(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v11

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    move v12, v0

    goto :goto_49

    :cond_48
    const/4 v12, 0x0

    .line 11
    :goto_49
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->f0()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzli;->E:Lcom/google/android/gms/measurement/internal/c4;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    const-string v10, "_ev"

    .line 12
    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gms/measurement/internal/zzlp;->y(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 13
    :cond_57
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->f0()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v7

    iget-object v8, v0, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzll;->V3()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzlp;->j0(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v13

    if-eqz v13, :cond_9d

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->f0()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v3

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    .line 15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 16
    invoke-virtual {v3, v7, v5, v4}, Lcom/google/android/gms/measurement/internal/zzlp;->m(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v15

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzll;->V3()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8d

    .line 18
    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_82

    instance-of v3, v0, Ljava/lang/CharSequence;

    if-eqz v3, :cond_8d

    .line 19
    :cond_82
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v16, v6

    goto :goto_8f

    :cond_8d
    const/16 v16, 0x0

    .line 20
    :goto_8f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->f0()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v10

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzli;->E:Lcom/google/android/gms/measurement/internal/c4;

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    const-string v14, "_ev"

    .line 21
    invoke-virtual/range {v10 .. v16}, Lcom/google/android/gms/measurement/internal/zzlp;->y(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 22
    :cond_9d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->f0()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzll;->V3()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzlp;->k(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_ae

    return-void

    .line 24
    :cond_ae
    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    const-string v6, "_sid"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_124

    .line 25
    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zzll;->q:J

    iget-object v11, v0, Lcom/google/android/gms/measurement/internal/zzll;->t:Ljava/lang/String;

    .line 26
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 27
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    const-string v7, "_sno"

    .line 28
    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/measurement/internal/e;->W(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/b4;

    move-result-object v6

    if-eqz v6, :cond_de

    iget-object v7, v6, Lcom/google/android/gms/measurement/internal/b4;->e:Ljava/lang/Object;

    .line 29
    instance-of v10, v7, Ljava/lang/Long;

    if-eqz v10, :cond_de

    .line 30
    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_112

    :cond_de
    if-eqz v6, :cond_ef

    .line 31
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v7

    .line 32
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v7

    iget-object v6, v6, Lcom/google/android/gms/measurement/internal/b4;->e:Ljava/lang/Object;

    const-string v10, "Retrieved last session number from database does not contain a valid (long) value"

    .line 33
    invoke-virtual {v7, v10, v6}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_ef
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 34
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    const-string v7, "_s"

    .line 35
    invoke-virtual {v6, v5, v7}, Lcom/google/android/gms/measurement/internal/e;->T(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v5

    if-eqz v5, :cond_110

    iget-wide v5, v5, Lcom/google/android/gms/measurement/internal/h;->c:J

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v7

    .line 37
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v7

    .line 38
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v12, "Backfill the session number. Last used session number"

    invoke-virtual {v7, v12, v10}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_112

    :cond_110
    const-wide/16 v5, 0x0

    .line 39
    :goto_112
    new-instance v12, Lcom/google/android/gms/measurement/internal/zzll;

    const-wide/16 v13, 0x1

    add-long/2addr v5, v13

    .line 40
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v7, "_sno"

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzll;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1, v12, v2}, Lcom/google/android/gms/measurement/internal/zzli;->w(Lcom/google/android/gms/measurement/internal/zzll;Lcom/google/android/gms/measurement/internal/zzp;)V

    :cond_124
    new-instance v5, Lcom/google/android/gms/measurement/internal/b4;

    .line 42
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    .line 43
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzll;->t:Ljava/lang/String;

    .line 44
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/gms/measurement/internal/zzll;->p:Ljava/lang/String;

    iget-wide v11, v0, Lcom/google/android/gms/measurement/internal/zzll;->q:J

    move-object v7, v5

    move-object v13, v4

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/measurement/internal/b4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 45
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 47
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v6

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/b4;->c:Ljava/lang/String;

    .line 48
    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/zzet;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Setting user property"

    .line 49
    invoke-virtual {v0, v7, v6, v4}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 50
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 51
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->d0()V

    .line 52
    :try_start_162
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzne;->b()Z

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzel;->p0:Lcom/google/android/gms/measurement/internal/zzek;

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v0

    if-eqz v0, :cond_1b8

    iget-object v0, v5, Lcom/google/android/gms/measurement/internal/b4;->c:Ljava/lang/String;

    .line 53
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b8

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzel;->s0:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v0, v6, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v0
    :try_end_188
    .catchall {:try_start_162 .. :try_end_188} :catchall_202

    const-string v4, "_lair"

    if-eqz v0, :cond_1ae

    :try_start_18c
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 55
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 56
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    .line 57
    invoke-virtual {v0, v6, v3}, Lcom/google/android/gms/measurement/internal/e;->W(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/b4;

    move-result-object v0

    if-eqz v0, :cond_1b8

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/b4;->e:Ljava/lang/Object;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b4;->e:Ljava/lang/Object;

    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b8

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 59
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 60
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    .line 61
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b8

    .line 62
    :cond_1ae
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 63
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 64
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    .line 65
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_1b8
    :goto_1b8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzli;->P(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/c0;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 67
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 68
    invoke-virtual {v0, v5}, Lcom/google/android/gms/measurement/internal/e;->s(Lcom/google/android/gms/measurement/internal/b4;)Z

    move-result v0

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 69
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 70
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e;->j()V

    if-nez v0, :cond_1f9

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v3, "Too many unique user properties are set. Ignoring user property"

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 73
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v4

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/b4;->c:Ljava/lang/String;

    .line 74
    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/zzet;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/b4;->e:Ljava/lang/Object;

    .line 75
    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->f0()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v6

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzli;->E:Lcom/google/android/gms/measurement/internal/c4;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    const/16 v9, 0x9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 77
    invoke-virtual/range {v6 .. v12}, Lcom/google/android/gms/measurement/internal/zzlp;->y(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1f9
    .catchall {:try_start_18c .. :try_end_1f9} :catchall_202

    :cond_1f9
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 78
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->e0()V

    return-void

    :catchall_202
    move-exception v0

    .line 80
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 81
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 82
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->e0()V

    .line 83
    throw v0
.end method

.method public final x()Lcom/google/android/gms/common/util/Clock;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/measurement/internal/zzgi;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method final y()V
    .registers 27

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->b()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->u:Z

    const/4 v3, 0x0

    :try_start_10
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 3
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->t()Lcom/google/android/gms/measurement/internal/zzaa;

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->J()Lcom/google/android/gms/measurement/internal/zzkb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzkb;->H()Ljava/lang/Boolean;

    move-result-object v4

    if-nez v4, :cond_34

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v4, "Upload data called on the client side before use of service was decided"

    .line 7
    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_6c0

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzli;->u:Z

    .line 8
    :goto_30
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->H()V

    return-void

    .line 9
    :cond_34
    :try_start_34
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v4, "Upload called in the client side when service should be used"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_34 .. :try_end_47} :catchall_6c0

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzli;->u:Z

    goto :goto_30

    .line 11
    :cond_4a
    :try_start_4a
    iget-wide v4, v1, Lcom/google/android/gms/measurement/internal/zzli;->o:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_58

    .line 12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->J()V
    :try_end_55
    .catchall {:try_start_4a .. :try_end_55} :catchall_6c0

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzli;->u:Z

    goto :goto_30

    .line 13
    :cond_58
    :try_start_58
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzli;->x:Ljava/util/List;

    if-eqz v4, :cond_73

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v4, "Uploading requested multiple times"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V
    :try_end_70
    .catchall {:try_start_58 .. :try_end_70} :catchall_6c0

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzli;->u:Z

    goto :goto_30

    .line 15
    :cond_73
    :try_start_73
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzli;->b:Lcom/google/android/gms/measurement/internal/zzfe;

    .line 16
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 17
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzfe;->h()Z

    move-result v4

    if-nez v4, :cond_91

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v4, "Network not connected, ignoring upload request"

    invoke-virtual {v2, v4}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    .line 19
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->J()V
    :try_end_8e
    .catchall {:try_start_73 .. :try_end_8e} :catchall_6c0

    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzli;->u:Z

    goto :goto_30

    .line 20
    :cond_91
    :try_start_91
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v4

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzel;->R:Lcom/google/android/gms/measurement/internal/zzek;

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v9}, Lcom/google/android/gms/measurement/internal/zzaf;->j(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)I

    move-result v8

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->G()J

    move-result-wide v11

    sub-long v11, v4, v11

    const/4 v9, 0x0

    :goto_ae
    if-ge v9, v8, :cond_b9

    .line 23
    invoke-direct {v1, v10, v11, v12}, Lcom/google/android/gms/measurement/internal/zzli;->K(Ljava/lang/String;J)Z

    move-result v13

    if-eqz v13, :cond_b9

    add-int/lit8 v9, v9, 0x1

    goto :goto_ae

    :cond_b9
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzli;->i:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 24
    iget-object v8, v8, Lcom/google/android/gms/measurement/internal/zzkd;->j:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzfj;->a()J

    move-result-wide v8

    cmp-long v11, v8, v6

    if-eqz v11, :cond_dc

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v6

    .line 26
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzey;->l()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v6

    const-string v7, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v8, v4, v8

    .line 27
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 28
    invoke-virtual {v6, v7, v8}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_dc
    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 29
    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 30
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/e;->Y()Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-wide/16 v8, -0x1

    if-nez v7, :cond_62f

    iget-wide v11, v1, Lcom/google/android/gms/measurement/internal/zzli;->z:J

    cmp-long v7, v11, v8

    if-nez v7, :cond_138

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 32
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;
    :try_end_f8
    .catchall {:try_start_91 .. :try_end_f8} :catchall_6c0

    .line 33
    :try_start_f8
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/e;->N()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const-string v12, "select rowid from raw_events order by rowid desc limit 1;"

    .line 34
    invoke-virtual {v11, v12, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_102
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f8 .. :try_end_102} :catch_117
    .catchall {:try_start_f8 .. :try_end_102} :catchall_114

    .line 35
    :try_start_102
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12
    :try_end_106
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_102 .. :try_end_106} :catch_111
    .catchall {:try_start_102 .. :try_end_106} :catchall_12f

    if-nez v12, :cond_10c

    .line 36
    :goto_108
    :try_start_108
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_10b
    .catchall {:try_start_108 .. :try_end_10b} :catchall_6c0

    goto :goto_12c

    .line 37
    :cond_10c
    :try_start_10c
    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8
    :try_end_110
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10c .. :try_end_110} :catch_111
    .catchall {:try_start_10c .. :try_end_110} :catchall_12f

    goto :goto_108

    :catch_111
    move-exception v0

    move-object v12, v0

    goto :goto_11a

    :catchall_114
    move-exception v0

    move-object v2, v0

    goto :goto_132

    :catch_117
    move-exception v0

    move-object v12, v0

    move-object v11, v10

    .line 38
    :goto_11a
    :try_start_11a
    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 39
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v7

    .line 40
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v7

    const-string v13, "Error querying raw events"

    invoke-virtual {v7, v13, v12}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_129
    .catchall {:try_start_11a .. :try_end_129} :catchall_12f

    if-eqz v11, :cond_12c

    goto :goto_108

    .line 41
    :cond_12c
    :goto_12c
    :try_start_12c
    iput-wide v8, v1, Lcom/google/android/gms/measurement/internal/zzli;->z:J

    goto :goto_138

    :catchall_12f
    move-exception v0

    move-object v2, v0

    move-object v10, v11

    :goto_132
    if-eqz v10, :cond_137

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 42
    :cond_137
    throw v2

    .line 43
    :cond_138
    :goto_138
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzel;->h:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v7, v6, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->j(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)I

    move-result v7

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzel;->i:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v8, v6, v9}, Lcom/google/android/gms/measurement/internal/zzaf;->j(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)I

    move-result v8

    .line 45
    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 46
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 47
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 48
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/r3;->d()V

    if-lez v7, :cond_15f

    const/4 v11, 0x1

    goto :goto_160

    :cond_15f
    const/4 v11, 0x0

    .line 49
    :goto_160
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    if-lez v8, :cond_167

    const/4 v11, 0x1

    goto :goto_168

    :cond_167
    const/4 v11, 0x0

    .line 50
    :goto_168
    invoke-static {v11}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    .line 51
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;
    :try_end_16e
    .catchall {:try_start_12c .. :try_end_16e} :catchall_6c0

    .line 52
    :try_start_16e
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/e;->N()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    const-string v13, "rowid"

    const-string v14, "data"

    const-string v15, "retry_count"

    filled-new-array {v13, v14, v15}, [Ljava/lang/String;

    move-result-object v14

    new-array v15, v2, [Ljava/lang/String;

    aput-object v6, v15, v3

    const-string v13, "queue"

    const-string v16, "app_id=?"

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "rowid"

    .line 53
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object v7, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v7

    .line 54
    invoke-virtual/range {v12 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_197
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16e .. :try_end_197} :catch_28f
    .catchall {:try_start_16e .. :try_end_197} :catchall_28a

    .line 55
    :try_start_197
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12
    :try_end_19b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_197 .. :try_end_19b} :catch_285
    .catchall {:try_start_197 .. :try_end_19b} :catchall_626

    if-nez v12, :cond_1ae

    .line 56
    :try_start_19d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8
    :try_end_1a1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19d .. :try_end_1a1} :catch_1a8
    .catchall {:try_start_19d .. :try_end_1a1} :catchall_626

    .line 57
    :try_start_1a1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1a4
    .catchall {:try_start_1a1 .. :try_end_1a4} :catchall_6c0

    move-wide/from16 v20, v4

    goto/16 :goto_2b0

    :catch_1a8
    move-exception v0

    move-object v2, v0

    move-wide/from16 v20, v4

    goto/16 :goto_294

    .line 58
    :cond_1ae
    :try_start_1ae
    new-instance v12, Ljava/util/ArrayList;

    .line 59
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    .line 60
    :goto_1b4
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14
    :try_end_1b8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1ae .. :try_end_1b8} :catch_285
    .catchall {:try_start_1ae .. :try_end_1b8} :catchall_626

    .line 61
    :try_start_1b8
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    iget-object v2, v9, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 62
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;
    :try_end_1c3
    .catch Ljava/io/IOException; {:try_start_1b8 .. :try_end_1c3} :catch_257
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b8 .. :try_end_1c3} :catch_285
    .catchall {:try_start_1b8 .. :try_end_1c3} :catchall_626

    :try_start_1c3
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 63
    invoke-direct {v3, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v10, Ljava/util/zip/GZIPInputStream;

    .line 64
    invoke-direct {v10, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 65
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1d2
    .catch Ljava/io/IOException; {:try_start_1c3 .. :try_end_1d2} :catch_241
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c3 .. :try_end_1d2} :catch_285
    .catchall {:try_start_1c3 .. :try_end_1d2} :catchall_626

    move-wide/from16 v20, v4

    const/16 v4, 0x400

    :try_start_1d6
    new-array v4, v4, [B

    .line 66
    :goto_1d8
    invoke-virtual {v10, v4}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_236

    .line 67
    invoke-virtual {v10}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 68
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    .line 69
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_1e8
    .catch Ljava/io/IOException; {:try_start_1d6 .. :try_end_1e8} :catch_23f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d6 .. :try_end_1e8} :catch_283
    .catchall {:try_start_1d6 .. :try_end_1e8} :catchall_626

    .line 70
    :try_start_1e8
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1f4

    array-length v3, v2
    :try_end_1ef
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1e8 .. :try_end_1ef} :catch_283
    .catchall {:try_start_1e8 .. :try_end_1ef} :catchall_626

    add-int/2addr v3, v13

    if-le v3, v8, :cond_1f4

    goto/16 :goto_27e

    .line 71
    :cond_1f4
    :try_start_1f4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgc;->N1()Lcom/google/android/gms/internal/measurement/zzgb;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/android/gms/measurement/internal/zzlk;->z(Lcom/google/android/gms/internal/measurement/zzli;[B)Lcom/google/android/gms/internal/measurement/zzli;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzgb;
    :try_end_1fe
    .catch Ljava/io/IOException; {:try_start_1f4 .. :try_end_1fe} :catch_220
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f4 .. :try_end_1fe} :catch_283
    .catchall {:try_start_1f4 .. :try_end_1fe} :catchall_626

    const/4 v4, 0x2

    .line 72
    :try_start_1ff
    invoke-interface {v7, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_20c

    .line 73
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/zzgb;->c0(I)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 74
    :cond_20c
    array-length v2, v2

    add-int/2addr v13, v2

    .line 75
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzgc;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_26e

    :catch_220
    move-exception v0

    move-object v2, v0

    .line 76
    iget-object v3, v9, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 77
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    .line 78
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    const-string v4, "Failed to merge queued bundle. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 79
    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_235
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1ff .. :try_end_235} :catch_283
    .catchall {:try_start_1ff .. :try_end_235} :catchall_626

    goto :goto_26e

    :cond_236
    move-object/from16 v22, v3

    const/4 v3, 0x0

    .line 80
    :try_start_239
    invoke-virtual {v11, v4, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_23c
    .catch Ljava/io/IOException; {:try_start_239 .. :try_end_23c} :catch_23f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_239 .. :try_end_23c} :catch_283
    .catchall {:try_start_239 .. :try_end_23c} :catchall_626

    move-object/from16 v3, v22

    goto :goto_1d8

    :catch_23f
    move-exception v0

    goto :goto_244

    :catch_241
    move-exception v0

    move-wide/from16 v20, v4

    :goto_244
    move-object v3, v0

    .line 81
    :try_start_245
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 82
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 83
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v4, "Failed to ungzip content"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    throw v3
    :try_end_255
    .catch Ljava/io/IOException; {:try_start_245 .. :try_end_255} :catch_255
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_245 .. :try_end_255} :catch_283
    .catchall {:try_start_245 .. :try_end_255} :catchall_626

    :catch_255
    move-exception v0

    goto :goto_25a

    :catch_257
    move-exception v0

    move-wide/from16 v20, v4

    :goto_25a
    move-object v2, v0

    .line 85
    :try_start_25b
    iget-object v3, v9, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 86
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    .line 87
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    const-string v4, "Failed to unzip queued bundle. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 88
    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    :goto_26e
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_272
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_25b .. :try_end_272} :catch_283
    .catchall {:try_start_25b .. :try_end_272} :catchall_626

    if-eqz v2, :cond_27e

    if-le v13, v8, :cond_277

    goto :goto_27e

    :cond_277
    move-wide/from16 v4, v20

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    goto/16 :goto_1b4

    .line 90
    :cond_27e
    :goto_27e
    :try_start_27e
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_281
    .catchall {:try_start_27e .. :try_end_281} :catchall_6bc

    move-object v8, v12

    goto :goto_2b0

    :catch_283
    move-exception v0

    goto :goto_288

    :catch_285
    move-exception v0

    move-wide/from16 v20, v4

    :goto_288
    move-object v2, v0

    goto :goto_294

    :catchall_28a
    move-exception v0

    move-object v2, v0

    const/4 v10, 0x0

    goto/16 :goto_629

    :catch_28f
    move-exception v0

    move-wide/from16 v20, v4

    move-object v2, v0

    const/4 v7, 0x0

    .line 91
    :goto_294
    :try_start_294
    iget-object v3, v9, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 92
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    .line 93
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    const-string v4, "Error querying bundles. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8
    :try_end_2ab
    .catchall {:try_start_294 .. :try_end_2ab} :catchall_626

    if-eqz v7, :cond_2b0

    .line 95
    :try_start_2ad
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_2b0
    :goto_2b0
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6ae

    .line 97
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzli;->S(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v2

    .line 98
    sget-object v3, Lcom/google/android/gms/measurement/internal/zzag;->p:Lcom/google/android/gms/measurement/internal/zzag;

    .line 99
    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzah;->i(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v2

    if-eqz v2, :cond_317

    .line 100
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 101
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzgc;

    .line 102
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgc;->E()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c6

    .line 103
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzgc;->E()Ljava/lang/String;

    move-result-object v2

    goto :goto_2e6

    :cond_2e5
    const/4 v2, 0x0

    :goto_2e6
    if-eqz v2, :cond_317

    const/4 v3, 0x0

    .line 104
    :goto_2e9
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_317

    .line 105
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/measurement/zzgc;

    .line 106
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgc;->E()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_304

    goto :goto_314

    .line 107
    :cond_304
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzgc;->E()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_314

    const/4 v4, 0x0

    .line 108
    invoke-interface {v8, v4, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    goto :goto_317

    :cond_314
    :goto_314
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e9

    .line 109
    :cond_317
    :goto_317
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzga;->u()Lcom/google/android/gms/internal/measurement/zzfz;

    move-result-object v2

    .line 110
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    .line 111
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzaf;->z(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_340

    .line 113
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzli;->S(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v5

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzag;->p:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/zzah;->i(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v5

    if-eqz v5, :cond_340

    const/4 v5, 0x1

    goto :goto_341

    :cond_340
    const/4 v5, 0x0

    .line 114
    :goto_341
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzli;->S(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v7

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzag;->p:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/zzah;->i(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v7

    .line 115
    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/zzli;->S(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzag;->q:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzah;->i(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v9

    .line 116
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpp;->b()Z

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzel;->J0:Lcom/google/android/gms/measurement/internal/zzek;

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v11}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v10

    const/4 v11, 0x0

    :goto_364
    if-ge v11, v3, :cond_4f5

    .line 118
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Pair;

    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzgc;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzkc;->j()Lcom/google/android/gms/internal/measurement/zzjy;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/measurement/zzgb;

    .line 119
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    iget-object v13, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Long;

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/android/gms/measurement/internal/zzaf;->l()J

    const-wide/32 v13, 0xee48

    invoke-virtual {v12, v13, v14}, Lcom/google/android/gms/internal/measurement/zzgb;->i0(J)Lcom/google/android/gms/internal/measurement/zzgb;

    move-wide/from16 v13, v20

    .line 121
    invoke-virtual {v12, v13, v14}, Lcom/google/android/gms/internal/measurement/zzgb;->h0(J)Lcom/google/android/gms/internal/measurement/zzgb;

    iget-object v15, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 122
    invoke-virtual {v15}, Lcom/google/android/gms/measurement/internal/zzgi;->t()Lcom/google/android/gms/measurement/internal/zzaa;

    const/4 v15, 0x0

    .line 123
    invoke-virtual {v12, v15}, Lcom/google/android/gms/internal/measurement/zzgb;->d0(Z)Lcom/google/android/gms/internal/measurement/zzgb;

    if-nez v5, :cond_3a3

    .line 124
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzgb;->H0()Lcom/google/android/gms/internal/measurement/zzgb;

    :cond_3a3
    if-nez v7, :cond_3ab

    .line 125
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzgb;->O0()Lcom/google/android/gms/internal/measurement/zzgb;

    .line 126
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzgb;->K0()Lcom/google/android/gms/internal/measurement/zzgb;

    :cond_3ab
    if-nez v9, :cond_3b0

    .line 127
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzgb;->E0()Lcom/google/android/gms/internal/measurement/zzgb;

    .line 128
    :cond_3b0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpg;->b()Z

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v15

    move/from16 v20, v5

    sget-object v5, Lcom/google/android/gms/measurement/internal/zzel;->E0:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v15, v6, v5}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v5

    if-eqz v5, :cond_3cf

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 130
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 131
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfz;->u(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_3cf

    .line 132
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/measurement/zzgb;->y0(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 133
    :cond_3cf
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzel;->G0:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v5, v6, v15}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v5

    if-eqz v5, :cond_3f7

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 134
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 135
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfz;->H(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e9

    .line 136
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzgb;->G0()Lcom/google/android/gms/internal/measurement/zzgb;

    :cond_3e9
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 137
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 138
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfz;->K(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f7

    .line 139
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzgb;->L0()Lcom/google/android/gms/internal/measurement/zzgb;

    .line 140
    :cond_3f7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzel;->H0:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v5, v6, v15}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v5

    if-eqz v5, :cond_41a

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 141
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 142
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfz;->L(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41a

    const-string v5, "_id"

    .line 143
    invoke-static {v12, v5}, Lcom/google/android/gms/measurement/internal/zzlk;->r(Lcom/google/android/gms/internal/measurement/zzgb;Ljava/lang/String;)I

    move-result v5

    const/4 v15, -0x1

    if-eq v5, v15, :cond_41a

    .line 144
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/measurement/zzgb;->s(I)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 145
    :cond_41a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzel;->I0:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v5, v6, v15}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v5

    if-eqz v5, :cond_434

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 146
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 147
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfz;->J(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_434

    .line 148
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzgb;->H0()Lcom/google/android/gms/internal/measurement/zzgb;

    .line 149
    :cond_434
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzel;->L0:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v5, v6, v15}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v5

    if-eqz v5, :cond_49f

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 150
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 151
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfz;->G(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_49f

    .line 152
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzgb;->E0()Lcom/google/android/gms/internal/measurement/zzgb;

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    sget-object v15, Lcom/google/android/gms/measurement/internal/zzel;->M0:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v5, v6, v15}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v5

    if-eqz v5, :cond_49f

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzli;->B:Ljava/util/Map;

    .line 154
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/measurement/internal/a4;

    if-eqz v5, :cond_489

    move/from16 v21, v7

    move-object v15, v8

    iget-wide v7, v5, Lcom/google/android/gms/measurement/internal/a4;->b:J

    move-object/from16 v22, v5

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    move/from16 v23, v9

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzel;->T:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v5, v6, v9}, Lcom/google/android/gms/measurement/internal/zzaf;->m(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)J

    move-result-wide v24

    add-long v7, v7, v24

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v24

    cmp-long v5, v7, v24

    if-gez v5, :cond_486

    goto :goto_48e

    :cond_486
    move-object/from16 v5, v22

    goto :goto_499

    :cond_489
    move/from16 v21, v7

    move-object v15, v8

    move/from16 v23, v9

    :goto_48e
    new-instance v5, Lcom/google/android/gms/measurement/internal/a4;

    const/4 v7, 0x0

    .line 157
    invoke-direct {v5, v1, v7}, Lcom/google/android/gms/measurement/internal/a4;-><init>(Lcom/google/android/gms/measurement/internal/zzli;Lcom/google/android/gms/measurement/internal/zzlg;)V

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzli;->B:Ljava/util/Map;

    .line 158
    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_499
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/a4;->a:Ljava/lang/String;

    .line 159
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/measurement/zzgb;->J(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    goto :goto_4a4

    :cond_49f
    move/from16 v21, v7

    move-object v15, v8

    move/from16 v23, v9

    .line 160
    :goto_4a4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzel;->N0:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v5

    if-eqz v5, :cond_4be

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 161
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 162
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfz;->I(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4be

    .line 163
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzgb;->P0()Lcom/google/android/gms/internal/measurement/zzgb;

    :cond_4be
    if-nez v10, :cond_4c3

    .line 164
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzgb;->P0()Lcom/google/android/gms/internal/measurement/zzgb;

    .line 165
    :cond_4c3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzel;->W:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v5

    if-eqz v5, :cond_4e5

    .line 166
    invoke-virtual {v12}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzgc;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzil;->h()[B

    move-result-object v5

    iget-object v7, v1, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 167
    invoke-static {v7}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 168
    invoke-virtual {v7, v5}, Lcom/google/android/gms/measurement/internal/zzlk;->s([B)J

    move-result-wide v7

    invoke-virtual {v12, v7, v8}, Lcom/google/android/gms/internal/measurement/zzgb;->B(J)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 169
    :cond_4e5
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/measurement/zzfz;->r(Lcom/google/android/gms/internal/measurement/zzgb;)Lcom/google/android/gms/internal/measurement/zzfz;

    add-int/lit8 v11, v11, 0x1

    move-object v8, v15

    move/from16 v5, v20

    move/from16 v7, v21

    move/from16 v9, v23

    move-wide/from16 v20, v13

    goto/16 :goto_364

    :cond_4f5
    move-wide/from16 v13, v20

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzey;->z()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    .line 171
    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_517

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 172
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 173
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/measurement/zzga;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/zzlk;->A(Lcom/google/android/gms/internal/measurement/zzga;)Ljava/lang/String;

    move-result-object v5

    move-object v12, v5

    goto :goto_518

    :cond_517
    const/4 v12, 0x0

    :goto_518
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 174
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 175
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/zzga;

    .line 176
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzil;->h()[B

    move-result-object v15

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzli;->j:Lcom/google/android/gms/measurement/internal/zzkx;

    .line 177
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpg;->b()Z

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 178
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzel;->F0:Lcom/google/android/gms/measurement/internal/zzek;

    .line 179
    invoke-virtual {v7, v6, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v7

    if-eqz v7, :cond_58a

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 180
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 181
    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzfz;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 182
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_580

    sget-object v7, Lcom/google/android/gms/measurement/internal/zzel;->r:Lcom/google/android/gms/measurement/internal/zzek;

    const/4 v8, 0x0

    .line 183
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzek;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 184
    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 185
    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 186
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_593

    .line 187
    :cond_580
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzel;->r:Lcom/google/android/gms/measurement/internal/zzek;

    const/4 v7, 0x0

    .line 188
    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/zzek;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_593

    :cond_58a
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzel;->r:Lcom/google/android/gms/measurement/internal/zzek;

    const/4 v7, 0x0

    .line 189
    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/zzek;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_593
    .catchall {:try_start_2ad .. :try_end_593} :catchall_6bc

    .line 190
    :goto_593
    :try_start_593
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzli;->x:Ljava/util/List;

    if-eqz v8, :cond_5b3

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    const-string v8, "Set uploading progress before finishing the previous upload"

    invoke-virtual {v4, v8}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    goto :goto_5ba

    .line 193
    :cond_5b3
    new-instance v8, Ljava/util/ArrayList;

    .line 194
    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v8, v1, Lcom/google/android/gms/measurement/internal/zzli;->x:Ljava/util/List;

    .line 195
    :goto_5ba
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzli;->i:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 196
    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/zzkd;->k:Lcom/google/android/gms/measurement/internal/zzfj;

    invoke-virtual {v4, v13, v14}, Lcom/google/android/gms/measurement/internal/zzfj;->b(J)V

    const-string v4, "?"
    :try_end_5c3
    .catch Ljava/net/MalformedURLException; {:try_start_593 .. :try_end_5c3} :catch_613
    .catchall {:try_start_593 .. :try_end_5c3} :catchall_6bc

    if-lez v3, :cond_5ce

    const/4 v3, 0x0

    .line 197
    :try_start_5c6
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/zzfz;->s(I)Lcom/google/android/gms/internal/measurement/zzgc;

    move-result-object v2
    :try_end_5ca
    .catch Ljava/net/MalformedURLException; {:try_start_5c6 .. :try_end_5ca} :catch_613
    .catchall {:try_start_5c6 .. :try_end_5ca} :catchall_6c0

    :try_start_5ca
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v4

    .line 198
    :cond_5ce
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 199
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v3, "Uploading data. app, uncompressed size, data"

    array-length v8, v15

    .line 200
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v3, v4, v8, v12}, Lcom/google/android/gms/measurement/internal/zzew;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->t:Z

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzli;->b:Lcom/google/android/gms/measurement/internal/zzfe;

    .line 201
    invoke-static {v12}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    new-instance v2, Lcom/google/android/gms/measurement/internal/t3;

    invoke-direct {v2, v1, v6}, Lcom/google/android/gms/measurement/internal/t3;-><init>(Lcom/google/android/gms/measurement/internal/zzli;Ljava/lang/String;)V

    .line 202
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 203
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/r3;->d()V

    .line 204
    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-static {v15}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v12, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 207
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/measurement/internal/u;

    const/16 v16, 0x0

    move-object v11, v4

    move-object v13, v6

    move-object v14, v7

    move-object/from16 v17, v2

    .line 208
    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/u;-><init>(Lcom/google/android/gms/measurement/internal/zzfe;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/s;)V

    .line 209
    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzgf;->u(Ljava/lang/Runnable;)V
    :try_end_611
    .catch Ljava/net/MalformedURLException; {:try_start_5ca .. :try_end_611} :catch_613
    .catchall {:try_start_5ca .. :try_end_611} :catchall_6bc

    goto/16 :goto_6ae

    .line 210
    :catch_613
    :try_start_613
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 211
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v3, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 212
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_6ae

    :catchall_626
    move-exception v0

    move-object v2, v0

    move-object v10, v7

    :goto_629
    if-eqz v10, :cond_62e

    .line 213
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 214
    :cond_62e
    throw v2

    :cond_62f
    move-wide v13, v4

    move-object v7, v10

    .line 215
    iput-wide v8, v1, Lcom/google/android/gms/measurement/internal/zzli;->z:J

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 216
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzaf;->G()J

    move-result-wide v3

    sub-long v3, v13, v3

    .line 218
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 219
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/r3;->d()V
    :try_end_647
    .catchall {:try_start_613 .. :try_end_647} :catchall_6bc

    .line 220
    :try_start_647
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->N()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    .line 221
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v6, v4

    const-string v3, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    .line 222
    invoke-virtual {v5, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_65b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_647 .. :try_end_65b} :catch_684
    .catchall {:try_start_647 .. :try_end_65b} :catchall_680

    .line 223
    :try_start_65b
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_674

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 224
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    .line 225
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    const-string v4, "No expired configs for apps with pending events"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V
    :try_end_670
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_65b .. :try_end_670} :catch_67d
    .catchall {:try_start_65b .. :try_end_670} :catchall_6b3

    .line 226
    :goto_670
    :try_start_670
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_673
    .catchall {:try_start_670 .. :try_end_673} :catchall_6bc

    goto :goto_699

    :cond_674
    const/4 v3, 0x0

    .line 227
    :try_start_675
    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10
    :try_end_679
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_675 .. :try_end_679} :catch_67d
    .catchall {:try_start_675 .. :try_end_679} :catchall_6b3

    .line 228
    :try_start_679
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_67c
    .catchall {:try_start_679 .. :try_end_67c} :catchall_6bc

    goto :goto_69a

    :catch_67d
    move-exception v0

    move-object v3, v0

    goto :goto_687

    :catchall_680
    move-exception v0

    move-object v2, v0

    move-object v10, v7

    goto :goto_6b6

    :catch_684
    move-exception v0

    move-object v3, v0

    move-object v12, v7

    .line 229
    :goto_687
    :try_start_687
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 230
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 231
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v4, "Error selecting expired configs"

    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_696
    .catchall {:try_start_687 .. :try_end_696} :catchall_6b3

    if-eqz v12, :cond_699

    goto :goto_670

    :cond_699
    :goto_699
    move-object v10, v7

    .line 232
    :goto_69a
    :try_start_69a
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6ae

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 233
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 234
    invoke-virtual {v2, v10}, Lcom/google/android/gms/measurement/internal/e;->P(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c0;

    move-result-object v2

    if-eqz v2, :cond_6ae

    .line 235
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzli;->c(Lcom/google/android/gms/measurement/internal/c0;)V
    :try_end_6ae
    .catchall {:try_start_69a .. :try_end_6ae} :catchall_6bc

    :cond_6ae
    :goto_6ae
    const/4 v2, 0x0

    .line 236
    iput-boolean v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->u:Z

    goto/16 :goto_30

    :catchall_6b3
    move-exception v0

    move-object v2, v0

    move-object v10, v12

    :goto_6b6
    if-eqz v10, :cond_6bb

    .line 237
    :try_start_6b8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_6bb
    throw v2
    :try_end_6bc
    .catchall {:try_start_6b8 .. :try_end_6bc} :catchall_6bc

    :catchall_6bc
    move-exception v0

    move-object v2, v0

    const/4 v3, 0x0

    goto :goto_6c2

    :catchall_6c0
    move-exception v0

    move-object v2, v0

    .line 239
    :goto_6c2
    iput-boolean v3, v1, Lcom/google/android/gms/measurement/internal/zzli;->u:Z

    .line 240
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->H()V

    .line 241
    goto :goto_6c9

    :goto_6c8
    throw v2

    :goto_6c9
    goto :goto_6c8
.end method

.method final z(Lcom/google/android/gms/measurement/internal/zzav;Lcom/google/android/gms/measurement/internal/zzp;)V
    .registers 37

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "metadata_fingerprint"

    const-string v5, "app_id"

    const-string v6, "raw_events"

    const-string v7, "_sno"

    .line 1
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->b()V

    .line 6
    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 7
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 8
    invoke-static/range {p1 .. p2}, Lcom/google/android/gms/measurement/internal/zzlk;->h(Lcom/google/android/gms/measurement/internal/zzav;Lcom/google/android/gms/measurement/internal/zzp;)Z

    move-result v11

    if-nez v11, :cond_32

    return-void

    .line 9
    :cond_32
    iget-boolean v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->v:Z

    if-eqz v11, :cond_ab1

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 10
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 11
    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzav;->o:Ljava/lang/String;

    invoke-virtual {v11, v10, v12}, Lcom/google/android/gms/measurement/internal/zzfz;->D(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    const-string v15, "_err"

    const/4 v14, 0x0

    if-eqz v11, :cond_df

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 14
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v5

    .line 15
    iget-object v6, v2, Lcom/google/android/gms/measurement/internal/zzav;->o:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/zzet;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dropping blocked event. appId"

    .line 16
    invoke-virtual {v3, v6, v4, v5}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 17
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 18
    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/zzfz;->A(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_97

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 19
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 20
    invoke-virtual {v3, v10}, Lcom/google/android/gms/measurement/internal/zzfz;->E(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7a

    goto :goto_97

    .line 21
    :cond_7a
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzav;->o:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_de

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->f0()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzli;->E:Lcom/google/android/gms/measurement/internal/c4;

    const/16 v14, 0xb

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzav;->o:Ljava/lang/String;

    const/16 v17, 0x0

    const-string v15, "_ev"

    move-object v13, v10

    move-object/from16 v16, v2

    .line 23
    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/zzlp;->y(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 24
    :cond_97
    :goto_97
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 25
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 26
    invoke-virtual {v2, v10}, Lcom/google/android/gms/measurement/internal/e;->P(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c0;

    move-result-object v2

    if-eqz v2, :cond_de

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c0;->W()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c0;->N()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 29
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    .line 31
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzel;->A:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v5, v14}, Lcom/google/android/gms/measurement/internal/zzek;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_de

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzey;->l()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    const-string v4, "Fetching config for blocked app"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzli;->c(Lcom/google/android/gms/measurement/internal/c0;)V

    :cond_de
    return-void

    .line 34
    :cond_df
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/measurement/internal/zzez;->b(Lcom/google/android/gms/measurement/internal/zzav;)Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v2

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->f0()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v11

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/google/android/gms/measurement/internal/zzaf;->i(Ljava/lang/String;)I

    move-result v12

    .line 37
    invoke-virtual {v11, v2, v12}, Lcom/google/android/gms/measurement/internal/zzlp;->w(Lcom/google/android/gms/measurement/internal/zzez;I)V

    .line 38
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzez;->a()Lcom/google/android/gms/measurement/internal/zzav;

    move-result-object v2

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzey;->z()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x2

    .line 40
    invoke-static {v11, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_11c

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v11

    .line 42
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 43
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v12

    .line 44
    invoke-virtual {v12, v2}, Lcom/google/android/gms/measurement/internal/zzet;->c(Lcom/google/android/gms/measurement/internal/zzav;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "Logging event"

    invoke-virtual {v11, v13, v12}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_11c
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 45
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 46
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/e;->d0()V

    .line 47
    :try_start_124
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzli;->P(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/c0;

    .line 48
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzne;->b()Z

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzel;->p0:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v11, v14, v12}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v11

    if-nez v11, :cond_14e

    .line 50
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzel;->q0:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v11, v14, v12}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v11

    if-eqz v11, :cond_14e

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 51
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 52
    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    const-string v13, "_lair"

    .line 53
    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/e;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14e
    const-string v11, "ecommerce_purchase"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzav;->o:Ljava/lang/String;

    .line 54
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_156
    .catchall {:try_start_124 .. :try_end_156} :catchall_aa6

    const-string v12, "refund"

    move-wide/from16 v28, v8

    if-nez v11, :cond_171

    :try_start_15c
    const-string v9, "purchase"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzav;->o:Ljava/lang/String;

    .line 55
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_171

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzav;->o:Ljava/lang/String;

    .line 56
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16f

    goto :goto_171

    :cond_16f
    const/4 v9, 0x0

    goto :goto_172

    :cond_171
    :goto_171
    const/4 v9, 0x1

    :goto_172
    const-string v11, "_iap"

    iget-object v13, v2, Lcom/google/android/gms/measurement/internal/zzav;->o:Ljava/lang/String;

    .line 57
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_186

    if-eqz v9, :cond_180

    const/4 v9, 0x1

    goto :goto_186

    :cond_180
    move-object/from16 v33, v4

    move-object v8, v15

    :goto_183
    const/4 v4, 0x2

    goto/16 :goto_31f

    :cond_186
    :goto_186
    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzav;->p:Lcom/google/android/gms/measurement/internal/zzat;

    const-string v13, "currency"

    .line 58
    invoke-virtual {v11, v13}, Lcom/google/android/gms/measurement/internal/zzat;->b4(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11
    :try_end_18e
    .catchall {:try_start_15c .. :try_end_18e} :catchall_aa6

    const-string v13, "value"

    if-eqz v9, :cond_1fe

    :try_start_192
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzav;->p:Lcom/google/android/gms/measurement/internal/zzat;

    .line 59
    invoke-virtual {v9, v13}, Lcom/google/android/gms/measurement/internal/zzat;->Y3(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    const-wide v19, 0x412e848000000000L    # 1000000.0

    mul-double v17, v17, v19

    const-wide/16 v21, 0x0

    cmpl-double v9, v17, v21

    if-nez v9, :cond_1bc

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzav;->p:Lcom/google/android/gms/measurement/internal/zzat;

    .line 60
    invoke-virtual {v9, v13}, Lcom/google/android/gms/measurement/internal/zzat;->Z3(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v21, v15

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14
    :try_end_1b5
    .catchall {:try_start_192 .. :try_end_1b5} :catchall_aa6

    long-to-double v13, v14

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v17, v13, v19

    goto :goto_1be

    :cond_1bc
    move-object/from16 v21, v15

    :goto_1be
    const-wide/high16 v13, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v9, v17, v13

    if-gtz v9, :cond_1d8

    const-wide/high16 v13, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v9, v17, v13

    if-ltz v9, :cond_1d8

    .line 61
    :try_start_1ca
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzav;->o:Ljava/lang/String;

    .line 62
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20a

    neg-long v13, v13

    goto :goto_20a

    .line 63
    :cond_1d8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v3, "Data lost. Currency value is too big. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 65
    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 66
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 67
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 68
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->j()V
    :try_end_1f5
    .catchall {:try_start_1ca .. :try_end_1f5} :catchall_aa6

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 69
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 70
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->e0()V

    return-void

    :cond_1fe
    move-object/from16 v21, v15

    :try_start_200
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzav;->p:Lcom/google/android/gms/measurement/internal/zzat;

    .line 71
    invoke-virtual {v9, v13}, Lcom/google/android/gms/measurement/internal/zzat;->Z3(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 72
    :cond_20a
    :goto_20a
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_319

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 73
    invoke-virtual {v11, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "[A-Z]{3}"

    .line 74
    invoke-virtual {v9, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_319

    const-string v11, "_ltv_"

    invoke-virtual {v11, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 75
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 76
    invoke-virtual {v11, v10, v9}, Lcom/google/android/gms/measurement/internal/e;->W(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/b4;

    move-result-object v11

    if-eqz v11, :cond_264

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/b4;->e:Ljava/lang/Object;

    .line 77
    instance-of v12, v11, Ljava/lang/Long;

    if-nez v12, :cond_236

    goto :goto_264

    .line 78
    :cond_236
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    new-instance v18, Lcom/google/android/gms/measurement/internal/b4;

    iget-object v15, v2, Lcom/google/android/gms/measurement/internal/zzav;->q:Ljava/lang/String;

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v19

    add-long/2addr v11, v13

    .line 80
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v11, v18

    move-object v12, v10

    const/4 v14, 0x0

    move-object v13, v15

    const/4 v8, 0x0

    const/4 v15, 0x0

    move-object v14, v9

    move-object/from16 v9, v21

    move-wide/from16 v15, v19

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/b4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v33, v4

    move-object v8, v9

    move-object/from16 v9, v18

    const/4 v4, 0x2

    goto/16 :goto_2dd

    :cond_264
    :goto_264
    move-object/from16 v15, v21

    const/4 v8, 0x0

    .line 81
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 82
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v12

    sget-object v8, Lcom/google/android/gms/measurement/internal/zzel;->F:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v12, v10, v8}, Lcom/google/android/gms/measurement/internal/zzaf;->j(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .line 84
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 86
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/r3;->d()V
    :try_end_281
    .catchall {:try_start_200 .. :try_end_281} :catchall_aa6

    .line 87
    :try_start_281
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/e;->N()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12
    :try_end_285
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_281 .. :try_end_285} :catch_2a7
    .catchall {:try_start_281 .. :try_end_285} :catchall_aa6

    move-object/from16 v21, v15

    const/4 v15, 0x3

    :try_start_288
    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v10, v15, v16

    const/16 v16, 0x1

    aput-object v10, v15, v16

    .line 88
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8
    :try_end_296
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_288 .. :try_end_296} :catch_2a3
    .catchall {:try_start_288 .. :try_end_296} :catchall_aa6

    move-object/from16 v33, v4

    const/4 v4, 0x2

    :try_start_299
    aput-object v8, v15, v4

    const-string v8, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    .line 89
    invoke-virtual {v12, v8, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2a0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_299 .. :try_end_2a0} :catch_2a1
    .catchall {:try_start_299 .. :try_end_2a0} :catchall_aa6

    goto :goto_2c1

    :catch_2a1
    move-exception v0

    goto :goto_2ad

    :catch_2a3
    move-exception v0

    move-object/from16 v33, v4

    goto :goto_2ac

    :catch_2a7
    move-exception v0

    move-object/from16 v33, v4

    move-object/from16 v21, v15

    :goto_2ac
    const/4 v4, 0x2

    :goto_2ad
    move-object v8, v0

    .line 90
    :try_start_2ae
    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 91
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v11

    .line 92
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v11

    const-string v12, "Error pruning currencies. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v11, v12, v15, v8}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    :goto_2c1
    new-instance v18, Lcom/google/android/gms/measurement/internal/b4;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzav;->q:Ljava/lang/String;

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object v11

    invoke-interface {v11}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v11, v18

    move-object v12, v10

    move-object v13, v8

    move-object v14, v9

    move-object/from16 v8, v21

    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/b4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    move-object/from16 v9, v18

    :goto_2dd
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 95
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 96
    invoke-virtual {v11, v9}, Lcom/google/android/gms/measurement/internal/e;->s(Lcom/google/android/gms/measurement/internal/b4;)Z

    move-result v11

    if-nez v11, :cond_31f

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v11

    .line 98
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v11

    const-string v12, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 99
    invoke-virtual {v14}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v14

    iget-object v15, v9, Lcom/google/android/gms/measurement/internal/b4;->c:Ljava/lang/String;

    .line 100
    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzet;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/b4;->e:Ljava/lang/Object;

    .line 101
    invoke-virtual {v11, v12, v13, v14, v9}, Lcom/google/android/gms/measurement/internal/zzew;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->f0()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzli;->E:Lcom/google/android/gms/measurement/internal/c4;

    const/16 v14, 0x9

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v10

    .line 103
    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/zzlp;->y(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_31f

    :cond_319
    move-object/from16 v33, v4

    move-object/from16 v8, v21

    goto/16 :goto_183

    :cond_31f
    :goto_31f
    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/zzav;->o:Ljava/lang/String;

    .line 104
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzlp;->W(Ljava/lang/String;)Z

    move-result v9

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzav;->o:Ljava/lang/String;

    .line 105
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->f0()Lcom/google/android/gms/measurement/internal/zzlp;

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzav;->p:Lcom/google/android/gms/measurement/internal/zzat;

    if-nez v11, :cond_335

    const-wide/16 v16, 0x0

    goto :goto_355

    .line 107
    :cond_335
    new-instance v12, Lcom/google/android/gms/measurement/internal/i;

    .line 108
    invoke-direct {v12, v11}, Lcom/google/android/gms/measurement/internal/i;-><init>(Lcom/google/android/gms/measurement/internal/zzat;)V

    const-wide/16 v16, 0x0

    .line 109
    :cond_33c
    :goto_33c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_355

    .line 110
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/i;->a()Ljava/lang/String;

    move-result-object v13

    .line 111
    invoke-virtual {v11, v13}, Lcom/google/android/gms/measurement/internal/zzat;->a4(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 112
    instance-of v14, v13, [Landroid/os/Parcelable;

    if-eqz v14, :cond_33c

    .line 113
    check-cast v13, [Landroid/os/Parcelable;

    array-length v13, v13

    int-to-long v13, v13

    add-long v16, v16, v13

    goto :goto_33c

    :cond_355
    :goto_355
    const-wide/16 v22, 0x1

    add-long v16, v16, v22

    .line 114
    iget-object v11, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 115
    invoke-static {v11}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->D()J

    move-result-wide v12

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v24, 0x0

    move-object/from16 v30, v5

    const-wide/16 v4, 0x0

    move-object v14, v10

    move-wide/from16 v15, v16

    move/from16 v17, v20

    move/from16 v18, v9

    move/from16 v19, v21

    move/from16 v20, v8

    move/from16 v21, v24

    .line 117
    invoke-virtual/range {v11 .. v21}, Lcom/google/android/gms/measurement/internal/e;->S(JLjava/lang/String;JZZZZZ)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v11

    iget-wide v12, v11, Lcom/google/android/gms/measurement/internal/zzaj;->b:J

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzel;->l:Lcom/google/android/gms/measurement/internal/zzek;

    const/4 v15, 0x0

    .line 119
    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzek;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v4, v14

    sub-long/2addr v12, v4

    const-wide/16 v4, 0x3e8

    const-wide/16 v16, 0x0

    cmp-long v14, v12, v16

    if-lez v14, :cond_3c6

    rem-long/2addr v12, v4

    cmp-long v2, v12, v22

    if-nez v2, :cond_3b5

    .line 120
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v3, "Data loss. Too many events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v11, Lcom/google/android/gms/measurement/internal/zzaj;->b:J

    .line 122
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 123
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3b5
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 124
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 125
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->j()V
    :try_end_3bd
    .catchall {:try_start_2ae .. :try_end_3bd} :catchall_aa6

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 126
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 127
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->e0()V

    return-void

    :cond_3c6
    if-eqz v9, :cond_424

    :try_start_3c8
    iget-wide v12, v11, Lcom/google/android/gms/measurement/internal/zzaj;->a:J

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzel;->n:Lcom/google/android/gms/measurement/internal/zzek;

    .line 129
    invoke-virtual {v14, v15}, Lcom/google/android/gms/measurement/internal/zzek;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    int-to-long v4, v14

    sub-long/2addr v12, v4

    const-wide/16 v4, 0x0

    cmp-long v14, v12, v4

    if-lez v14, :cond_424

    const-wide/16 v4, 0x3e8

    rem-long/2addr v12, v4

    cmp-long v3, v12, v22

    if-nez v3, :cond_3ff

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    .line 131
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    const-string v4, "Data loss. Too many public events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, v11, Lcom/google/android/gms/measurement/internal/zzaj;->a:J

    .line 132
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 133
    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 134
    :cond_3ff
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->f0()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzli;->E:Lcom/google/android/gms/measurement/internal/c4;

    const/16 v14, 0x10

    const-string v15, "_ev"

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzav;->o:Ljava/lang/String;

    const/16 v17, 0x0

    move-object v13, v10

    move-object/from16 v16, v2

    .line 135
    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/zzlp;->y(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 136
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 137
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->j()V
    :try_end_41b
    .catchall {:try_start_3c8 .. :try_end_41b} :catchall_aa6

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 138
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 139
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->e0()V

    return-void

    :cond_424
    const v4, 0xf4240

    if-eqz v8, :cond_474

    :try_start_429
    iget-wide v12, v11, Lcom/google/android/gms/measurement/internal/zzaj;->d:J

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v5

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    sget-object v14, Lcom/google/android/gms/measurement/internal/zzel;->m:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v5, v8, v14}, Lcom/google/android/gms/measurement/internal/zzaf;->j(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)I

    move-result v5

    .line 141
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v8, 0x0

    .line 142
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-long v4, v5

    sub-long/2addr v12, v4

    const-wide/16 v4, 0x0

    cmp-long v14, v12, v4

    if-lez v14, :cond_474

    cmp-long v2, v12, v22

    if-nez v2, :cond_463

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 144
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v3, "Too many error events logged. appId, count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v11, Lcom/google/android/gms/measurement/internal/zzaj;->d:J

    .line 145
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 146
    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_463
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 147
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 148
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->j()V
    :try_end_46b
    .catchall {:try_start_429 .. :try_end_46b} :catchall_aa6

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 149
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 150
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->e0()V

    return-void

    :cond_474
    :try_start_474
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/zzav;->p:Lcom/google/android/gms/measurement/internal/zzat;

    .line 151
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzat;->X3()Landroid/os/Bundle;

    move-result-object v4

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->f0()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v5

    const-string v11, "_o"

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/zzav;->q:Ljava/lang/String;

    invoke-virtual {v5, v4, v11, v12}, Lcom/google/android/gms/measurement/internal/zzlp;->z(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->f0()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/google/android/gms/measurement/internal/zzlp;->R(Ljava/lang/String;)Z

    move-result v5
    :try_end_48d
    .catchall {:try_start_474 .. :try_end_48d} :catchall_aa6

    const-string v14, "_r"

    if-eqz v5, :cond_4a5

    .line 154
    :try_start_491
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->f0()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v5

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "_dbg"

    invoke-virtual {v5, v4, v12, v11}, Lcom/google/android/gms/measurement/internal/zzlp;->z(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->f0()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v5

    invoke-virtual {v5, v4, v14, v11}, Lcom/google/android/gms/measurement/internal/zzlp;->z(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4a5
    const-string v5, "_s"

    iget-object v11, v2, Lcom/google/android/gms/measurement/internal/zzav;->o:Ljava/lang/String;

    .line 156
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4cb

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 157
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 158
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    .line 159
    invoke-virtual {v5, v11, v7}, Lcom/google/android/gms/measurement/internal/e;->W(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/b4;

    move-result-object v5

    if-eqz v5, :cond_4cb

    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/b4;->e:Ljava/lang/Object;

    .line 160
    instance-of v11, v11, Ljava/lang/Long;

    if-eqz v11, :cond_4cb

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->f0()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v11

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/b4;->e:Ljava/lang/Object;

    invoke-virtual {v11, v4, v7, v5}, Lcom/google/android/gms/measurement/internal/zzlp;->z(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4cb
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 162
    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 163
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 164
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 165
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/r3;->d()V
    :try_end_4d9
    .catchall {:try_start_491 .. :try_end_4d9} :catchall_aa6

    .line 166
    :try_start_4d9
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/e;->N()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iget-object v11, v5, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 167
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v11

    sget-object v12, Lcom/google/android/gms/measurement/internal/zzel;->q:Lcom/google/android/gms/measurement/internal/zzek;

    .line 168
    invoke-virtual {v11, v10, v12}, Lcom/google/android/gms/measurement/internal/zzaf;->j(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)I

    move-result v11

    const v8, 0xf4240

    .line 169
    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8
    :try_end_4f0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4d9 .. :try_end_4f0} :catch_50b
    .catchall {:try_start_4d9 .. :try_end_4f0} :catchall_aa6

    const/4 v13, 0x0

    .line 170
    :try_start_4f1
    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 171
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    aput-object v10, v11, v13

    const/4 v12, 0x1

    aput-object v8, v11, v12

    const-string v8, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"

    .line 172
    invoke-virtual {v7, v6, v8, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5
    :try_end_507
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4f1 .. :try_end_507} :catch_509
    .catchall {:try_start_4f1 .. :try_end_507} :catchall_aa6

    int-to-long v7, v5

    goto :goto_523

    :catch_509
    move-exception v0

    goto :goto_50d

    :catch_50b
    move-exception v0

    const/4 v13, 0x0

    :goto_50d
    move-object v7, v0

    .line 173
    :try_start_50e
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 174
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v5

    .line 175
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v5

    const-string v8, "Error deleting over the limit events. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 176
    invoke-virtual {v5, v8, v11, v7}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v7, 0x0

    :goto_523
    const-wide/16 v11, 0x0

    cmp-long v5, v7, v11

    if-lez v5, :cond_53e

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v5

    .line 178
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v5

    const-string v11, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 179
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 180
    invoke-virtual {v5, v11, v12, v7}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_53e
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/zzav;->q:Ljava/lang/String;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/zzav;->o:Ljava/lang/String;

    iget-wide v2, v2, Lcom/google/android/gms/measurement/internal/zzav;->r:J

    const-wide/16 v18, 0x0

    move-object v11, v5

    const/16 v31, 0x0

    move-object v13, v7

    move-object v7, v14

    move-object v14, v10

    move-object/from16 v32, v6

    move-object v6, v15

    move-object v15, v8

    move-wide/from16 v16, v2

    move-object/from16 v20, v4

    .line 181
    invoke-direct/range {v11 .. v20}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Lcom/google/android/gms/measurement/internal/zzgi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 182
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/zzaq;->b:Ljava/lang/String;

    .line 183
    invoke-virtual {v2, v10, v3}, Lcom/google/android/gms/measurement/internal/e;->T(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v2

    if-nez v2, :cond_5e1

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 184
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 185
    invoke-virtual {v2, v10}, Lcom/google/android/gms/measurement/internal/e;->M(Ljava/lang/String;)J

    move-result-wide v2

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/google/android/gms/measurement/internal/zzaf;->g(Ljava/lang/String;)I

    move-result v4

    int-to-long v11, v4

    cmp-long v4, v2, v11

    if-ltz v4, :cond_5c3

    if-eqz v9, :cond_5c3

    .line 187
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 188
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v3, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v6, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 189
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/zzgi;->A()Lcom/google/android/gms/measurement/internal/zzet;

    move-result-object v6

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzaq;->b:Ljava/lang/String;

    .line 190
    invoke-virtual {v6, v5}, Lcom/google/android/gms/measurement/internal/zzet;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/google/android/gms/measurement/internal/zzaf;->g(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 192
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/zzew;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->f0()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v11

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzli;->E:Lcom/google/android/gms/measurement/internal/c4;

    const/16 v14, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v13, v10

    .line 194
    invoke-virtual/range {v11 .. v17}, Lcom/google/android/gms/measurement/internal/zzlp;->y(Lcom/google/android/gms/measurement/internal/c4;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_5ba
    .catchall {:try_start_50e .. :try_end_5ba} :catchall_aa6

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 195
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 196
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->e0()V

    return-void

    :cond_5c3
    :try_start_5c3
    new-instance v2, Lcom/google/android/gms/measurement/internal/h;

    iget-object v13, v5, Lcom/google/android/gms/measurement/internal/zzaq;->b:Ljava/lang/String;

    iget-wide v3, v5, Lcom/google/android/gms/measurement/internal/zzaq;->d:J

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v11, v2

    move-object v12, v10

    move-wide/from16 v20, v3

    .line 197
    invoke-direct/range {v11 .. v27}, Lcom/google/android/gms/measurement/internal/h;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_5ef

    .line 198
    :cond_5e1
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    iget-wide v8, v2, Lcom/google/android/gms/measurement/internal/h;->f:J

    .line 199
    invoke-virtual {v5, v3, v8, v9}, Lcom/google/android/gms/measurement/internal/zzaq;->a(Lcom/google/android/gms/measurement/internal/zzgi;J)Lcom/google/android/gms/measurement/internal/zzaq;

    move-result-object v5

    iget-wide v3, v5, Lcom/google/android/gms/measurement/internal/zzaq;->d:J

    .line 200
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/h;->c(J)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v2

    .line 201
    :goto_5ef
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 202
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 203
    invoke-virtual {v3, v2}, Lcom/google/android/gms/measurement/internal/e;->l(Lcom/google/android/gms/measurement/internal/h;)V

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->B()Lcom/google/android/gms/measurement/internal/zzgf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->b()V

    .line 206
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/zzaq;->a:Ljava/lang/String;

    .line 208
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v5, Lcom/google/android/gms/measurement/internal/zzaq;->a:Ljava/lang/String;

    move-object/from16 v3, p2

    .line 209
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->a(Z)V

    .line 210
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgc;->N1()Lcom/google/android/gms/internal/measurement/zzgb;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/zzgb;->a0(I)Lcom/google/android/gms/internal/measurement/zzgb;

    const-string v8, "android"

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzgb;->V(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 211
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_633

    .line 212
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzgb;->v(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 213
    :cond_633
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->r:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_640

    .line 214
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->r:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzgb;->x(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 215
    :cond_640
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->q:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_64d

    .line 216
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->q:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzgb;->y(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 217
    :cond_64d
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpp;->b()Z

    .line 218
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v8

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzel;->J0:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v8, v6, v9}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v8

    if-eqz v8, :cond_669

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->L:Ljava/lang/String;

    .line 219
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_669

    .line 220
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->L:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzgb;->e0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 221
    :cond_669
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->x:J

    const-wide/32 v10, -0x80000000

    cmp-long v12, v8, v10

    if-eqz v12, :cond_676

    long-to-int v9, v8

    .line 222
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/measurement/zzgb;->z(I)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 223
    :cond_676
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->s:J

    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzgb;->P(J)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 224
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->p:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_688

    .line 225
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->p:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzgb;->O(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 226
    :cond_688
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    .line 227
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/zzli;->S(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->J:Ljava/lang/String;

    .line 228
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzah;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzah;->c(Lcom/google/android/gms/measurement/internal/zzah;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v8

    .line 229
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzah;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzgb;->D(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 230
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgb;->o0()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6bc

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->E:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6bc

    .line 231
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->E:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzgb;->t(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 232
    :cond_6bc
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->t:J

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-eqz v12, :cond_6c7

    .line 233
    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzgb;->E(J)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 234
    :cond_6c7
    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->G:J

    invoke-virtual {v2, v8, v9}, Lcom/google/android/gms/internal/measurement/zzgb;->H(J)Lcom/google/android/gms/internal/measurement/zzgb;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 235
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    iget-object v9, v8, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 236
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgi;->N0()Landroid/content/Context;

    move-result-object v9

    .line 237
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzel;->c(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v9

    if-eqz v9, :cond_763

    .line 238
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v10

    if-nez v10, :cond_6e7

    goto/16 :goto_763

    .line 239
    :cond_6e7
    new-instance v14, Ljava/util/ArrayList;

    .line 240
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    sget-object v10, Lcom/google/android/gms/measurement/internal/zzel;->Q:Lcom/google/android/gms/measurement/internal/zzek;

    .line 241
    invoke-virtual {v10, v6}, Lcom/google/android/gms/measurement/internal/zzek;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 242
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_700
    :goto_700
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_75d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 243
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "measurement.id."

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12
    :try_end_718
    .catchall {:try_start_5c3 .. :try_end_718} :catchall_aa6

    if-eqz v12, :cond_700

    .line 244
    :try_start_71a
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_700

    .line 245
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v11

    if-lt v11, v10, :cond_700

    iget-object v11, v8, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 247
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v11

    .line 248
    invoke-virtual {v11}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v11

    const-string v12, "Too many experiment IDs. Number of IDs"

    .line 249
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_74a
    .catch Ljava/lang/NumberFormatException; {:try_start_71a .. :try_end_74a} :catch_74b
    .catchall {:try_start_71a .. :try_end_74a} :catchall_aa6

    goto :goto_75d

    :catch_74b
    move-exception v0

    move-object v11, v0

    .line 250
    :try_start_74d
    iget-object v12, v8, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 251
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v12

    .line 252
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzey;->r()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v12

    const-string v13, "Experiment ID NumberFormatException"

    invoke-virtual {v12, v13, v11}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_700

    .line 253
    :cond_75d
    :goto_75d
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_764

    :cond_763
    :goto_763
    move-object v14, v6

    :cond_764
    if-eqz v14, :cond_769

    .line 254
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/measurement/zzgb;->x0(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 255
    :cond_769
    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    .line 256
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/zzli;->S(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v8

    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->J:Ljava/lang/String;

    .line 257
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzah;->b(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzah;->c(Lcom/google/android/gms/measurement/internal/zzah;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v8

    .line 258
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzag;->p:Lcom/google/android/gms/measurement/internal/zzag;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzah;->i(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v10

    if-eqz v10, :cond_7b1

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzli;->i:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 259
    iget-object v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    .line 260
    invoke-virtual {v10, v11, v8}, Lcom/google/android/gms/measurement/internal/zzkd;->i(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzah;)Landroid/util/Pair;

    move-result-object v10

    .line 261
    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7b1

    .line 262
    iget-boolean v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->C:Z

    if-eqz v11, :cond_7b1

    .line 263
    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/measurement/zzgb;->b0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 264
    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v10, :cond_7b1

    .line 265
    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/measurement/zzgb;->R(Z)Lcom/google/android/gms/internal/measurement/zzgb;

    :cond_7b1
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 266
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgi;->w()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v10

    .line 267
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/z0;->f()V

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/measurement/zzgb;->F(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 268
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgi;->w()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v10

    .line 269
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/z0;->f()V

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/measurement/zzgb;->S(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 270
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgi;->w()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v10

    .line 271
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzap;->k()J

    move-result-wide v10

    long-to-int v11, v10

    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/measurement/zzgb;->g0(I)Lcom/google/android/gms/internal/measurement/zzgb;

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 272
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgi;->w()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v10

    .line 273
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzap;->l()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/measurement/zzgb;->k0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/measurement/internal/zzel;->j0:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v10, v6, v11}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v10

    if-nez v10, :cond_7f9

    .line 275
    iget-wide v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->z:J

    invoke-virtual {v2, v12, v13}, Lcom/google/android/gms/internal/measurement/zzgb;->u(J)Lcom/google/android/gms/internal/measurement/zzgb;

    :cond_7f9
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 276
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgi;->j()Z

    move-result v10

    if-eqz v10, :cond_80d

    .line 277
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgb;->n0()Ljava/lang/String;

    .line 278
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_80d

    .line 279
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/zzgb;->G(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    :cond_80d
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 280
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 281
    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-virtual {v10, v12}, Lcom/google/android/gms/measurement/internal/e;->P(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c0;

    move-result-object v10

    if-nez v10, :cond_88a

    new-instance v10, Lcom/google/android/gms/measurement/internal/c0;

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/zzli;->l:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 282
    iget-object v13, v3, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-direct {v10, v12, v13}, Lcom/google/android/gms/measurement/internal/c0;-><init>(Lcom/google/android/gms/measurement/internal/zzgi;Ljava/lang/String;)V

    .line 283
    invoke-virtual {v1, v8}, Lcom/google/android/gms/measurement/internal/zzli;->g0(Lcom/google/android/gms/measurement/internal/zzah;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/google/android/gms/measurement/internal/c0;->i(Ljava/lang/String;)V

    .line 284
    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->y:Ljava/lang/String;

    invoke-virtual {v10, v12}, Lcom/google/android/gms/measurement/internal/c0;->w(Ljava/lang/String;)V

    .line 285
    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->p:Ljava/lang/String;

    invoke-virtual {v10, v12}, Lcom/google/android/gms/measurement/internal/c0;->x(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzah;->i(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v9

    if-eqz v9, :cond_845

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzli;->i:Lcom/google/android/gms/measurement/internal/zzkd;

    .line 287
    iget-object v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-virtual {v9, v12}, Lcom/google/android/gms/measurement/internal/zzkd;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 288
    invoke-virtual {v10, v9}, Lcom/google/android/gms/measurement/internal/c0;->G(Ljava/lang/String;)V

    :cond_845
    const-wide/16 v12, 0x0

    .line 289
    invoke-virtual {v10, v12, v13}, Lcom/google/android/gms/measurement/internal/c0;->C(J)V

    .line 290
    invoke-virtual {v10, v12, v13}, Lcom/google/android/gms/measurement/internal/c0;->D(J)V

    .line 291
    invoke-virtual {v10, v12, v13}, Lcom/google/android/gms/measurement/internal/c0;->B(J)V

    .line 292
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->q:Ljava/lang/String;

    invoke-virtual {v10, v9}, Lcom/google/android/gms/measurement/internal/c0;->k(Ljava/lang/String;)V

    .line 293
    iget-wide v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->x:J

    invoke-virtual {v10, v12, v13}, Lcom/google/android/gms/measurement/internal/c0;->l(J)V

    .line 294
    iget-object v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->r:Ljava/lang/String;

    invoke-virtual {v10, v9}, Lcom/google/android/gms/measurement/internal/c0;->j(Ljava/lang/String;)V

    .line 295
    iget-wide v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->s:J

    invoke-virtual {v10, v12, v13}, Lcom/google/android/gms/measurement/internal/c0;->y(J)V

    .line 296
    iget-wide v12, v3, Lcom/google/android/gms/measurement/internal/zzp;->t:J

    invoke-virtual {v10, v12, v13}, Lcom/google/android/gms/measurement/internal/c0;->t(J)V

    .line 297
    iget-boolean v9, v3, Lcom/google/android/gms/measurement/internal/zzp;->v:Z

    invoke-virtual {v10, v9}, Lcom/google/android/gms/measurement/internal/c0;->E(Z)V

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v9

    invoke-virtual {v9, v6, v11}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v9

    if-nez v9, :cond_87d

    .line 299
    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->z:J

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/measurement/internal/c0;->h(J)V

    .line 300
    :cond_87d
    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzp;->G:J

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/measurement/internal/c0;->u(J)V

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 301
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 302
    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/e;->k(Lcom/google/android/gms/measurement/internal/c0;)V

    :cond_88a
    sget-object v9, Lcom/google/android/gms/measurement/internal/zzag;->q:Lcom/google/android/gms/measurement/internal/zzag;

    .line 303
    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzah;->i(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v8

    if-eqz v8, :cond_8a9

    .line 304
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/c0;->f0()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8a9

    .line 305
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/c0;->f0()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzgb;->w(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 306
    :cond_8a9
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/c0;->i0()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8c0

    .line 307
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/c0;->i0()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzgb;->N(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    :cond_8c0
    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 308
    invoke-static {v8}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 309
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzp;->o:Ljava/lang/String;

    invoke-virtual {v8, v3}, Lcom/google/android/gms/measurement/internal/e;->b0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const/4 v13, 0x0

    .line 310
    :goto_8cc
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v13, v8, :cond_902

    .line 311
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgl;->x()Lcom/google/android/gms/internal/measurement/zzgk;

    move-result-object v8

    .line 312
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/b4;

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/b4;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/measurement/zzgk;->w(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgk;

    .line 313
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/measurement/internal/b4;

    iget-wide v9, v9, Lcom/google/android/gms/measurement/internal/b4;->d:J

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/measurement/zzgk;->x(J)Lcom/google/android/gms/internal/measurement/zzgk;

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 314
    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 315
    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/b4;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/b4;->e:Ljava/lang/Object;

    invoke-virtual {v9, v8, v10}, Lcom/google/android/gms/measurement/internal/zzlk;->I(Lcom/google/android/gms/internal/measurement/zzgk;Ljava/lang/Object;)V

    .line 316
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/measurement/zzgb;->C0(Lcom/google/android/gms/internal/measurement/zzgk;)Lcom/google/android/gms/internal/measurement/zzgb;
    :try_end_8ff
    .catchall {:try_start_74d .. :try_end_8ff} :catchall_aa6

    add-int/lit8 v13, v13, 0x1

    goto :goto_8cc

    :cond_902
    :try_start_902
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 317
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 318
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/measurement/zzgc;

    .line 319
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 320
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/r3;->d()V

    .line 321
    invoke-static {v8}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 323
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzil;->h()[B

    move-result-object v9

    iget-object v10, v3, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    iget-object v10, v10, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 324
    invoke-static {v10}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 325
    invoke-virtual {v10, v9}, Lcom/google/android/gms/measurement/internal/zzlk;->s([B)J

    move-result-wide v10

    new-instance v12, Landroid/content/ContentValues;

    .line 326
    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 327
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v14, v30

    invoke-virtual {v12, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v15, v33

    invoke-virtual {v12, v15, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v13, "metadata"

    .line 329
    invoke-virtual {v12, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_948
    .catch Ljava/io/IOException; {:try_start_902 .. :try_end_948} :catch_a5c
    .catchall {:try_start_902 .. :try_end_948} :catchall_aa6

    .line 330
    :try_start_948
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e;->N()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const-string v13, "raw_events_metadata"

    const/4 v4, 0x4

    .line 331
    invoke-virtual {v9, v13, v6, v12, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_952
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_948 .. :try_end_952} :catch_a42
    .catch Ljava/io/IOException; {:try_start_948 .. :try_end_952} :catch_a5c
    .catchall {:try_start_948 .. :try_end_952} :catchall_aa6

    :try_start_952
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 332
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/zzaq;->f:Lcom/google/android/gms/measurement/internal/zzat;

    new-instance v4, Lcom/google/android/gms/measurement/internal/i;

    .line 333
    invoke-direct {v4, v3}, Lcom/google/android/gms/measurement/internal/i;-><init>(Lcom/google/android/gms/measurement/internal/zzat;)V

    .line 334
    :cond_95e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_970

    .line 335
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/i;->a()Ljava/lang/String;

    move-result-object v3

    .line 336
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_95e

    :goto_96e
    const/4 v13, 0x1

    goto :goto_9b1

    .line 337
    :cond_970
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzli;->a:Lcom/google/android/gms/measurement/internal/zzfz;

    .line 338
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    iget-object v4, v5, Lcom/google/android/gms/measurement/internal/zzaq;->a:Ljava/lang/String;

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzaq;->b:Ljava/lang/String;

    .line 339
    invoke-virtual {v3, v4, v7}, Lcom/google/android/gms/measurement/internal/zzfz;->C(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 340
    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->D()J

    move-result-wide v17

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzaq;->a:Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v16, v4

    move-object/from16 v19, v7

    invoke-virtual/range {v16 .. v24}, Lcom/google/android/gms/measurement/internal/e;->R(JLjava/lang/String;ZZZZZ)Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v4

    if-eqz v3, :cond_9b0

    iget-wide v3, v4, Lcom/google/android/gms/measurement/internal/zzaj;->e:J

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->R()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v7

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/zzaq;->a:Ljava/lang/String;

    sget-object v9, Lcom/google/android/gms/measurement/internal/zzel;->p:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzaf;->j(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)I

    move-result v7

    int-to-long v7, v7

    cmp-long v9, v3, v7

    if-gez v9, :cond_9b0

    goto :goto_96e

    :cond_9b0
    const/4 v13, 0x0

    .line 343
    :goto_9b1
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 344
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/r3;->d()V

    .line 345
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v5, Lcom/google/android/gms/measurement/internal/zzaq;->a:Ljava/lang/String;

    .line 346
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzli;->g:Lcom/google/android/gms/measurement/internal/zzlk;

    .line 347
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 348
    invoke-virtual {v3, v5}, Lcom/google/android/gms/measurement/internal/zzlk;->y(Lcom/google/android/gms/measurement/internal/zzaq;)Lcom/google/android/gms/internal/measurement/zzfs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/zzil;->h()[B

    move-result-object v3

    new-instance v4, Landroid/content/ContentValues;

    .line 349
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    iget-object v7, v5, Lcom/google/android/gms/measurement/internal/zzaq;->a:Ljava/lang/String;

    .line 350
    invoke-virtual {v4, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "name"

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/zzaq;->b:Ljava/lang/String;

    .line 351
    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "timestamp"

    iget-wide v8, v5, Lcom/google/android/gms/measurement/internal/zzaq;->d:J

    .line 352
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 353
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v15, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "data"

    .line 354
    invoke-virtual {v4, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v3, "realtime"

    .line 355
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_9ff
    .catchall {:try_start_952 .. :try_end_9ff} :catchall_aa6

    .line 356
    :try_start_9ff
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->N()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    move-object/from16 v7, v32

    .line 357
    invoke-virtual {v3, v7, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    const-wide/16 v6, -0x1

    cmp-long v8, v3, v6

    if-nez v8, :cond_a25

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 358
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    .line 359
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    const-string v4, "Failed to insert raw event (got -1). appId"

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/zzaq;->a:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 360
    invoke-virtual {v3, v4, v6}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a24
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9ff .. :try_end_a24} :catch_a2a
    .catchall {:try_start_9ff .. :try_end_a24} :catchall_aa6

    goto :goto_a73

    :cond_a25
    const-wide/16 v3, 0x0

    .line 361
    :try_start_a27
    iput-wide v3, v1, Lcom/google/android/gms/measurement/internal/zzli;->o:J

    goto :goto_a73

    :catch_a2a
    move-exception v0

    move-object v3, v0

    .line 362
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 363
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 364
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    const-string v4, "Error storing raw event. appId"

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/zzaq;->a:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 365
    invoke-virtual {v2, v4, v5, v3}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_a41
    .catchall {:try_start_a27 .. :try_end_a41} :catchall_aa6

    goto :goto_a73

    :catch_a42
    move-exception v0

    move-object v4, v0

    .line 366
    :try_start_a44
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 367
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    .line 368
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    const-string v5, "Error storing raw event metadata. appId"

    .line 369
    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/zzgc;->R1()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 370
    invoke-virtual {v3, v5, v6, v4}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 371
    throw v4
    :try_end_a5c
    .catch Ljava/io/IOException; {:try_start_a44 .. :try_end_a5c} :catch_a5c
    .catchall {:try_start_a44 .. :try_end_a5c} :catchall_aa6

    :catch_a5c
    move-exception v0

    move-object v3, v0

    .line 372
    :try_start_a5e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v4

    .line 373
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v4

    const-string v5, "Data loss. Failed to insert raw event metadata. appId"

    .line 374
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzgb;->n0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 375
    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 376
    :goto_a73
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 377
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 378
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->j()V
    :try_end_a7b
    .catchall {:try_start_a5e .. :try_end_a7b} :catchall_aa6

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 379
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 380
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/e;->e0()V

    .line 381
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->J()V

    .line 382
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/zzli;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 383
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    .line 384
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v3, v28

    const-wide/32 v5, 0x7a120

    add-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Background event processing time, ms"

    .line 385
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catchall_aa6
    move-exception v0

    move-object v2, v0

    .line 386
    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/zzli;->c:Lcom/google/android/gms/measurement/internal/e;

    .line 387
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzli;->O(Lcom/google/android/gms/measurement/internal/r3;)Lcom/google/android/gms/measurement/internal/r3;

    .line 388
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e;->e0()V

    .line 389
    throw v2

    .line 390
    :cond_ab1
    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/zzli;->P(Lcom/google/android/gms/measurement/internal/zzp;)Lcom/google/android/gms/measurement/internal/c0;

    return-void
.end method
