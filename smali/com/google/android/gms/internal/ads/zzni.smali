###### Class com.google.android.gms.internal.ads.zzni (com.google.android.gms.internal.ads.zzni)
.class public final Lcom/google/android/gms/internal/ads/zzni;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zznm;


# static fields
.field public static final h:Lcom/google/android/gms/internal/ads/zzfok;

.field private static final i:Ljava/util/Random;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzcm;

.field private final b:Lcom/google/android/gms/internal/ads/zzck;

.field private final c:Ljava/util/HashMap;

.field private final d:Lcom/google/android/gms/internal/ads/zzfok;

.field private e:Lcom/google/android/gms/internal/ads/zznl;

.field private f:Lcom/google/android/gms/internal/ads/zzcn;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzng;->o:Lcom/google/android/gms/internal/ads/zzng;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzni;->h:Lcom/google/android/gms/internal/ads/zzfok;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzni;->i:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    throw v0
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfok;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzni;->d:Lcom/google/android/gms/internal/ads/zzfok;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzcm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzni;->a:Lcom/google/android/gms/internal/ads/zzcm;

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzck;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzck;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzni;->b:Lcom/google/android/gms/internal/ads/zzck;

    new-instance p1, Ljava/util/HashMap;

    .line 4
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzni;->c:Ljava/util/HashMap;

    .line 5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcn;->a:Lcom/google/android/gms/internal/ads/zzcn;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzni;->f:Lcom/google/android/gms/internal/ads/zzcn;

    return-void
.end method

.method static bridge synthetic h(Lcom/google/android/gms/internal/ads/zzni;)Lcom/google/android/gms/internal/ads/zzck;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzni;->b:Lcom/google/android/gms/internal/ads/zzck;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/google/android/gms/internal/ads/zzni;)Lcom/google/android/gms/internal/ads/zzcm;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzni;->a:Lcom/google/android/gms/internal/ads/zzcm;

    return-object p0
.end method

