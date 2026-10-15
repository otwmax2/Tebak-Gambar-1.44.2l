###### Class com.google.android.gms.internal.ads.zzfak (com.google.android.gms.internal.ads.zzfak)
.class final Lcom/google/android/gms/internal/ads/zzfak;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfaj;


# instance fields
.field private final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/zzfaq;

.field private final c:Lcom/google/android/gms/internal/ads/zzfam;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfaq;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzfaq;->t:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfak;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfak;->b:Lcom/google/android/gms/internal/ads/zzfaq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfam;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfam;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfak;->c:Lcom/google/android/gms/internal/ads/zzfam;

    return-void
.end method

.method private final e()V
    .registers 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfaq;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbar;->U5:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c9

    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfak;->b:Lcom/google/android/gms/internal/ads/zzfaq;

    .line 6
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfaq;->r:Lcom/google/android/gms/internal/ads/zzfan;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " PoolCollection"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfak;->c:Lcom/google/android/gms/internal/ads/zzfam;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfam;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfak;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    add-int/lit8 v3, v3, 0x1

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ". "

    .line 11
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "#"

    .line 13
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzfat;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "    "

    .line 15
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    .line 16
    :goto_6f
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzfai;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfai;->b()I

    move-result v6

    if-ge v5, v6, :cond_83

    const-string v6, "[O]"

    .line 17
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_6f

    .line 18
    :cond_83
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzfai;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfai;->b()I

    move-result v5

    :goto_8d
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzfak;->b:Lcom/google/android/gms/internal/ads/zzfaq;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzfaq;->t:I

    if-ge v5, v6, :cond_9b

    const-string v6, "[ ]"

    .line 19
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_8d

    :cond_9b
    const-string v5, "\n"

    .line 20
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfai;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfai;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3a

    :cond_b1
    :goto_b1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfak;->b:Lcom/google/android/gms/internal/ads/zzfaq;

    .line 23
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfaq;->s:I

    if-ge v3, v1, :cond_c2

    add-int/lit8 v3, v3, 0x1

    .line 24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".\n"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b1

    :cond_c2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbza;->b(Ljava/lang/String;)V

    :cond_c9
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/zzfat;)Z
    .registers 4

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfak;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfai;

    const/4 v0, 0x1

    if-eqz p1, :cond_1b

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfai;->b()I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfak;->b:Lcom/google/android/gms/internal/ads/zzfaq;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfaq;->t:I
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1d

    if-ge p1, v1, :cond_18

    monitor-exit p0

    return v0

    :cond_18
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :cond_1b
    monitor-exit p0

    return v0

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lcom/google/android/gms/internal/ads/zzfat;)Lcom/google/android/gms/internal/ads/zzfas;
    .registers 7

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfak;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfai;

    if-eqz p1, :cond_53

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfai;->e()Lcom/google/android/gms/internal/ads/zzfas;

    move-result-object v0

    if-nez v0, :cond_16

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfak;->c:Lcom/google/android/gms/internal/ads/zzfam;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfam;->e()V

    .line 4
    :cond_16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfai;->f()Lcom/google/android/gms/internal/ads/zzfbg;

    move-result-object p1

    if-eqz v0, :cond_4f

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzawz;->I()Lcom/google/android/gms/internal/ads/zzawt;

    move-result-object v1

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaws;->I()Lcom/google/android/gms/internal/ads/zzawr;

    move-result-object v2

    const/4 v3, 0x2

    .line 7
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzawr;->r(I)Lcom/google/android/gms/internal/ads/zzawr;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaww;->I()Lcom/google/android/gms/internal/ads/zzawv;

    move-result-object v3

    iget-boolean v4, p1, Lcom/google/android/gms/internal/ads/zzfbg;->o:Z

    .line 9
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzawv;->o(Z)Lcom/google/android/gms/internal/ads/zzawv;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzfbg;->p:I

    .line 10
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzawv;->p(I)Lcom/google/android/gms/internal/ads/zzawv;

    .line 11
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzawr;->o(Lcom/google/android/gms/internal/ads/zzawv;)Lcom/google/android/gms/internal/ads/zzawr;

    .line 12
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzawt;->o(Lcom/google/android/gms/internal/ads/zzawr;)Lcom/google/android/gms/internal/ads/zzawt;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzawz;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfas;->a:Lcom/google/android/gms/internal/ads/zzctw;

    .line 14
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzctw;->zzb()Lcom/google/android/gms/internal/ads/zzcrt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcrt;->c()Lcom/google/android/gms/internal/ads/zzczt;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzczt;->f(Lcom/google/android/gms/internal/ads/zzawz;)V

    .line 15
    :cond_4f
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfak;->e()V

    goto :goto_5c

    :cond_53
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfak;->c:Lcom/google/android/gms/internal/ads/zzfam;

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfam;->f()V

    .line 17
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfak;->e()V
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_5e

    const/4 v0, 0x0

    .line 18
    :goto_5c
    monitor-exit p0

    return-object v0

    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Lcom/google/android/gms/internal/ads/zzfat;Lcom/google/android/gms/internal/ads/zzfas;)Z
    .registers 13

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfak;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfai;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v1

    iput-wide v1, p2, Lcom/google/android/gms/internal/ads/zzfas;->d:J

    const/4 v1, 0x2

    if-nez v0, :cond_111

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfai;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfak;->b:Lcom/google/android/gms/internal/ads/zzfaq;

    .line 3
    iget v3, v2, Lcom/google/android/gms/internal/ads/zzfaq;->t:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzfaq;->u:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzfai;-><init>(II)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfak;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfak;->b:Lcom/google/android/gms/internal/ads/zzfaq;

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzfaq;->s:I

    if-ne v2, v4, :cond_107

    .line 5
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzfaq;->A:I

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_106

    const-wide v5, 0x7fffffffffffffffL

    if-eqz v3, :cond_c2

    const/4 v2, 0x1

    if-eq v3, v2, :cond_83

    if-eq v3, v1, :cond_44

    goto/16 :goto_100

    .line 6
    :cond_44
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfak;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const v3, 0x7fffffff

    :cond_51
    :goto_51
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzfai;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfai;->a()I

    move-result v6

    if-ge v6, v3, :cond_51

    .line 9
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfai;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfai;->a()I

    move-result v3

    .line 10
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfat;

    goto :goto_51

    :cond_7a
    if-eqz v4, :cond_100

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfak;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_100

    .line 12
    :cond_83
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfak;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8d
    :goto_8d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ba

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzfai;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfai;->d()J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-gez v9, :cond_8d

    .line 15
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfai;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfai;->d()J

    move-result-wide v4

    .line 16
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfat;

    move-wide v5, v4

    move-object v4, v3

    goto :goto_8d

    :cond_ba
    if-eqz v4, :cond_100

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfak;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_100

    .line 18
    :cond_c2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfak;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_cc
    :goto_cc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzfai;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzfai;->c()J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-gez v9, :cond_cc

    .line 21
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfai;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfai;->c()J

    move-result-wide v4

    .line 22
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfat;

    move-wide v5, v4

    move-object v4, v3

    goto :goto_cc

    :cond_f9
    if-eqz v4, :cond_100

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfak;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_100
    :goto_100
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfak;->c:Lcom/google/android/gms/internal/ads/zzfam;

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfam;->g()V

    goto :goto_107

    .line 26
    :cond_106
    throw v4

    .line 27
    :cond_107
    :goto_107
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfak;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfak;->c:Lcom/google/android/gms/internal/ads/zzfam;

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfam;->d()V

    .line 30
    :cond_111
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzfai;->h(Lcom/google/android/gms/internal/ads/zzfas;)Z

    move-result p1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfak;->c:Lcom/google/android/gms/internal/ads/zzfam;

    .line 31
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfam;->c()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfak;->c:Lcom/google/android/gms/internal/ads/zzfam;

    .line 32
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfam;->a()Lcom/google/android/gms/internal/ads/zzfal;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfai;->f()Lcom/google/android/gms/internal/ads/zzfbg;

    move-result-object v0

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzawz;->I()Lcom/google/android/gms/internal/ads/zzawt;

    move-result-object v3

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaws;->I()Lcom/google/android/gms/internal/ads/zzawr;

    move-result-object v4

    .line 35
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzawr;->r(I)Lcom/google/android/gms/internal/ads/zzawr;

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzawy;->I()Lcom/google/android/gms/internal/ads/zzawx;

    move-result-object v1

    iget-boolean v5, v2, Lcom/google/android/gms/internal/ads/zzfal;->o:Z

    .line 37
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzawx;->o(Z)Lcom/google/android/gms/internal/ads/zzawx;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzfal;->p:Z

    .line 38
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzawx;->p(Z)Lcom/google/android/gms/internal/ads/zzawx;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfbg;->p:I

    .line 39
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzawx;->q(I)Lcom/google/android/gms/internal/ads/zzawx;

    .line 40
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzawr;->q(Lcom/google/android/gms/internal/ads/zzawx;)Lcom/google/android/gms/internal/ads/zzawr;

    .line 41
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzawt;->o(Lcom/google/android/gms/internal/ads/zzawr;)Lcom/google/android/gms/internal/ads/zzawt;

    .line 42
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzawz;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfas;->a:Lcom/google/android/gms/internal/ads/zzctw;

    .line 43
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzctw;->zzb()Lcom/google/android/gms/internal/ads/zzcrt;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcrt;->c()Lcom/google/android/gms/internal/ads/zzczt;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzczt;->v0(Lcom/google/android/gms/internal/ads/zzawz;)V

    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfak;->e()V
    :try_end_15e
    .catchall {:try_start_1 .. :try_end_15e} :catchall_160

    monitor-exit p0

    return p1

    :catchall_160
    move-exception p1

    monitor-exit p0

    goto :goto_164

    :goto_163
    throw p1

    :goto_164
    goto :goto_163
.end method

.method public final d(Lcom/google/android/gms/ads/internal/client/zzl;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzw;)Lcom/google/android/gms/internal/ads/zzfat;
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbtr;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfak;->b:Lcom/google/android/gms/internal/ads/zzfaq;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfaq;->p:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzbtr;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbtr;->a()Lcom/google/android/gms/internal/ads/zzbts;

    move-result-object v0

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzbts;->k:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfau;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfak;->b:Lcom/google/android/gms/internal/ads/zzfaq;

    .line 2
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzfaq;->v:Ljava/lang/String;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfau;-><init>(Lcom/google/android/gms/ads/internal/client/zzl;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zzw;)V

    return-object v0
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzfaq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfak;->b:Lcom/google/android/gms/internal/ads/zzfaq;

    return-object v0
.end method
