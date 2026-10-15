###### Class com.google.android.gms.internal.ads.zzfn (com.google.android.gms.internal.ads.zzfn)
.class public final Lcom/google/android/gms/internal/ads/zzfn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfg;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;

.field private final c:Lcom/google/android/gms/internal/ads/zzfg;

.field private d:Lcom/google/android/gms/internal/ads/zzfg;

.field private e:Lcom/google/android/gms/internal/ads/zzfg;

.field private f:Lcom/google/android/gms/internal/ads/zzfg;

.field private g:Lcom/google/android/gms/internal/ads/zzfg;

.field private h:Lcom/google/android/gms/internal/ads/zzfg;

.field private i:Lcom/google/android/gms/internal/ads/zzfg;

.field private j:Lcom/google/android/gms/internal/ads/zzfg;

.field private k:Lcom/google/android/gms/internal/ads/zzfg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfg;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfn;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfn;->c:Lcom/google/android/gms/internal/ads/zzfg;

    new-instance p1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfn;->b:Ljava/util/List;

    return-void
.end method

.method private final n()Lcom/google/android/gms/internal/ads/zzfg;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->e:Lcom/google/android/gms/internal/ads/zzfg;

    if-nez v0, :cond_10

    new-instance v0, Lcom/google/android/gms/internal/ads/zzez;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfn;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzez;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->e:Lcom/google/android/gms/internal/ads/zzfg;

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfn;->o(Lcom/google/android/gms/internal/ads/zzfg;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->e:Lcom/google/android/gms/internal/ads/zzfg;

    return-object v0
.end method

.method private final o(Lcom/google/android/gms/internal/ads/zzfg;)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfn;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfn;->b:Ljava/util/List;

    .line 2
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgi;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzfg;->f(Lcom/google/android/gms/internal/ads/zzgi;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method private static final p(Lcom/google/android/gms/internal/ads/zzfg;Lcom/google/android/gms/internal/ads/zzgi;)V
    .registers 2

    if-eqz p0, :cond_5

    .line 1
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzfg;->f(Lcom/google/android/gms/internal/ads/zzgi;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final a()Landroid/net/Uri;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->k:Lcom/google/android/gms/internal/ads/zzfg;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfg;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->k:Lcom/google/android/gms/internal/ads/zzfg;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfg;->b()Ljava/util/Map;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public final d()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->k:Lcom/google/android/gms/internal/ads/zzfg;

    if-eqz v0, :cond_f

    const/4 v1, 0x0

    :try_start_5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfg;->d()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_b

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfn;->k:Lcom/google/android/gms/internal/ads/zzfg;

    return-void

    :catchall_b
    move-exception v0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfn;->k:Lcom/google/android/gms/internal/ads/zzfg;

    .line 2
    throw v0

    :cond_f
    return-void
.end method

.method public final e([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->k:Lcom/google/android/gms/internal/ads/zzfg;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzr;->e([BII)I

    move-result p1

    return p1
.end method

.method public final f(Lcom/google/android/gms/internal/ads/zzgi;)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->c:Lcom/google/android/gms/internal/ads/zzfg;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfg;->f(Lcom/google/android/gms/internal/ads/zzgi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->b:Ljava/util/List;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->d:Lcom/google/android/gms/internal/ads/zzfg;

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfn;->p(Lcom/google/android/gms/internal/ads/zzfg;Lcom/google/android/gms/internal/ads/zzgi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->e:Lcom/google/android/gms/internal/ads/zzfg;

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfn;->p(Lcom/google/android/gms/internal/ads/zzfg;Lcom/google/android/gms/internal/ads/zzgi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->f:Lcom/google/android/gms/internal/ads/zzfg;

    .line 6
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfn;->p(Lcom/google/android/gms/internal/ads/zzfg;Lcom/google/android/gms/internal/ads/zzgi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->g:Lcom/google/android/gms/internal/ads/zzfg;

    .line 7
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfn;->p(Lcom/google/android/gms/internal/ads/zzfg;Lcom/google/android/gms/internal/ads/zzgi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->h:Lcom/google/android/gms/internal/ads/zzfg;

    .line 8
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfn;->p(Lcom/google/android/gms/internal/ads/zzfg;Lcom/google/android/gms/internal/ads/zzgi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->i:Lcom/google/android/gms/internal/ads/zzfg;

    .line 9
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfn;->p(Lcom/google/android/gms/internal/ads/zzfg;Lcom/google/android/gms/internal/ads/zzgi;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->j:Lcom/google/android/gms/internal/ads/zzfg;

    .line 10
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfn;->p(Lcom/google/android/gms/internal/ads/zzfg;Lcom/google/android/gms/internal/ads/zzgi;)V

    return-void
.end method

.method public final j(Lcom/google/android/gms/internal/ads/zzfl;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->k:Lcom/google/android/gms/internal/ads/zzfg;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfl;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzfl;->a:Landroid/net/Uri;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzew;->x(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfl;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    const-string v1, "/android_asset/"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfn;->n()Lcom/google/android/gms/internal/ads/zzfg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->k:Lcom/google/android/gms/internal/ads/zzfg;

    goto/16 :goto_116

    .line 7
    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->d:Lcom/google/android/gms/internal/ads/zzfg;

    if-nez v0, :cond_3f

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfw;

    .line 8
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->d:Lcom/google/android/gms/internal/ads/zzfg;

    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfn;->o(Lcom/google/android/gms/internal/ads/zzfg;)V

    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->d:Lcom/google/android/gms/internal/ads/zzfg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->k:Lcom/google/android/gms/internal/ads/zzfg;

    goto/16 :goto_116

    :cond_45
    const-string v2, "asset"

    .line 10
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfn;->n()Lcom/google/android/gms/internal/ads/zzfg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->k:Lcom/google/android/gms/internal/ads/zzfg;

    goto/16 :goto_116

    :cond_55
    const-string v2, "content"

    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->f:Lcom/google/android/gms/internal/ads/zzfg;

    if-nez v0, :cond_6d

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfn;->a:Landroid/content/Context;

    .line 13
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->f:Lcom/google/android/gms/internal/ads/zzfg;

    .line 14
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfn;->o(Lcom/google/android/gms/internal/ads/zzfg;)V

    :cond_6d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->f:Lcom/google/android/gms/internal/ads/zzfg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->k:Lcom/google/android/gms/internal/ads/zzfg;

    goto/16 :goto_116

    :cond_73
    const-string v2, "rtmp"

    .line 15
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->g:Lcom/google/android/gms/internal/ads/zzfg;

    if-nez v0, :cond_b1

    :try_start_7f
    const-string v0, "androidx.media3.datasource.rtmp.RtmpDataSource"

    .line 16
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Class;

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->g:Lcom/google/android/gms/internal/ads/zzfg;

    .line 18
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfn;->o(Lcom/google/android/gms/internal/ads/zzfg;)V
    :try_end_98
    .catch Ljava/lang/ClassNotFoundException; {:try_start_7f .. :try_end_98} :catch_a2
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_98} :catch_99

    goto :goto_a9

    :catch_99
    move-exception p1

    .line 19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error instantiating RTMP extension"

    .line 20
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_a2
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    .line 21
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzee;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :goto_a9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->g:Lcom/google/android/gms/internal/ads/zzfg;

    if-nez v0, :cond_b1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->c:Lcom/google/android/gms/internal/ads/zzfg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->g:Lcom/google/android/gms/internal/ads/zzfg;

    :cond_b1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->g:Lcom/google/android/gms/internal/ads/zzfg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->k:Lcom/google/android/gms/internal/ads/zzfg;

    goto :goto_116

    :cond_b6
    const-string v1, "udp"

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->h:Lcom/google/android/gms/internal/ads/zzfg;

    if-nez v0, :cond_ce

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgk;

    const/16 v1, 0x7d0

    .line 24
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgk;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->h:Lcom/google/android/gms/internal/ads/zzfg;

    .line 25
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfn;->o(Lcom/google/android/gms/internal/ads/zzfg;)V

    :cond_ce
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->h:Lcom/google/android/gms/internal/ads/zzfg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->k:Lcom/google/android/gms/internal/ads/zzfg;

    goto :goto_116

    :cond_d3
    const-string v1, "data"

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ee

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->i:Lcom/google/android/gms/internal/ads/zzfg;

    if-nez v0, :cond_e9

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfe;

    .line 27
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfe;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->i:Lcom/google/android/gms/internal/ads/zzfg;

    .line 28
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfn;->o(Lcom/google/android/gms/internal/ads/zzfg;)V

    :cond_e9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->i:Lcom/google/android/gms/internal/ads/zzfg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->k:Lcom/google/android/gms/internal/ads/zzfg;

    goto :goto_116

    :cond_ee
    const-string v1, "rawresource"

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_102

    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ff

    goto :goto_102

    .line 30
    :cond_ff
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->c:Lcom/google/android/gms/internal/ads/zzfg;

    goto :goto_114

    .line 31
    :cond_102
    :goto_102
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->j:Lcom/google/android/gms/internal/ads/zzfg;

    if-nez v0, :cond_112

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfn;->a:Landroid/content/Context;

    .line 32
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgg;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->j:Lcom/google/android/gms/internal/ads/zzfg;

    .line 33
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfn;->o(Lcom/google/android/gms/internal/ads/zzfg;)V

    :cond_112
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->j:Lcom/google/android/gms/internal/ads/zzfg;

    :goto_114
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->k:Lcom/google/android/gms/internal/ads/zzfg;

    .line 34
    :goto_116
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfn;->k:Lcom/google/android/gms/internal/ads/zzfg;

    .line 35
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfg;->j(Lcom/google/android/gms/internal/ads/zzfl;)J

    move-result-wide v0

    return-wide v0
.end method