.method public static synthetic j()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzni;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final k(ILcom/google/android/gms/internal/ads/zzss;)Lcom/google/android/gms/internal/ads/zznh;
    .registers 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzni;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, 0x0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zznh;

    .line 2
    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/internal/ads/zznh;->g(ILcom/google/android/gms/internal/ads/zzss;)V

    .line 3
    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/internal/ads/zznh;->j(ILcom/google/android/gms/internal/ads/zzss;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 4
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zznh;->b(Lcom/google/android/gms/internal/ads/zznh;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-eqz v9, :cond_48

    cmp-long v7, v5, v1

    if-gez v7, :cond_34

    goto :goto_48

    :cond_34
    cmp-long v7, v5, v1

    if-nez v7, :cond_10

    .line 5
    sget v5, Lcom/google/android/gms/internal/ads/zzew;->a:I

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zznh;->c(Lcom/google/android/gms/internal/ads/zznh;)Lcom/google/android/gms/internal/ads/zzss;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zznh;->c(Lcom/google/android/gms/internal/ads/zznh;)Lcom/google/android/gms/internal/ads/zzss;

    move-result-object v5

    if-eqz v5, :cond_10

    move-object v3, v4

    goto :goto_10

    :cond_48
    :goto_48
    move-object v3, v4

    move-wide v1, v5

    goto :goto_10

    :cond_4b
    if-nez v3, :cond_5c

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzni;->l()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zznh;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zznh;-><init>(Lcom/google/android/gms/internal/ads/zzni;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzss;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzni;->c:Ljava/util/HashMap;

    .line 7
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_5c
    return-object v3
.end method

.method private static l()Ljava/lang/String;
    .registers 2

    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzni;->i:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    const/16 v1, 0xa

    .line 2
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final m(Lcom/google/android/gms/internal/ads/zzlc;)V
    .registers 9
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "listener"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzlc;->b:Lcom/google/android/gms/internal/ads/zzcn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcn;->o()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzni;->g:Ljava/lang/String;

    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzni;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzni;->g:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zznh;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzlc;->c:I

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzlc;->d:Lcom/google/android/gms/internal/ads/zzss;

    .line 3
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzni;->k(ILcom/google/android/gms/internal/ads/zzss;)Lcom/google/android/gms/internal/ads/zznh;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zznh;->d(Lcom/google/android/gms/internal/ads/zznh;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzni;->g:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzni;->f(Lcom/google/android/gms/internal/ads/zzlc;)V

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzlc;->d:Lcom/google/android/gms/internal/ads/zzss;

    if-eqz v2, :cond_74

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbn;->b()Z

    move-result v2

    if-eqz v2, :cond_74

    if-eqz v0, :cond_5d

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznh;->b(Lcom/google/android/gms/internal/ads/zznh;)J

    move-result-wide v2

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzlc;->d:Lcom/google/android/gms/internal/ads/zzss;

    iget-wide v4, v4, Lcom/google/android/gms/internal/ads/zzbn;->d:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_5d

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznh;->c(Lcom/google/android/gms/internal/ads/zznh;)Lcom/google/android/gms/internal/ads/zzss;

    move-result-object v2

    if-eqz v2, :cond_5d

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznh;->c(Lcom/google/android/gms/internal/ads/zznh;)Lcom/google/android/gms/internal/ads/zzss;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbn;->b:I

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzlc;->d:Lcom/google/android/gms/internal/ads/zzss;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzbn;->b:I

    if-ne v2, v3, :cond_5d

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznh;->c(Lcom/google/android/gms/internal/ads/zznh;)Lcom/google/android/gms/internal/ads/zzss;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbn;->c:I

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzlc;->d:Lcom/google/android/gms/internal/ads/zzss;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbn;->c:I

    if-eq v0, v2, :cond_74

    :cond_5d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzss;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzlc;->d:Lcom/google/android/gms/internal/ads/zzss;

    .line 7
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzbn;->d:J

    invoke-direct {v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzss;-><init>(Ljava/lang/Object;J)V

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzlc;->c:I

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzni;->k(ILcom/google/android/gms/internal/ads/zzss;)Lcom/google/android/gms/internal/ads/zznh;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zznh;->d(Lcom/google/android/gms/internal/ads/zznh;)Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zznh;->d(Lcom/google/android/gms/internal/ads/zznh;)Ljava/lang/String;

    :cond_74
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/zzlc;)V
    .registers 7

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzni;->e:Lcom/google/android/gms/internal/ads/zznl;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_58

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzni;->f:Lcom/google/android/gms/internal/ads/zzcn;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzlc;->b:Lcom/google/android/gms/internal/ads/zzcn;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzni;->f:Lcom/google/android/gms/internal/ads/zzcn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzni;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4
    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zznh;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzni;->f:Lcom/google/android/gms/internal/ads/zzcn;

    .line 6
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zznh;->l(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzcn;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 7
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zznh;->k(Lcom/google/android/gms/internal/ads/zzlc;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 8
    :cond_30
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zznh;->i(Lcom/google/android/gms/internal/ads/zznh;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 10
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zznh;->d(Lcom/google/android/gms/internal/ads/zznh;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzni;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzni;->g:Ljava/lang/String;

    :cond_48
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzni;->e:Lcom/google/android/gms/internal/ads/zznl;

    .line 11
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zznh;->d(Lcom/google/android/gms/internal/ads/zznh;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v3, p1, v2, v4}, Lcom/google/android/gms/internal/ads/zznl;->k(Lcom/google/android/gms/internal/ads/zzlc;Ljava/lang/String;Z)V

    goto :goto_16

    .line 12
    :cond_53
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzni;->m(Lcom/google/android/gms/internal/ads/zzlc;)V
    :try_end_56
    .catchall {:try_start_6 .. :try_end_56} :catchall_58

    monitor-exit p0

    return-void

    :catchall_58
    move-exception p1

    monitor-exit p0

    goto :goto_5c

    :goto_5b
    throw p1

    :goto_5c
    goto :goto_5b
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zznl;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzni;->e:Lcom/google/android/gms/internal/ads/zznl;

    return-void
.end method

.method public final declared-synchronized c(Lcom/google/android/gms/internal/ads/zzlc;I)V
    .registers 8

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzni;->e:Lcom/google/android/gms/internal/ads/zznl;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_55

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzni;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zznh;

    .line 6
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zznh;->k(Lcom/google/android/gms/internal/ads/zzlc;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 8
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zznh;->i(Lcom/google/android/gms/internal/ads/zznh;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zznh;->d(Lcom/google/android/gms/internal/ads/zznh;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzni;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez p2, :cond_41

    if-eqz v2, :cond_41

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zznh;->h(Lcom/google/android/gms/internal/ads/zznh;)Z

    move-result v4

    if-eqz v4, :cond_41

    const/4 v3, 0x1

    :cond_41
    if-eqz v2, :cond_46

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzni;->g:Ljava/lang/String;

    :cond_46
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzni;->e:Lcom/google/android/gms/internal/ads/zznl;

    .line 11
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zznh;->d(Lcom/google/android/gms/internal/ads/zznh;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p1, v1, v3}, Lcom/google/android/gms/internal/ads/zznl;->k(Lcom/google/android/gms/internal/ads/zzlc;Ljava/lang/String;Z)V

    goto :goto_10

    .line 12
    :cond_50
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzni;->m(Lcom/google/android/gms/internal/ads/zzlc;)V
    :try_end_53
    .catchall {:try_start_6 .. :try_end_53} :catchall_55

    monitor-exit p0

    return-void

    :catchall_55
    move-exception p1

    monitor-exit p0

    goto :goto_59

    :goto_58
    throw p1

    :goto_59
    goto :goto_58
.end method

.method public final declared-synchronized d()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzni;->g:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e(Lcom/google/android/gms/internal/ads/zzlc;)V
    .registers 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzni;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzni;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zznh;

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zznh;->i(Lcom/google/android/gms/internal/ads/zznh;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzni;->e:Lcom/google/android/gms/internal/ads/zznl;

    if-eqz v2, :cond_e

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zznh;->d(Lcom/google/android/gms/internal/ads/zznh;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v2, p1, v1, v3}, Lcom/google/android/gms/internal/ads/zznl;->k(Lcom/google/android/gms/internal/ads/zzlc;Ljava/lang/String;Z)V
    :try_end_2f
    .catchall {:try_start_2 .. :try_end_2f} :catchall_32

    goto :goto_e

    :cond_30
    monitor-exit p0

    return-void

    :catchall_32
    move-exception p1

    monitor-exit p0

    goto :goto_36

    :goto_35
    throw p1

    :goto_36
    goto :goto_35
.end method

.method public final declared-synchronized f(Lcom/google/android/gms/internal/ads/zzlc;)V
    .registers 11

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzni;->e:Lcom/google/android/gms/internal/ads/zznl;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_cb

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :try_start_6
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzlc;->b:Lcom/google/android/gms/internal/ads/zzcn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcn;->o()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_cb

    if-eqz v0, :cond_10

    monitor-exit p0

    return-void

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzni;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzni;->g:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zznh;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzlc;->d:Lcom/google/android/gms/internal/ads/zzss;

    if-eqz v1, :cond_41

    if-eqz v0, :cond_41

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznh;->b(Lcom/google/android/gms/internal/ads/zznh;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_33

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznh;->a(Lcom/google/android/gms/internal/ads/zznh;)I

    move-result v0

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzlc;->c:I

    if-ne v0, v1, :cond_3f

    goto :goto_41

    .line 6
    :cond_33
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzlc;->d:Lcom/google/android/gms/internal/ads/zzss;

    .line 7
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzbn;->d:J

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznh;->b(Lcom/google/android/gms/internal/ads/zznh;)J

    move-result-wide v3
    :try_end_3b
    .catchall {:try_start_10 .. :try_end_3b} :catchall_cb

    cmp-long v0, v1, v3

    if-gez v0, :cond_41

    .line 8
    :cond_3f
    monitor-exit p0

    return-void

    .line 9
    :cond_41
    :goto_41
    :try_start_41
    iget v0, p1, Lcom/google/android/gms/internal/ads/zzlc;->c:I

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzlc;->d:Lcom/google/android/gms/internal/ads/zzss;

    .line 10
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzni;->k(ILcom/google/android/gms/internal/ads/zzss;)Lcom/google/android/gms/internal/ads/zznh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzni;->g:Ljava/lang/String;

    if-nez v1, :cond_53

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznh;->d(Lcom/google/android/gms/internal/ads/zznh;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzni;->g:Ljava/lang/String;

    :cond_53
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzlc;->d:Lcom/google/android/gms/internal/ads/zzss;

    const/4 v2, 0x1

    if-eqz v1, :cond_9d

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbn;->b()Z

    move-result v3

    if-eqz v3, :cond_9d

    new-instance v3, Lcom/google/android/gms/internal/ads/zzss;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzbn;->d:J

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzbn;->b:I

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/google/android/gms/internal/ads/zzss;-><init>(Ljava/lang/Object;JI)V

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzlc;->c:I

    .line 12
    invoke-direct {p0, v1, v3}, Lcom/google/android/gms/internal/ads/zzni;->k(ILcom/google/android/gms/internal/ads/zzss;)Lcom/google/android/gms/internal/ads/zznh;

    move-result-object v1

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zznh;->i(Lcom/google/android/gms/internal/ads/zznh;)Z

    move-result v3

    if-nez v3, :cond_9d

    .line 14
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zznh;->f(Lcom/google/android/gms/internal/ads/zznh;Z)V

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzlc;->b:Lcom/google/android/gms/internal/ads/zzcn;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzlc;->d:Lcom/google/android/gms/internal/ads/zzss;

    .line 15
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzni;->b:Lcom/google/android/gms/internal/ads/zzck;

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzcn;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzck;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzni;->b:Lcom/google/android/gms/internal/ads/zzck;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzlc;->d:Lcom/google/android/gms/internal/ads/zzss;

    .line 16
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzbn;->b:I

    .line 17
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzck;->h(I)J

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzew;->k0(J)J

    move-result-wide v5

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzew;->k0(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 18
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 19
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zznh;->d(Lcom/google/android/gms/internal/ads/zznh;)Ljava/lang/String;

    .line 20
    :cond_9d
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznh;->i(Lcom/google/android/gms/internal/ads/zznh;)Z

    move-result v1

    if-nez v1, :cond_a9

    .line 21
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zznh;->f(Lcom/google/android/gms/internal/ads/zznh;Z)V

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznh;->d(Lcom/google/android/gms/internal/ads/zznh;)Ljava/lang/String;

    .line 23
    :cond_a9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznh;->d(Lcom/google/android/gms/internal/ads/zznh;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzni;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznh;->h(Lcom/google/android/gms/internal/ads/zznh;)Z

    move-result v1

    if-nez v1, :cond_c9

    .line 24
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zznh;->e(Lcom/google/android/gms/internal/ads/zznh;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzni;->e:Lcom/google/android/gms/internal/ads/zznl;

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zznh;->d(Lcom/google/android/gms/internal/ads/zznh;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zznl;->h(Lcom/google/android/gms/internal/ads/zzlc;Ljava/lang/String;)V
    :try_end_c7
    .catchall {:try_start_41 .. :try_end_c7} :catchall_cb

    monitor-exit p0

    return-void

    :cond_c9
    monitor-exit p0

    return-void

    :catchall_cb
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized g(Lcom/google/android/gms/internal/ads/zzcn;Lcom/google/android/gms/internal/ads/zzss;)Ljava/lang/String;
    .registers 5

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzbn;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzni;->b:Lcom/google/android/gms/internal/ads/zzck;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcn;->n(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzck;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzck;->c:I

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzni;->k(ILcom/google/android/gms/internal/ads/zzss;)Lcom/google/android/gms/internal/ads/zznh;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zznh;->d(Lcom/google/android/gms/internal/ads/zznh;)Ljava/lang/String;

    move-result-object p1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object p1

    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

###### Class com.google.android.gms.internal.ads.zzng (com.google.android.gms.internal.ads.zzng)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzng;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfok;


# static fields
.field public static final synthetic o:Lcom/google/android/gms/internal/ads/zzng;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzng;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzng;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzng;->o:Lcom/google/android/gms/internal/ads/zzng;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzni;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
