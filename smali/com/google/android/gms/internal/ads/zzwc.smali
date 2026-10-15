###### Class com.google.android.gms.internal.ads.zzwc (com.google.android.gms.internal.ads.zzwc)
.class public final Lcom/google/android/gms/internal/ads/zzwc;
.super Lcom/google/android/gms/internal/ads/zzwh;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final k:Lcom/google/android/gms/internal/ads/zzfrs;

.field private static final l:Lcom/google/android/gms/internal/ads/zzfrs;

.field public static final synthetic m:I


# instance fields
.field private final d:Ljava/lang/Object;

.field public final e:Landroid/content/Context;

.field private final f:Z

.field private g:Lcom/google/android/gms/internal/ads/zzvq;

.field private h:Lcom/google/android/gms/internal/ads/zzvv;

.field private i:Lcom/google/android/gms/internal/ads/zzk;

.field private final j:Lcom/google/android/gms/internal/ads/zzux;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzvi;->o:Lcom/google/android/gms/internal/ads/zzvi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfrs;->b(Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfrs;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzwc;->k:Lcom/google/android/gms/internal/ads/zzfrs;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzvj;->o:Lcom/google/android/gms/internal/ads/zzvj;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfrs;->b(Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfrs;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzwc;->l:Lcom/google/android/gms/internal/ads/zzfrs;

    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzvq;->s0:Lcom/google/android/gms/internal/ads/zzvq;

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzux;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzux;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzvq;->d(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzvq;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwh;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzwc;->d:Ljava/lang/Object;

    if-eqz p1, :cond_1a

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    :goto_1b
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzwc;->e:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->j:Lcom/google/android/gms/internal/ads/zzux;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzwc;->g:Lcom/google/android/gms/internal/ads/zzvq;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzk;->c:Lcom/google/android/gms/internal/ads/zzk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->i:Lcom/google/android/gms/internal/ads/zzk;

    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzew;->y(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v0, 0x1

    :cond_2f
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->f:Z

    if-nez v0, :cond_41

    if-eqz p1, :cond_41

    .line 6
    sget v0, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_41

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzvv;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzvv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->h:Lcom/google/android/gms/internal/ads/zzvv;

    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->g:Lcom/google/android/gms/internal/ads/zzvq;

    .line 8
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzvq;->m0:Z

    if-eqz v0, :cond_50

    if-nez p1, :cond_50

    const-string p1, "DefaultTrackSelector"

    const-string v0, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    .line 9
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_50
    return-void
.end method

.method protected static j(Lcom/google/android/gms/internal/ads/zzaf;Ljava/lang/String;Z)I
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaf;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x4

    return p0

    .line 2
    :cond_11
    :goto_11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzwc;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaf;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzwc;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_47

    if-nez p1, :cond_21

    goto :goto_47

    .line 4
    :cond_21
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_45

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2e

    goto :goto_45

    :cond_2e
    const-string p2, "-"

    .line 5
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzew;->J(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v0

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzew;->J(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_44

    const/4 p0, 0x2

    return p0

    :cond_44
    return v0

    :cond_45
    :goto_45
    const/4 p0, 0x3

    return p0

    :cond_47
    :goto_47
    if-eqz p2, :cond_4d

    if-nez p0, :cond_4d

    const/4 p0, 0x1

    return p0

    :cond_4d
    return v0
.end method

.method static bridge synthetic l()Lcom/google/android/gms/internal/ads/zzfrs;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzwc;->k:Lcom/google/android/gms/internal/ads/zzfrs;

    return-object v0
.end method

.method static bridge synthetic m()Lcom/google/android/gms/internal/ads/zzfrs;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzwc;->l:Lcom/google/android/gms/internal/ads/zzfrs;

    return-object v0
.end method

.method protected static n(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    return-object p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return-object p0
.end method

.method static bridge synthetic o(Lcom/google/android/gms/internal/ads/zzwc;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwc;->t()V

    return-void
.end method

.method public static synthetic q(Lcom/google/android/gms/internal/ads/zzwc;Lcom/google/android/gms/internal/ads/zzaf;)Z
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwc;->g:Lcom/google/android/gms/internal/ads/zzvq;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzvq;->m0:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_8b

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwc;->f:Z

    if-nez v1, :cond_8b

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzaf;->y:I

    const/4 v4, 0x2

    if-le v1, v4, :cond_8b

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzaf;->l:Ljava/lang/String;

    const/16 v5, 0x20

    if-nez v1, :cond_1b

    goto :goto_65

    .line 3
    :cond_1b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_8e

    const/4 v7, 0x3

    sparse-switch v6, :sswitch_data_92

    goto :goto_4c

    :sswitch_24
    const-string v6, "audio/eac3"

    .line 4
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const/4 v1, 0x1

    goto :goto_4d

    :sswitch_2e
    const-string v6, "audio/ac4"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const/4 v1, 0x3

    goto :goto_4d

    :sswitch_38
    const-string v6, "audio/ac3"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const/4 v1, 0x0

    goto :goto_4d

    :sswitch_42
    const-string v6, "audio/eac3-joc"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    const/4 v1, 0x2

    goto :goto_4d

    :cond_4c
    :goto_4c
    const/4 v1, -0x1

    :goto_4d
    if-eqz v1, :cond_56

    if-eq v1, v3, :cond_56

    if-eq v1, v4, :cond_56

    if-eq v1, v7, :cond_56

    goto :goto_65

    :cond_56
    :try_start_56
    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    if-lt v1, v5, :cond_8b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwc;->h:Lcom/google/android/gms/internal/ads/zzvv;

    if-eqz v1, :cond_8b

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzvv;->g()Z

    move-result v1

    if-nez v1, :cond_65

    goto :goto_8b

    .line 5
    :cond_65
    :goto_65
    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    if-lt v1, v5, :cond_8c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwc;->h:Lcom/google/android/gms/internal/ads/zzvv;

    if-eqz v1, :cond_8c

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzvv;->g()Z

    move-result v4

    if-eqz v4, :cond_8c

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzvv;->e()Z

    move-result v1

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwc;->h:Lcom/google/android/gms/internal/ads/zzvv;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzvv;->f()Z

    move-result v1

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwc;->h:Lcom/google/android/gms/internal/ads/zzvv;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzwc;->i:Lcom/google/android/gms/internal/ads/zzk;

    .line 8
    invoke-virtual {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzvv;->d(Lcom/google/android/gms/internal/ads/zzk;Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result p0

    if-eqz p0, :cond_8c

    :cond_8b
    :goto_8b
    const/4 v2, 0x1

    :cond_8c
    monitor-exit v0

    return v2

    :catchall_8e
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_90
    .catchall {:try_start_56 .. :try_end_90} :catchall_8e

    throw p0

    nop

    :sswitch_data_92
    .sparse-switch
        -0x7e929daa -> :sswitch_42
        0xb269698 -> :sswitch_38
        0xb269699 -> :sswitch_2e
        0x59ae0c65 -> :sswitch_24
    .end sparse-switch
.end method

.method protected static r(IZ)Z
    .registers 5

    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq p0, v2, :cond_e

    if-eqz p1, :cond_f

    const/4 p1, 0x3

    if-ne p0, p1, :cond_d

    goto :goto_e

    :cond_d
    return v0

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method private static s(Lcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzcu;Ljava/util/Map;)V
    .registers 5

    const/4 p2, 0x0

    .line 1
    :goto_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzur;->a:I

    if-ge p2, v0, :cond_18

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzur;->b(I)Lcom/google/android/gms/internal/ads/zzcp;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzcu;->y:Lcom/google/android/gms/internal/ads/zzfqn;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfqn;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcr;

    if-nez v0, :cond_16

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_16
    const/4 p0, 0x0

    .line 4
    throw p0

    :cond_18
    return-void
.end method

.method private final t()V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwc;->g:Lcom/google/android/gms/internal/ads/zzvq;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzvq;->m0:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzwc;->f:Z

    if-nez v1, :cond_1f

    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v3, 0x20

    if-lt v1, v3, :cond_1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwc;->h:Lcom/google/android/gms/internal/ads/zzvv;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzvv;->g()Z

    move-result v1

    if-eqz v1, :cond_1f

    const/4 v2, 0x1

    .line 2
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_26

    if-eqz v2, :cond_25

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzwk;->h()V

    :cond_25
    return-void

    :catchall_26
    move-exception v1

    .line 4
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private static final u(ILcom/google/android/gms/internal/ads/zzwg;[[[ILcom/google/android/gms/internal/ads/zzvx;Ljava/util/Comparator;)Landroid/util/Pair;
    .registers 22

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_8
    const/4 v4, 0x2

    if-ge v3, v4, :cond_8b

    .line 2
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzwg;->c(I)I

    move-result v5

    move/from16 v6, p0

    if-ne v6, v5, :cond_85

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzwg;->d(I)Lcom/google/android/gms/internal/ads/zzur;

    move-result-object v5

    const/4 v7, 0x0

    .line 4
    :goto_18
    iget v8, v5, Lcom/google/android/gms/internal/ads/zzur;->a:I

    if-ge v7, v8, :cond_85

    .line 5
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzur;->b(I)Lcom/google/android/gms/internal/ads/zzcp;

    move-result-object v8

    .line 6
    aget-object v9, p2, v3

    aget-object v9, v9, v7

    move-object/from16 v10, p3

    .line 7
    invoke-interface {v10, v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzvx;->a(ILcom/google/android/gms/internal/ads/zzcp;[I)Ljava/util/List;

    move-result-object v9

    .line 8
    iget v8, v8, Lcom/google/android/gms/internal/ads/zzcp;->a:I

    const/4 v8, 0x1

    new-array v11, v8, [Z

    const/4 v12, 0x0

    :goto_30
    if-gtz v12, :cond_82

    .line 9
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/zzvy;

    .line 10
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzvy;->c()I

    move-result v14

    .line 11
    aget-boolean v15, v11, v12

    if-nez v15, :cond_7d

    if-nez v14, :cond_43

    goto :goto_7d

    :cond_43
    if-ne v14, v8, :cond_4b

    .line 12
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzfqk;->v(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v13

    const/4 v2, 0x1

    goto :goto_79

    .line 13
    :cond_4b
    new-instance v14, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v12, 0x1

    :goto_55
    if-gtz v15, :cond_77

    .line 16
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Lcom/google/android/gms/internal/ads/zzvy;

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzvy;->c()I

    move-result v8

    if-ne v8, v4, :cond_72

    .line 18
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/zzvy;->e(Lcom/google/android/gms/internal/ads/zzvy;)Z

    move-result v8

    if-eqz v8, :cond_72

    .line 19
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    .line 20
    aput-boolean v2, v11, v15

    goto :goto_73

    :cond_72
    const/4 v2, 0x1

    :goto_73
    add-int/lit8 v15, v15, 0x1

    const/4 v8, 0x1

    goto :goto_55

    :cond_77
    const/4 v2, 0x1

    move-object v13, v14

    .line 21
    :goto_79
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7e

    :cond_7d
    :goto_7d
    const/4 v2, 0x1

    :goto_7e
    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x1

    goto :goto_30

    :cond_82
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    :cond_85
    move-object/from16 v10, p3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_8

    .line 22
    :cond_8b
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_93

    const/4 v0, 0x0

    return-object v0

    :cond_93
    move-object/from16 v0, p4

    .line 23
    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 25
    :goto_a2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b5

    .line 26
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzvy;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzvy;->q:I

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a2

    :cond_b5
    const/4 v2, 0x0

    .line 27
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzvy;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzwd;

    .line 28
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzvy;->p:Lcom/google/android/gms/internal/ads/zzcp;

    .line 29
    invoke-direct {v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzwd;-><init>(Lcom/google/android/gms/internal/ads/zzcp;[II)V

    .line 30
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzvy;->o:I

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 32
    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v2, 0x20

    if-lt v1, v2, :cond_10

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwc;->h:Lcom/google/android/gms/internal/ads/zzvv;

    if-eqz v1, :cond_10

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzvv;->c()V

    .line 3
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    .line 4
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzwk;->a()V

    return-void

    :catchall_15
    move-exception v1

    .line 5
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzk;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwc;->i:Lcom/google/android/gms/internal/ads/zzk;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzk;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwc;->i:Lcom/google/android/gms/internal/ads/zzk;

    .line 2
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_14

    if-eqz v1, :cond_13

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwc;->t()V

    :cond_13
    return-void

    :catchall_14
    move-exception p1

    .line 4
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw p1
.end method

.method public final c()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected final i(Lcom/google/android/gms/internal/ads/zzwg;[[[I[ILcom/google/android/gms/internal/ads/zzss;Lcom/google/android/gms/internal/ads/zzcn;)Landroid/util/Pair;
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzwc;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_9
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzwc;->g:Lcom/google/android/gms/internal/ads/zzvq;

    iget-boolean v5, v4, Lcom/google/android/gms/internal/ads/zzvq;->m0:Z

    if-eqz v5, :cond_23

    sget v5, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v6, 0x20

    if-lt v5, v6, :cond_23

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzwc;->h:Lcom/google/android/gms/internal/ads/zzvv;

    if-eqz v5, :cond_23

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v1, v6}, Lcom/google/android/gms/internal/ads/zzvv;->b(Lcom/google/android/gms/internal/ads/zzwc;Landroid/os/Looper;)V

    .line 3
    :cond_23
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_21f

    const/4 v3, 0x2

    new-array v5, v3, [Lcom/google/android/gms/internal/ads/zzwd;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzve;

    move-object/from16 v7, p3

    invoke-direct {v6, v4, v7}, Lcom/google/android/gms/internal/ads/zzve;-><init>(Lcom/google/android/gms/internal/ads/zzvq;[I)V

    sget-object v7, Lcom/google/android/gms/internal/ads/zzvf;->o:Lcom/google/android/gms/internal/ads/zzvf;

    .line 4
    invoke-static {v3, v0, v2, v6, v7}, Lcom/google/android/gms/internal/ads/zzwc;->u(ILcom/google/android/gms/internal/ads/zzwg;[[[ILcom/google/android/gms/internal/ads/zzvx;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_44

    .line 5
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/google/android/gms/internal/ads/zzwd;

    aput-object v6, v5, v7

    :cond_44
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_46
    const/4 v8, 0x1

    if-ge v7, v3, :cond_5c

    .line 6
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzwg;->c(I)I

    move-result v9

    if-ne v9, v3, :cond_59

    .line 7
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzwg;->d(I)Lcom/google/android/gms/internal/ads/zzur;

    move-result-object v9

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzur;->a:I

    if-lez v9, :cond_59

    const/4 v7, 0x1

    goto :goto_5d

    :cond_59
    add-int/lit8 v7, v7, 0x1

    goto :goto_46

    :cond_5c
    const/4 v7, 0x0

    :goto_5d
    new-instance v9, Lcom/google/android/gms/internal/ads/zzvc;

    invoke-direct {v9, v1, v4, v7}, Lcom/google/android/gms/internal/ads/zzvc;-><init>(Lcom/google/android/gms/internal/ads/zzwc;Lcom/google/android/gms/internal/ads/zzvq;Z)V

    sget-object v7, Lcom/google/android/gms/internal/ads/zzvd;->o:Lcom/google/android/gms/internal/ads/zzvd;

    .line 8
    invoke-static {v8, v0, v2, v9, v7}, Lcom/google/android/gms/internal/ads/zzwc;->u(ILcom/google/android/gms/internal/ads/zzwg;[[[ILcom/google/android/gms/internal/ads/zzvx;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_78

    .line 9
    iget-object v9, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v10, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Lcom/google/android/gms/internal/ads/zzwd;

    aput-object v10, v5, v9

    :cond_78
    if-nez v7, :cond_7c

    const/4 v7, 0x0

    goto :goto_8f

    .line 10
    :cond_7c
    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v10, v7

    check-cast v10, Lcom/google/android/gms/internal/ads/zzwd;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzwd;->a:Lcom/google/android/gms/internal/ads/zzcp;

    check-cast v7, Lcom/google/android/gms/internal/ads/zzwd;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzwd;->b:[I

    aget v7, v7, v6

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzcp;->b(I)Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzaf;->c:Ljava/lang/String;

    .line 11
    :goto_8f
    new-instance v10, Lcom/google/android/gms/internal/ads/zzvg;

    invoke-direct {v10, v4, v7}, Lcom/google/android/gms/internal/ads/zzvg;-><init>(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;)V

    sget-object v7, Lcom/google/android/gms/internal/ads/zzvh;->o:Lcom/google/android/gms/internal/ads/zzvh;

    const/4 v11, 0x3

    .line 12
    invoke-static {v11, v0, v2, v10, v7}, Lcom/google/android/gms/internal/ads/zzwc;->u(ILcom/google/android/gms/internal/ads/zzwg;[[[ILcom/google/android/gms/internal/ads/zzvx;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_ab

    .line 13
    iget-object v10, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/internal/ads/zzwd;

    aput-object v7, v5, v10

    :cond_ab
    const/4 v7, 0x0

    :goto_ac
    if-ge v7, v3, :cond_11e

    .line 14
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzwg;->c(I)I

    move-result v10

    if-eq v10, v3, :cond_115

    if-eq v10, v8, :cond_115

    if-eq v10, v11, :cond_115

    .line 15
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzwg;->d(I)Lcom/google/android/gms/internal/ads/zzur;

    move-result-object v10

    aget-object v12, v2, v7

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 16
    :goto_c3
    iget v11, v10, Lcom/google/android/gms/internal/ads/zzur;->a:I

    if-ge v13, v11, :cond_104

    .line 17
    invoke-virtual {v10, v13}, Lcom/google/android/gms/internal/ads/zzur;->b(I)Lcom/google/android/gms/internal/ads/zzcp;

    move-result-object v11

    .line 18
    aget-object v17, v12, v13

    move-object/from16 v9, v16

    const/4 v3, 0x0

    .line 19
    :goto_d0
    iget v6, v11, Lcom/google/android/gms/internal/ads/zzcp;->a:I

    if-gtz v3, :cond_fa

    .line 20
    aget v6, v17, v3

    iget-boolean v8, v4, Lcom/google/android/gms/internal/ads/zzvq;->n0:Z

    invoke-static {v6, v8}, Lcom/google/android/gms/internal/ads/zzwc;->r(IZ)Z

    move-result v6

    if-eqz v6, :cond_f4

    .line 21
    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/ads/zzcp;->b(I)Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v6

    new-instance v8, Lcom/google/android/gms/internal/ads/zzvl;

    .line 22
    aget v2, v17, v3

    invoke-direct {v8, v6, v2}, Lcom/google/android/gms/internal/ads/zzvl;-><init>(Lcom/google/android/gms/internal/ads/zzaf;I)V

    if-eqz v9, :cond_f1

    .line 23
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzvl;->c(Lcom/google/android/gms/internal/ads/zzvl;)I

    move-result v2

    if-lez v2, :cond_f4

    :cond_f1
    move v15, v3

    move-object v9, v8

    move-object v14, v11

    :cond_f4
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, p2

    const/4 v8, 0x1

    goto :goto_d0

    :cond_fa
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, p2

    move-object/from16 v16, v9

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    goto :goto_c3

    :cond_104
    if-nez v14, :cond_108

    const/4 v2, 0x0

    goto :goto_113

    .line 24
    :cond_108
    new-instance v2, Lcom/google/android/gms/internal/ads/zzwd;

    const/4 v3, 0x1

    new-array v6, v3, [I

    const/4 v3, 0x0

    aput v15, v6, v3

    .line 25
    invoke-direct {v2, v14, v6, v3}, Lcom/google/android/gms/internal/ads/zzwd;-><init>(Lcom/google/android/gms/internal/ads/zzcp;[II)V

    .line 26
    :goto_113
    aput-object v2, v5, v7

    :cond_115
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x3

    goto :goto_ac

    .line 27
    :cond_11e
    new-instance v2, Ljava/util/HashMap;

    .line 28
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    const/4 v6, 0x2

    :goto_125
    if-ge v3, v6, :cond_131

    .line 29
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzwg;->d(I)Lcom/google/android/gms/internal/ads/zzur;

    move-result-object v7

    .line 30
    invoke-static {v7, v4, v2}, Lcom/google/android/gms/internal/ads/zzwc;->s(Lcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzcu;Ljava/util/Map;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_125

    :cond_131
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzwg;->e()Lcom/google/android/gms/internal/ads/zzur;

    move-result-object v3

    .line 31
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzwc;->s(Lcom/google/android/gms/internal/ads/zzur;Lcom/google/android/gms/internal/ads/zzcu;Ljava/util/Map;)V

    const/4 v3, 0x0

    :goto_139
    if-ge v3, v6, :cond_150

    .line 32
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzwg;->c(I)I

    move-result v7

    .line 33
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzcr;

    if-nez v7, :cond_14e

    add-int/lit8 v3, v3, 0x1

    goto :goto_139

    :cond_14e
    const/4 v3, 0x0

    .line 34
    throw v3

    :cond_150
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_152
    if-ge v2, v6, :cond_16c

    .line 35
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzwg;->d(I)Lcom/google/android/gms/internal/ads/zzur;

    move-result-object v6

    .line 36
    invoke-virtual {v4, v2, v6}, Lcom/google/android/gms/internal/ads/zzvq;->g(ILcom/google/android/gms/internal/ads/zzur;)Z

    move-result v7

    if-nez v7, :cond_15f

    goto :goto_167

    .line 37
    :cond_15f
    invoke-virtual {v4, v2, v6}, Lcom/google/android/gms/internal/ads/zzvq;->e(ILcom/google/android/gms/internal/ads/zzur;)Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object v6

    if-nez v6, :cond_16b

    .line 38
    aput-object v3, v5, v2

    :goto_167
    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x2

    goto :goto_152

    .line 39
    :cond_16b
    throw v3

    :cond_16c
    const/4 v2, 0x2

    const/4 v3, 0x0

    :goto_16e
    if-ge v3, v2, :cond_190

    .line 40
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzwg;->c(I)I

    move-result v2

    .line 41
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzvq;->f(I)Z

    move-result v6

    if-nez v6, :cond_189

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzcu;->z:Lcom/google/android/gms/internal/ads/zzfqp;

    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzfqf;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_187

    goto :goto_189

    :cond_187
    const/4 v2, 0x0

    goto :goto_18c

    :cond_189
    :goto_189
    const/4 v2, 0x0

    .line 43
    aput-object v2, v5, v3

    :goto_18c
    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x2

    goto :goto_16e

    :cond_190
    const/4 v2, 0x0

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzwc;->j:Lcom/google/android/gms/internal/ads/zzux;

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzwk;->f()Lcom/google/android/gms/internal/ads/zzws;

    move-result-object v12

    .line 45
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzuy;->c([Lcom/google/android/gms/internal/ads/zzwd;)Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v13

    const/4 v6, 0x2

    new-array v14, v6, [Lcom/google/android/gms/internal/ads/zzwe;

    const/4 v15, 0x0

    :goto_19f
    if-ge v15, v6, :cond_1e8

    .line 46
    aget-object v6, v5, v15

    if-eqz v6, :cond_1e0

    iget-object v8, v6, Lcom/google/android/gms/internal/ads/zzwd;->b:[I

    .line 47
    array-length v7, v8

    if-nez v7, :cond_1ab

    goto :goto_1e0

    :cond_1ab
    const/4 v11, 0x1

    if-ne v7, v11, :cond_1c6

    new-instance v7, Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzwd;->a:Lcom/google/android/gms/internal/ads/zzcp;

    const/16 v16, 0x0

    .line 48
    aget v19, v8, v16

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v7

    move-object/from16 v18, v6

    .line 49
    invoke-direct/range {v17 .. v22}, Lcom/google/android/gms/internal/ads/zzwf;-><init>(Lcom/google/android/gms/internal/ads/zzcp;IIILjava/lang/Object;)V

    const/16 v18, 0x1

    goto :goto_1dd

    :cond_1c6
    const/16 v16, 0x0

    .line 50
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzwd;->a:Lcom/google/android/gms/internal/ads/zzcp;

    const/4 v9, 0x0

    .line 51
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v17, v6

    check-cast v17, Lcom/google/android/gms/internal/ads/zzfqk;

    move-object v6, v3

    move-object v10, v12

    const/16 v18, 0x1

    move-object/from16 v11, v17

    .line 52
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/internal/ads/zzux;->a(Lcom/google/android/gms/internal/ads/zzcp;[IILcom/google/android/gms/internal/ads/zzws;Lcom/google/android/gms/internal/ads/zzfqk;)Lcom/google/android/gms/internal/ads/zzuy;

    move-result-object v7

    :goto_1dd
    aput-object v7, v14, v15

    goto :goto_1e4

    :cond_1e0
    :goto_1e0
    const/16 v16, 0x0

    const/16 v18, 0x1

    :goto_1e4
    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x2

    goto :goto_19f

    :cond_1e8
    const/16 v16, 0x0

    new-array v3, v6, [Lcom/google/android/gms/internal/ads/zzkp;

    const/4 v5, 0x0

    :goto_1ed
    if-ge v5, v6, :cond_21a

    .line 53
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzwg;->c(I)I

    move-result v7

    .line 54
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzvq;->f(I)Z

    move-result v8

    if-nez v8, :cond_214

    iget-object v8, v4, Lcom/google/android/gms/internal/ads/zzcu;->z:Lcom/google/android/gms/internal/ads/zzfqp;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzfqf;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_206

    goto :goto_214

    .line 55
    :cond_206
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzwg;->c(I)I

    move-result v7

    const/4 v8, -0x2

    if-eq v7, v8, :cond_211

    aget-object v7, v14, v5

    if-eqz v7, :cond_214

    :cond_211
    sget-object v7, Lcom/google/android/gms/internal/ads/zzkp;->a:Lcom/google/android/gms/internal/ads/zzkp;

    goto :goto_215

    :cond_214
    :goto_214
    move-object v7, v2

    .line 56
    :goto_215
    aput-object v7, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1ed

    .line 57
    :cond_21a
    invoke-static {v3, v14}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catchall_21f
    move-exception v0

    .line 58
    :try_start_220
    monitor-exit v3
    :try_end_221
    .catchall {:try_start_220 .. :try_end_221} :catchall_21f

    goto :goto_223

    :goto_222
    throw v0

    :goto_223
    goto :goto_222
.end method

.method public final k()Lcom/google/android/gms/internal/ads/zzvq;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwc;->g:Lcom/google/android/gms/internal/ads/zzvq;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final p(Lcom/google/android/gms/internal/ads/zzvo;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvq;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzvq;-><init>(Lcom/google/android/gms/internal/ads/zzvo;Lcom/google/android/gms/internal/ads/zzvp;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwc;->d:Ljava/lang/Object;

    monitor-enter p1

    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzwc;->g:Lcom/google/android/gms/internal/ads/zzvq;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcu;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzwc;->g:Lcom/google/android/gms/internal/ads/zzvq;

    .line 3
    monitor-exit p1
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_29

    if-eqz v1, :cond_28

    iget-boolean p1, v0, Lcom/google/android/gms/internal/ads/zzvq;->m0:Z

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzwc;->e:Landroid/content/Context;

    if-nez p1, :cond_25

    const-string p1, "DefaultTrackSelector"

    const-string v0, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzwk;->h()V

    :cond_28
    return-void

    :catchall_29
    move-exception v0

    .line 6
    :try_start_2a
    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

###### Class com.google.android.gms.internal.ads.zzvc (com.google.android.gms.internal.ads.zzvc)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzvc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzvx;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzwc;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzvq;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzwc;Lcom/google/android/gms/internal/ads/zzvq;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->a:Lcom/google/android/gms/internal/ads/zzwc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvc;->b:Lcom/google/android/gms/internal/ads/zzvq;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzvc;->c:Z

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/gms/internal/ads/zzcp;[I)Ljava/util/List;
    .registers 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzvc;->a:Lcom/google/android/gms/internal/ads/zzwc;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzvc;->b:Lcom/google/android/gms/internal/ads/zzvq;

    iget-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzvc;->c:Z

    new-instance v12, Lcom/google/android/gms/internal/ads/zzvb;

    invoke-direct {v12, v1}, Lcom/google/android/gms/internal/ads/zzvb;-><init>(Lcom/google/android/gms/internal/ads/zzwc;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqk;->o()Lcom/google/android/gms/internal/ads/zzfqh;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v14, p2

    const/4 v13, 0x0

    .line 2
    :goto_15
    iget v2, v14, Lcom/google/android/gms/internal/ads/zzcp;->a:I

    if-gtz v13, :cond_2f

    new-instance v15, Lcom/google/android/gms/internal/ads/zzvk;

    .line 3
    aget v7, p3, v13

    move-object v2, v15

    move/from16 v3, p1

    move-object/from16 v4, p2

    move v5, v13

    move-object v6, v10

    move v8, v11

    move-object v9, v12

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzvk;-><init>(ILcom/google/android/gms/internal/ads/zzcp;ILcom/google/android/gms/internal/ads/zzvq;IZLcom/google/android/gms/internal/ads/zzfnv;)V

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/ads/zzfqh;->g(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqh;

    add-int/lit8 v13, v13, 0x1

    goto :goto_15

    .line 4
    :cond_2f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfqh;->j()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v1

    return-object v1
.end method

###### Class com.google.android.gms.internal.ads.zzvb (com.google.android.gms.internal.ads.zzvb)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzvb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfnv;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzwc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzwc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvb;->o:Lcom/google/android/gms/internal/ads/zzwc;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvb;->o:Lcom/google/android/gms/internal/ads/zzwc;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaf;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzwc;->q(Lcom/google/android/gms/internal/ads/zzwc;Lcom/google/android/gms/internal/ads/zzaf;)Z

    move-result p1

    return p1
.end method

###### Class com.google.android.gms.internal.ads.zzvd (com.google.android.gms.internal.ads.zzvd)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzvd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic o:Lcom/google/android/gms/internal/ads/zzvd;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzvd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzvd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzvd;->o:Lcom/google/android/gms/internal/ads/zzvd;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvk;

    invoke-static {p2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzvk;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzvk;->f(Lcom/google/android/gms/internal/ads/zzvk;)I

    move-result p1

    return p1
.end method

###### Class com.google.android.gms.internal.ads.zzve (com.google.android.gms.internal.ads.zzve)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzve;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzvx;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzvq;

.field public final synthetic b:[I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzvq;[I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzve;->a:Lcom/google/android/gms/internal/ads/zzvq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzve;->b:[I

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/gms/internal/ads/zzcp;[I)Ljava/util/List;
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzve;->a:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzve;->b:[I

    sget v2, Lcom/google/android/gms/internal/ads/zzwc;->m:I

    .line 1
    aget v11, v1, p1

    .line 2
    iget v1, v10, Lcom/google/android/gms/internal/ads/zzcu;->i:I

    iget v2, v10, Lcom/google/android/gms/internal/ads/zzcu;->j:I

    iget-boolean v3, v10, Lcom/google/android/gms/internal/ads/zzcu;->k:Z

    const v14, 0x7fffffff

    if-eq v1, v14, :cond_80

    if-ne v2, v14, :cond_1b

    goto/16 :goto_83

    :cond_1b
    const/4 v4, 0x0

    const v5, 0x7fffffff

    .line 3
    :goto_1f
    iget v6, v9, Lcom/google/android/gms/internal/ads/zzcp;->a:I

    if-gtz v4, :cond_7e

    .line 4
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/zzcp;->b(I)Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v6

    .line 5
    iget v7, v6, Lcom/google/android/gms/internal/ads/zzaf;->q:I

    if-lez v7, :cond_78

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzaf;->r:I

    if-lez v8, :cond_78

    if-eqz v3, :cond_40

    if-gt v7, v8, :cond_35

    const/4 v15, 0x0

    goto :goto_36

    :cond_35
    const/4 v15, 0x1

    :goto_36
    if-gt v1, v2, :cond_3a

    const/4 v12, 0x0

    goto :goto_3b

    :cond_3a
    const/4 v12, 0x1

    :goto_3b
    if-eq v15, v12, :cond_40

    move v12, v1

    move v15, v2

    goto :goto_42

    :cond_40
    move v15, v1

    move v12, v2

    :goto_42
    mul-int v13, v7, v12

    mul-int v14, v8, v15

    if-lt v13, v14, :cond_52

    new-instance v8, Landroid/graphics/Point;

    .line 6
    invoke-static {v14, v7}, Lcom/google/android/gms/internal/ads/zzew;->P(II)I

    move-result v7

    invoke-direct {v8, v15, v7}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_5c

    .line 7
    :cond_52
    new-instance v7, Landroid/graphics/Point;

    .line 8
    invoke-static {v13, v8}, Lcom/google/android/gms/internal/ads/zzew;->P(II)I

    move-result v8

    invoke-direct {v7, v8, v12}, Landroid/graphics/Point;-><init>(II)V

    move-object v8, v7

    .line 9
    :goto_5c
    iget v7, v6, Lcom/google/android/gms/internal/ads/zzaf;->q:I

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzaf;->r:I

    mul-int v12, v7, v6

    .line 10
    iget v13, v8, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    const v14, 0x3f7ae148    # 0.98f

    mul-float v13, v13, v14

    float-to-int v13, v13

    if-lt v7, v13, :cond_78

    iget v7, v8, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    mul-float v7, v7, v14

    float-to-int v7, v7

    if-lt v6, v7, :cond_78

    if-ge v12, v5, :cond_78

    move v5, v12

    :cond_78
    add-int/lit8 v4, v4, 0x1

    const v14, 0x7fffffff

    goto :goto_1f

    :cond_7e
    move v14, v5

    goto :goto_83

    :cond_80
    const v14, 0x7fffffff

    .line 11
    :goto_83
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqk;->o()Lcom/google/android/gms/internal/ads/zzfqh;

    move-result-object v12

    const/4 v13, 0x0

    .line 12
    :goto_88
    iget v1, v9, Lcom/google/android/gms/internal/ads/zzcp;->a:I

    if-gtz v13, :cond_b8

    .line 13
    invoke-virtual {v9, v13}, Lcom/google/android/gms/internal/ads/zzcp;->b(I)Lcom/google/android/gms/internal/ads/zzaf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaf;->a()I

    move-result v1

    const v15, 0x7fffffff

    if-eq v14, v15, :cond_a1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9f

    if-gt v1, v14, :cond_9f

    goto :goto_a1

    :cond_9f
    const/4 v8, 0x0

    goto :goto_a2

    :cond_a1
    :goto_a1
    const/4 v8, 0x1

    :goto_a2
    new-instance v7, Lcom/google/android/gms/internal/ads/zzwb;

    .line 14
    aget v6, p3, v13

    move-object v1, v7

    move/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v13

    move-object v5, v10

    move-object v15, v7

    move v7, v11

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzwb;-><init>(ILcom/google/android/gms/internal/ads/zzcp;ILcom/google/android/gms/internal/ads/zzvq;IIZ)V

    invoke-virtual {v12, v15}, Lcom/google/android/gms/internal/ads/zzfqh;->g(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqh;

    add-int/lit8 v13, v13, 0x1

    goto :goto_88

    .line 15
    :cond_b8
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzfqh;->j()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object v1

    return-object v1
.end method

###### Class com.google.android.gms.internal.ads.zzvf (com.google.android.gms.internal.ads.zzvf)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzvf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic o:Lcom/google/android/gms/internal/ads/zzvf;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzvf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzvf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzvf;->o:Lcom/google/android/gms/internal/ads/zzvf;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfpz;->i()Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzvz;->o:Lcom/google/android/gms/internal/ads/zzvz;

    invoke-static {p1, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzwb;

    .line 2
    invoke-static {p2, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzwb;

    .line 3
    invoke-virtual {v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzfpz;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfpz;->b(II)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzwa;->o:Lcom/google/android/gms/internal/ads/zzwa;

    .line 5
    invoke-static {p1, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzwb;

    .line 6
    invoke-static {p2, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzwb;

    .line 7
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzfpz;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfpz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfpz;->a()I

    move-result p1

    return p1
.end method

###### Class com.google.android.gms.internal.ads.zzvz (com.google.android.gms.internal.ads.zzvz)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzvz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic o:Lcom/google/android/gms/internal/ads/zzvz;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzvz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzvz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzvz;->o:Lcom/google/android/gms/internal/ads/zzvz;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzwb;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzwb;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzwb;->g(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwb;)I

    move-result p1

    return p1
.end method

###### Class com.google.android.gms.internal.ads.zzwa (com.google.android.gms.internal.ads.zzwa)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzwa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic o:Lcom/google/android/gms/internal/ads/zzwa;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzwa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzwa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzwa;->o:Lcom/google/android/gms/internal/ads/zzwa;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzwb;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzwb;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzwb;->f(Lcom/google/android/gms/internal/ads/zzwb;Lcom/google/android/gms/internal/ads/zzwb;)I

    move-result p1

    return p1
.end method

###### Class com.google.android.gms.internal.ads.zzvg (com.google.android.gms.internal.ads.zzvg)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzvg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzvx;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzvq;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzvq;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvg;->a:Lcom/google/android/gms/internal/ads/zzvq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvg;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(ILcom/google/android/gms/internal/ads/zzcp;[I)Ljava/util/List;
    .registers 16

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzvg;->a:Lcom/google/android/gms/internal/ads/zzvq;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzvg;->b:Ljava/lang/String;

    sget v0, Lcom/google/android/gms/internal/ads/zzwc;->m:I

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqk;->o()Lcom/google/android/gms/internal/ads/zzfqh;

    move-result-object v9

    const/4 v0, 0x0

    const/4 v10, 0x0

    .line 2
    :goto_c
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzcp;->a:I

    if-gtz v10, :cond_23

    new-instance v11, Lcom/google/android/gms/internal/ads/zzvw;

    .line 3
    aget v5, p3, v10

    move-object v0, v11

    move v1, p1

    move-object v2, p2

    move v3, v10

    move-object v4, v7

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzvw;-><init>(ILcom/google/android/gms/internal/ads/zzcp;ILcom/google/android/gms/internal/ads/zzvq;ILjava/lang/String;)V

    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/ads/zzfqh;->g(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfqh;

    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 4
    :cond_23
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfqh;->j()Lcom/google/android/gms/internal/ads/zzfqk;

    move-result-object p1

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzvh (com.google.android.gms.internal.ads.zzvh)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzvh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic o:Lcom/google/android/gms/internal/ads/zzvh;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzvh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzvh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzvh;->o:Lcom/google/android/gms/internal/ads/zzvh;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvw;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzvw;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzvw;->f(Lcom/google/android/gms/internal/ads/zzvw;)I

    move-result p1

    return p1
.end method

###### Class com.google.android.gms.internal.ads.zzvi (com.google.android.gms.internal.ads.zzvi)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzvi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic o:Lcom/google/android/gms/internal/ads/zzvi;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzvi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzvi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzvi;->o:Lcom/google/android/gms/internal/ads/zzvi;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    sget v0, Lcom/google/android/gms/internal/ads/zzwc;->m:I

    .line 1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_1c

    const/4 p1, 0x0

    goto :goto_26

    .line 3
    :cond_15
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1d

    const/4 v1, 0x1

    :cond_1c
    return v1

    :cond_1d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p1, p2

    :goto_26
    return p1
.end method

###### Class com.google.android.gms.internal.ads.zzvj (com.google.android.gms.internal.ads.zzvj)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzvj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic o:Lcom/google/android/gms/internal/ads/zzvj;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzvj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzvj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzvj;->o:Lcom/google/android/gms/internal/ads/zzvj;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    sget p1, Lcom/google/android/gms/internal/ads/zzwc;->m:I

    const/4 p1, 0x0

    return p1
.end method
