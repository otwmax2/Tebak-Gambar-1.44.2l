###### Class com.google.android.gms.internal.ads.zzfjl (com.google.android.gms.internal.ads.zzfjl)
.class public final Lcom/google/android/gms/internal/ads/zzfjl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final f:Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/SharedPreferences;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/ads/zzfis;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfjl;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfis;Z)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfjl;->e:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjl;->a:Landroid/content/Context;

    add-int/lit8 p2, p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfjl;->c:Ljava/lang/String;

    const-string p2, "pcvmspf"

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjl;->b:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfjl;->d:Lcom/google/android/gms/internal/ads/zzfis;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzfjl;->e:Z

    return-void
.end method

.method private final e(Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjl;->a:Landroid/content/Context;

    const-string v1, "pccache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfjl;->c:Ljava/lang/String;

    .line 2
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private static f(Lcom/google/android/gms/internal/ads/zzasr;)Ljava/lang/String;
    .registers 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzasu;->L()Lcom/google/android/gms/internal/ads/zzast;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzasr;->K()Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzasu;->R()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzast;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzast;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzasr;->K()Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzasu;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzast;->o(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzast;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzasr;->K()Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzasu;->I()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzast;->p(J)Lcom/google/android/gms/internal/ads/zzast;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzasr;->K()Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzasu;->K()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzast;->r(J)Lcom/google/android/gms/internal/ads/zzast;

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzasr;->K()Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzasu;->J()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzast;->q(J)Lcom/google/android/gms/internal/ads/zzast;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzasu;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgon;->t()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/util/Hex;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final g()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjl;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FBAMTD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final h()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjl;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LATMTD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final i(IJ)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjl;->d:Lcom/google/android/gms/internal/ads/zzfis;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfis;->a(IJ)V

    :cond_7
    return-void
.end method

.method private final j(IJLjava/lang/String;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjl;->d:Lcom/google/android/gms/internal/ads/zzfis;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzfis;->b(IJLjava/lang/String;)V

    :cond_7
    return-void
.end method

.method private final k(I)Lcom/google/android/gms/internal/ads/zzasu;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_f

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjl;->b:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfjl;->h()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_19

    .line 2
    :cond_f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjl;->b:Landroid/content/SharedPreferences;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfjl;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_19
    if-nez p1, :cond_1c

    return-object v0

    .line 4
    :cond_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 5
    :try_start_20
    invoke-static {p1}, Lcom/google/android/gms/common/util/Hex;->c(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgpe;->J([B)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p1

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzfjl;->e:Z

    if-eqz v3, :cond_31

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpy;->a()Lcom/google/android/gms/internal/ads/zzgpy;

    move-result-object v3

    goto :goto_35

    .line 7
    :cond_31
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpy;->b()Lcom/google/android/gms/internal/ads/zzgpy;

    move-result-object v3

    .line 8
    :goto_35
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzasu;->P(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object p1
    :try_end_39
    .catch Lcom/google/android/gms/internal/ads/zzgqy; {:try_start_20 .. :try_end_39} :catch_45
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_39} :catch_40
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_39} :catch_3a

    return-object p1

    :catch_3a
    const/16 p1, 0x7f0

    .line 9
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfjl;->i(IJ)V

    goto :goto_45

    :catch_40
    const/16 p1, 0x7ed

    .line 10
    invoke-direct {p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfjl;->i(IJ)V

    :catch_45
    :goto_45
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzasr;)Z
    .registers 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzfjl;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 2
    :try_start_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzasr;->K()Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzasu;->R()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzfjl;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    const-string v5, "pcbc"

    .line 4
    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzasr;->L()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgpe;->k()[B

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzfjf;->e(Ljava/io/File;[B)Z

    move-result v3

    if-nez v3, :cond_30

    const/16 p1, 0xfb4

    .line 6
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfjl;->i(IJ)V

    .line 7
    monitor-exit v2

    const/4 p1, 0x0

    return p1

    .line 8
    :cond_30
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfjl;->f(Lcom/google/android/gms/internal/ads/zzasr;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfjl;->b:Landroid/content/SharedPreferences;

    .line 9
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfjl;->h()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 11
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_4d

    const/16 v3, 0x1397

    .line 12
    invoke-direct {p0, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzfjl;->i(IJ)V

    goto :goto_52

    :cond_4d
    const/16 v3, 0xfb5

    .line 13
    invoke-direct {p0, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzfjl;->i(IJ)V

    .line 14
    :goto_52
    monitor-exit v2

    return p1

    :catchall_54
    move-exception p1

    .line 15
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_7 .. :try_end_56} :catchall_54

    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzasr;Lcom/google/android/gms/internal/ads/zzfjk;)Z
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzfjl;->f:Ljava/lang/Object;

    monitor-enter v4

    const/4 v5, 0x1

    .line 2
    :try_start_c
    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/zzfjl;->k(I)Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object v6

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzasr;->K()Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzasu;->R()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v6, :cond_2c

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzasu;->R()Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    const/16 v0, 0xfae

    .line 5
    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfjl;->i(IJ)V

    .line 6
    monitor-exit v4

    return v8

    .line 7
    :cond_2c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 8
    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/ads/zzfjl;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 9
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    const/16 v12, 0xfaf

    if-eqz v11, :cond_74

    .line 10
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v11

    const-string v13, "1"

    const-string v14, "0"

    if-eq v5, v11, :cond_47

    move-object v13, v14

    .line 11
    :cond_47
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    const-string v11, "1"

    const-string v14, "0"

    if-eq v5, v6, :cond_52

    move-object v11, v14

    :cond_52
    const/16 v6, 0xfb7

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "d:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ",f:"

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 12
    invoke-direct {v1, v6, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzfjl;->j(IJLjava/lang/String;)V

    .line 13
    invoke-direct {v1, v12, v9, v10}, Lcom/google/android/gms/internal/ads/zzfjl;->i(IJ)V

    goto :goto_95

    .line 14
    :cond_74
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v11

    if-nez v11, :cond_95

    .line 15
    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v0

    const-string v2, "1"

    const-string v3, "0"

    if-eq v5, v0, :cond_85

    move-object v2, v3

    :cond_85
    const/16 v0, 0xfb8

    const-string v3, "cw:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-direct {v1, v0, v9, v10, v2}, Lcom/google/android/gms/internal/ads/zzfjl;->j(IJLjava/lang/String;)V

    .line 17
    invoke-direct {v1, v12, v9, v10}, Lcom/google/android/gms/internal/ads/zzfjl;->i(IJ)V

    .line 18
    monitor-exit v4

    return v8

    .line 19
    :cond_95
    :goto_95
    invoke-direct {v1, v7}, Lcom/google/android/gms/internal/ads/zzfjl;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    const-string v9, "pcam.jar"

    .line 20
    invoke-direct {v7, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    const-string v10, "pcbc"

    .line 21
    invoke-direct {v9, v6, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzasr;->M()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzgpe;->k()[B

    move-result-object v10

    invoke-static {v7, v10}, Lcom/google/android/gms/internal/ads/zzfjf;->e(Ljava/io/File;[B)Z

    move-result v10

    if-nez v10, :cond_bc

    const/16 v0, 0xfb0

    .line 23
    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfjl;->i(IJ)V

    .line 24
    monitor-exit v4

    return v8

    .line 25
    :cond_bc
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzasr;->L()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzgpe;->k()[B

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzfjf;->e(Ljava/io/File;[B)Z

    move-result v9

    if-nez v9, :cond_d1

    const/16 v0, 0xfb1

    .line 26
    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfjl;->i(IJ)V

    .line 27
    monitor-exit v4

    return v8

    :cond_d1
    if-eqz v0, :cond_e3

    .line 28
    invoke-interface {v0, v7}, Lcom/google/android/gms/internal/ads/zzfjk;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_e3

    const/16 v0, 0xfb2

    .line 29
    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfjl;->i(IJ)V

    .line 30
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzfjf;->d(Ljava/io/File;)Z

    .line 31
    monitor-exit v4

    return v8

    .line 32
    :cond_e3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfjl;->f(Lcom/google/android/gms/internal/ads/zzasr;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzfjl;->b:Landroid/content/SharedPreferences;

    .line 34
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfjl;->h()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzfjl;->b:Landroid/content/SharedPreferences;

    .line 35
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 36
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfjl;->h()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v9, :cond_10c

    .line 37
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfjl;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    :cond_10c
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_119

    const/16 v0, 0xfb3

    .line 39
    invoke-direct {v1, v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzfjl;->i(IJ)V

    .line 40
    monitor-exit v4

    return v8

    :cond_119
    new-instance v0, Ljava/util/HashSet;

    .line 41
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 42
    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/zzfjl;->k(I)Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object v6

    if-eqz v6, :cond_12b

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzasu;->R()Ljava/lang/String;

    move-result-object v6

    .line 43
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_12b
    const/4 v6, 0x2

    .line 44
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/ads/zzfjl;->k(I)Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object v6

    if-eqz v6, :cond_139

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzasu;->R()Ljava/lang/String;

    move-result-object v6

    .line 45
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_139
    new-instance v6, Ljava/io/File;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzfjl;->a:Landroid/content/Context;

    const-string v9, "pccache"

    .line 46
    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzfjl;->c:Ljava/lang/String;

    invoke-direct {v6, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    :goto_14d
    if-ge v8, v7, :cond_161

    aget-object v9, v6, v8

    .line 48
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_15e

    .line 49
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzfjf;->d(Ljava/io/File;)Z

    :cond_15e
    add-int/lit8 v8, v8, 0x1

    goto :goto_14d

    :cond_161
    const/16 v0, 0x1396

    .line 50
    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzfjl;->i(IJ)V

    .line 51
    monitor-exit v4

    return v5

    :catchall_168
    move-exception v0

    .line 52
    monitor-exit v4
    :try_end_16a
    .catchall {:try_start_c .. :try_end_16a} :catchall_168

    goto :goto_16c

    :goto_16b
    throw v0

    :goto_16c
    goto :goto_16b
.end method

.method public final c(I)Lcom/google/android/gms/internal/ads/zzfjd;
    .registers 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzfjl;->f:Ljava/lang/Object;

    monitor-enter p1

    const/4 v2, 0x1

    .line 2
    :try_start_8
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzfjl;->k(I)Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object v2

    if-nez v2, :cond_16

    const/16 v2, 0xfb6

    .line 3
    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfjl;->i(IJ)V

    .line 4
    monitor-exit p1

    const/4 p1, 0x0

    return-object p1

    :cond_16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzasu;->R()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzfjl;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    const-string v5, "pcam.jar"

    .line 6
    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_32

    new-instance v4, Ljava/io/File;

    const-string v5, "pcam"

    .line 8
    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_32
    new-instance v5, Ljava/io/File;

    const-string v6, "pcbc"

    .line 9
    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    const-string v7, "pcopt"

    .line 10
    invoke-direct {v6, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v3, 0x1398

    .line 11
    invoke-direct {p0, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzfjl;->i(IJ)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfjd;

    invoke-direct {v0, v2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzfjd;-><init>(Lcom/google/android/gms/internal/ads/zzasu;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    .line 12
    monitor-exit p1

    return-object v0

    :catchall_4c
    move-exception v0

    .line 13
    monitor-exit p1
    :try_end_4e
    .catchall {:try_start_8 .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method public final d(I)Z
    .registers 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzfjl;->f:Ljava/lang/Object;

    monitor-enter p1

    const/4 v2, 0x1

    .line 2
    :try_start_8
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzfjl;->k(I)Lcom/google/android/gms/internal/ads/zzasu;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_16

    const/16 v2, 0xfb9

    .line 3
    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfjl;->i(IJ)V

    .line 4
    monitor-exit p1

    return v4

    :cond_16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzasu;->R()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzfjl;->e(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    const-string v6, "pcam.jar"

    .line 6
    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_32

    const/16 v2, 0xfba

    .line 8
    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfjl;->i(IJ)V

    .line 9
    monitor-exit p1

    return v4

    :cond_32
    new-instance v5, Ljava/io/File;

    const-string v6, "pcbc"

    .line 10
    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_46

    const/16 v2, 0xfbb

    .line 12
    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfjl;->i(IJ)V

    .line 13
    monitor-exit p1

    return v4

    :cond_46
    const/16 v3, 0x139b

    .line 14
    invoke-direct {p0, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzfjl;->i(IJ)V

    .line 15
    monitor-exit p1

    return v2

    :catchall_4d
    move-exception v0

    .line 16
    monitor-exit p1
    :try_end_4f
    .catchall {:try_start_8 .. :try_end_4f} :catchall_4d

    throw v0
.end method
