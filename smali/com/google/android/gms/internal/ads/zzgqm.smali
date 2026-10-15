###### Class com.google.android.gms.internal.ads.zzgqm (com.google.android.gms.internal.ads.zzgqm)
.class public abstract Lcom/google/android/gms/internal/ads/zzgqm;
.super Lcom/google/android/gms/internal/ads/zzgon;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzgqm<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/ads/zzgqi<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/ads/zzgon<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static final zzb:Ljava/util/Map;


# instance fields
.field protected zzc:Lcom/google/android/gms/internal/ads/zzgth;

.field private zzd:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgqm;->zzb:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgon;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgqm;->zzd:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgth;->c()Lcom/google/android/gms/internal/ads/zzgth;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqm;->zzc:Lcom/google/android/gms/internal/ads/zzgth;

    return-void
.end method

.method protected static A(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgqm;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqm;->z()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgqm;->zzb:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static G(Lcom/google/android/gms/internal/ads/zzgqm;)Lcom/google/android/gms/internal/ads/zzgqm;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgqy;
        }
    .end annotation

    if-eqz p0, :cond_16

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqm;->C()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_16

    :cond_9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgtf;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgtf;-><init>(Lcom/google/android/gms/internal/ads/zzgrw;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgtf;->a()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgqy;->h(Lcom/google/android/gms/internal/ads/zzgrw;)Lcom/google/android/gms/internal/ads/zzgqy;

    throw v0

    :cond_16
    :goto_16
    return-object p0
.end method

.method private static H(Lcom/google/android/gms/internal/ads/zzgqm;[BIILcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzgqm;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgqy;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqm;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p0

    .line 2
    :try_start_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgse;->a()Lcom/google/android/gms/internal/ads/zzgse;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 4
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzgse;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgsp;

    move-result-object p2

    const/4 v3, 0x0

    new-instance v5, Lcom/google/android/gms/internal/ads/zzgoq;

    .line 5
    invoke-direct {v5, p4}, Lcom/google/android/gms/internal/ads/zzgoq;-><init>(Lcom/google/android/gms/internal/ads/zzgpy;)V

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzgsp;->h(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzgoq;)V

    .line 6
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/ads/zzgsp;->e(Ljava/lang/Object;)V
    :try_end_20
    .catch Lcom/google/android/gms/internal/ads/zzgqy; {:try_start_4 .. :try_end_20} :catch_4b
    .catch Lcom/google/android/gms/internal/ads/zzgtf; {:try_start_4 .. :try_end_20} :catch_42
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_20} :catch_29
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_20} :catch_21

    return-object p0

    .line 7
    :catch_21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqy;->j()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzgqy;->h(Lcom/google/android/gms/internal/ads/zzgrw;)Lcom/google/android/gms/internal/ads/zzgqy;

    throw p1

    :catch_29
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/ads/zzgqy;

    if-eqz p2, :cond_39

    .line 9
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgqy;

    throw p0

    .line 10
    :cond_39
    new-instance p2, Lcom/google/android/gms/internal/ads/zzgqy;

    .line 11
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzgqy;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzgqy;->h(Lcom/google/android/gms/internal/ads/zzgrw;)Lcom/google/android/gms/internal/ads/zzgqy;

    throw p2

    :catch_42
    move-exception p1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgtf;->a()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzgqy;->h(Lcom/google/android/gms/internal/ads/zzgrw;)Lcom/google/android/gms/internal/ads/zzgqy;

    throw p1

    :catch_4b
    move-exception p1

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqy;->l()Z

    move-result p2

    if-eqz p2, :cond_58

    new-instance p2, Lcom/google/android/gms/internal/ads/zzgqy;

    .line 14
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzgqy;-><init>(Ljava/io/IOException;)V

    move-object p1, p2

    .line 15
    :cond_58
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzgqy;->h(Lcom/google/android/gms/internal/ads/zzgrw;)Lcom/google/android/gms/internal/ads/zzgqy;

    throw p1
.end method

.method private final g(Lcom/google/android/gms/internal/ads/zzgsp;)I
    .registers 3

    if-nez p1, :cond_13

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgse;->a()Lcom/google/android/gms/internal/ads/zzgse;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgse;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgsp;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzgsp;->a(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 2
    :cond_13
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzgsp;->a(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method static j(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgqm;
    .registers 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgqm;->zzb:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgqm;

    if-nez v1, :cond_26

    .line 2
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_16} :catch_1d

    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgqm;

    goto :goto_26

    :catch_1d
    move-exception p0

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    .line 5
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_26
    :goto_26
    if-nez v1, :cond_42

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgtq;->o(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgqm;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzgqm;->F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Lcom/google/android/gms/internal/ads/zzgqm;

    if-eqz v1, :cond_3c

    .line 8
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 9
    :cond_3c
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 10
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_42
    :goto_42
    return-object v1
.end method

.method protected static l(Lcom/google/android/gms/internal/ads/zzgqm;Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzgqm;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgqy;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgpy;->c:Lcom/google/android/gms/internal/ads/zzgpy;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpe;->v()Lcom/google/android/gms/internal/ads/zzgpm;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqm;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p0

    .line 4
    :try_start_a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgse;->a()Lcom/google/android/gms/internal/ads/zzgse;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgse;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgsp;

    move-result-object v1

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgpn;->S(Lcom/google/android/gms/internal/ads/zzgpm;)Lcom/google/android/gms/internal/ads/zzgpn;

    move-result-object v2

    invoke-interface {v1, p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzgsp;->i(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgsh;Lcom/google/android/gms/internal/ads/zzgpy;)V

    .line 8
    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/ads/zzgsp;->e(Ljava/lang/Object;)V
    :try_end_20
    .catch Lcom/google/android/gms/internal/ads/zzgqy; {:try_start_a .. :try_end_20} :catch_63
    .catch Lcom/google/android/gms/internal/ads/zzgtf; {:try_start_a .. :try_end_20} :catch_5a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_20} :catch_41
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_20} :catch_30

    const/4 v0, 0x0

    .line 9
    :try_start_21
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzgpm;->B(I)V
    :try_end_24
    .catch Lcom/google/android/gms/internal/ads/zzgqy; {:try_start_21 .. :try_end_24} :catch_2b

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgqm;->G(Lcom/google/android/gms/internal/ads/zzgqm;)Lcom/google/android/gms/internal/ads/zzgqm;

    .line 11
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgqm;->G(Lcom/google/android/gms/internal/ads/zzgqm;)Lcom/google/android/gms/internal/ads/zzgqm;

    return-object p0

    :catch_2b
    move-exception p1

    .line 12
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzgqy;->h(Lcom/google/android/gms/internal/ads/zzgrw;)Lcom/google/android/gms/internal/ads/zzgqy;

    throw p1

    :catch_30
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/ads/zzgqy;

    if-eqz p1, :cond_40

    .line 14
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgqy;

    throw p0

    .line 15
    :cond_40
    throw p0

    :catch_41
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzgqy;

    if-eqz v0, :cond_51

    .line 17
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgqy;

    throw p0

    .line 18
    :cond_51
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgqy;

    .line 19
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzgqy;-><init>(Ljava/io/IOException;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgqy;->h(Lcom/google/android/gms/internal/ads/zzgrw;)Lcom/google/android/gms/internal/ads/zzgqy;

    throw v0

    :catch_5a
    move-exception p1

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgtf;->a()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzgqy;->h(Lcom/google/android/gms/internal/ads/zzgrw;)Lcom/google/android/gms/internal/ads/zzgqy;

    throw p1

    :catch_63
    move-exception p1

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqy;->l()Z

    move-result v0

    if-eqz v0, :cond_70

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgqy;

    .line 22
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzgqy;-><init>(Ljava/io/IOException;)V

    move-object p1, v0

    .line 23
    :cond_70
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzgqy;->h(Lcom/google/android/gms/internal/ads/zzgrw;)Lcom/google/android/gms/internal/ads/zzgqy;

    throw p1
.end method

.method protected static m(Lcom/google/android/gms/internal/ads/zzgqm;[B)Lcom/google/android/gms/internal/ads/zzgqm;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgqy;
        }
    .end annotation

    .line 1
    array-length v0, p1

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgpy;->c:Lcom/google/android/gms/internal/ads/zzgpy;

    const/4 v2, 0x0

    .line 3
    invoke-static {p0, p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzgqm;->H(Lcom/google/android/gms/internal/ads/zzgqm;[BIILcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgqm;->G(Lcom/google/android/gms/internal/ads/zzgqm;)Lcom/google/android/gms/internal/ads/zzgqm;

    return-object p0
.end method

.method protected static n(Lcom/google/android/gms/internal/ads/zzgqm;Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzgqm;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgqy;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpe;->v()Lcom/google/android/gms/internal/ads/zzgpm;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqm;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p0

    .line 3
    :try_start_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgse;->a()Lcom/google/android/gms/internal/ads/zzgse;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgse;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgsp;

    move-result-object v0

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgpn;->S(Lcom/google/android/gms/internal/ads/zzgpm;)Lcom/google/android/gms/internal/ads/zzgpn;

    move-result-object v1

    invoke-interface {v0, p0, v1, p2}, Lcom/google/android/gms/internal/ads/zzgsp;->i(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgsh;Lcom/google/android/gms/internal/ads/zzgpy;)V

    .line 7
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzgsp;->e(Ljava/lang/Object;)V
    :try_end_1e
    .catch Lcom/google/android/gms/internal/ads/zzgqy; {:try_start_8 .. :try_end_1e} :catch_5e
    .catch Lcom/google/android/gms/internal/ads/zzgtf; {:try_start_8 .. :try_end_1e} :catch_55
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1e} :catch_3c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_1e} :catch_2b

    const/4 p2, 0x0

    .line 8
    :try_start_1f
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgpm;->B(I)V
    :try_end_22
    .catch Lcom/google/android/gms/internal/ads/zzgqy; {:try_start_1f .. :try_end_22} :catch_26

    .line 9
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgqm;->G(Lcom/google/android/gms/internal/ads/zzgqm;)Lcom/google/android/gms/internal/ads/zzgqm;

    return-object p0

    :catch_26
    move-exception p1

    .line 10
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzgqy;->h(Lcom/google/android/gms/internal/ads/zzgrw;)Lcom/google/android/gms/internal/ads/zzgqy;

    throw p1

    :catch_2b
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/ads/zzgqy;

    if-eqz p1, :cond_3b

    .line 12
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgqy;

    throw p0

    .line 13
    :cond_3b
    throw p0

    :catch_3c
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/ads/zzgqy;

    if-eqz p2, :cond_4c

    .line 15
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgqy;

    throw p0

    .line 16
    :cond_4c
    new-instance p2, Lcom/google/android/gms/internal/ads/zzgqy;

    .line 17
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzgqy;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzgqy;->h(Lcom/google/android/gms/internal/ads/zzgrw;)Lcom/google/android/gms/internal/ads/zzgqy;

    throw p2

    :catch_55
    move-exception p1

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgtf;->a()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzgqy;->h(Lcom/google/android/gms/internal/ads/zzgrw;)Lcom/google/android/gms/internal/ads/zzgqy;

    throw p1

    :catch_5e
    move-exception p1

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqy;->l()Z

    move-result p2

    if-eqz p2, :cond_6b

    new-instance p2, Lcom/google/android/gms/internal/ads/zzgqy;

    .line 20
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzgqy;-><init>(Ljava/io/IOException;)V

    move-object p1, p2

    .line 21
    :cond_6b
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzgqy;->h(Lcom/google/android/gms/internal/ads/zzgrw;)Lcom/google/android/gms/internal/ads/zzgqy;

    throw p1
.end method

.method protected static o(Lcom/google/android/gms/internal/ads/zzgqm;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzgqm;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgqy;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgpm;->g(Ljava/io/InputStream;I)Lcom/google/android/gms/internal/ads/zzgpm;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqm;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p0

    .line 3
    :try_start_a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgse;->a()Lcom/google/android/gms/internal/ads/zzgse;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgse;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgsp;

    move-result-object v0

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgpn;->S(Lcom/google/android/gms/internal/ads/zzgpm;)Lcom/google/android/gms/internal/ads/zzgpn;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgsp;->i(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgsh;Lcom/google/android/gms/internal/ads/zzgpy;)V

    .line 7
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzgsp;->e(Ljava/lang/Object;)V
    :try_end_20
    .catch Lcom/google/android/gms/internal/ads/zzgqy; {:try_start_a .. :try_end_20} :catch_57
    .catch Lcom/google/android/gms/internal/ads/zzgtf; {:try_start_a .. :try_end_20} :catch_4e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_20} :catch_35
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_20} :catch_24

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgqm;->G(Lcom/google/android/gms/internal/ads/zzgqm;)Lcom/google/android/gms/internal/ads/zzgqm;

    return-object p0

    :catch_24
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/gms/internal/ads/zzgqy;

    if-eqz p1, :cond_34

    .line 10
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgqy;

    throw p0

    .line 11
    :cond_34
    throw p0

    :catch_35
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/gms/internal/ads/zzgqy;

    if-eqz p2, :cond_45

    .line 13
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgqy;

    throw p0

    .line 14
    :cond_45
    new-instance p2, Lcom/google/android/gms/internal/ads/zzgqy;

    .line 15
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzgqy;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/zzgqy;->h(Lcom/google/android/gms/internal/ads/zzgrw;)Lcom/google/android/gms/internal/ads/zzgqy;

    throw p2

    :catch_4e
    move-exception p1

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgtf;->a()Lcom/google/android/gms/internal/ads/zzgqy;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzgqy;->h(Lcom/google/android/gms/internal/ads/zzgrw;)Lcom/google/android/gms/internal/ads/zzgqy;

    throw p1

    :catch_57
    move-exception p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqy;->l()Z

    move-result p2

    if-eqz p2, :cond_64

    new-instance p2, Lcom/google/android/gms/internal/ads/zzgqy;

    .line 18
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzgqy;-><init>(Ljava/io/IOException;)V

    move-object p1, p2

    .line 19
    :cond_64
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzgqy;->h(Lcom/google/android/gms/internal/ads/zzgrw;)Lcom/google/android/gms/internal/ads/zzgqy;

    throw p1
.end method

.method protected static p(Lcom/google/android/gms/internal/ads/zzgqm;[BLcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzgqm;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgqy;
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    .line 2
    invoke-static {p0, p1, v1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgqm;->H(Lcom/google/android/gms/internal/ads/zzgqm;[BIILcom/google/android/gms/internal/ads/zzgpy;)Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgqm;->G(Lcom/google/android/gms/internal/ads/zzgqm;)Lcom/google/android/gms/internal/ads/zzgqm;

    return-object p0
.end method

.method protected static q()Lcom/google/android/gms/internal/ads/zzgqr;
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqn;->i()Lcom/google/android/gms/internal/ads/zzgqn;

    move-result-object v0

    return-object v0
.end method

.method protected static r(Lcom/google/android/gms/internal/ads/zzgqr;)Lcom/google/android/gms/internal/ads/zzgqr;
    .registers 2

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    goto :goto_a

    :cond_9
    add-int/2addr v0, v0

    .line 2
    :goto_a
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzgqr;->w(I)Lcom/google/android/gms/internal/ads/zzgqr;

    move-result-object p0

    return-object p0
.end method

.method protected static s()Lcom/google/android/gms/internal/ads/zzgqu;
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgrl;->i()Lcom/google/android/gms/internal/ads/zzgrl;

    move-result-object v0

    return-object v0
.end method

.method protected static u()Lcom/google/android/gms/internal/ads/zzgqv;
    .registers 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgsf;->g()Lcom/google/android/gms/internal/ads/zzgsf;

    move-result-object v0

    return-object v0
.end method

.method protected static v(Lcom/google/android/gms/internal/ads/zzgqv;)Lcom/google/android/gms/internal/ads/zzgqv;
    .registers 2

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0xa

    goto :goto_a

    :cond_9
    add-int/2addr v0, v0

    .line 2
    :goto_a
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzgqv;->K(I)Lcom/google/android/gms/internal/ads/zzgqv;

    move-result-object p0

    return-object p0
.end method

.method static varargs w(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_4} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 3
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1d

    .line 4
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_15

    .line 5
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 6
    :cond_15
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    .line 7
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 8
    :cond_1d
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_20
    move-exception p0

    .line 9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    .line 10
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static x(Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgsg;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgsg;-><init>(Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method final B(I)V
    .registers 3

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgqm;->zzd:I

    const/high16 v0, -0x80000000

    and-int/2addr p1, v0

    const v0, 0x7fffffff

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgqm;->zzd:I

    return-void
.end method

.method public final C()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzgqm;->F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v0, :cond_f

    goto :goto_12

    :cond_f
    if-nez v2, :cond_13

    const/4 v0, 0x0

    :goto_12
    return v0

    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgse;->a()Lcom/google/android/gms/internal/ads/zzgse;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzgse;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgsp;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/google/android/gms/internal/ads/zzgsp;->d(Ljava/lang/Object;)Z

    move-result v2

    if-eq v0, v2, :cond_27

    move-object v0, v1

    goto :goto_28

    :cond_27
    move-object v0, p0

    :goto_28
    const/4 v3, 0x2

    .line 3
    invoke-virtual {p0, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzgqm;->F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2
.end method

.method final D()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgqm;->zzd:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method final E()I
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgse;->a()Lcom/google/android/gms/internal/ads/zzgse;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgse;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgsp;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzgsp;->c(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected abstract F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final U()I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqm;->D()Z

    move-result v0

    const-string v1, "serialized size must be non-negative, was "

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzgqm;->g(Lcom/google/android/gms/internal/ads/zzgsp;)I

    move-result v0

    if-ltz v0, :cond_10

    goto :goto_3c

    :cond_10
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_25
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgqm;->zzd:I

    const v3, 0x7fffffff

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_2e

    goto :goto_3c

    .line 3
    :cond_2e
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzgqm;->g(Lcom/google/android/gms/internal/ads/zzgsp;)I

    move-result v0

    if-ltz v0, :cond_3d

    .line 4
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgqm;->zzd:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgqm;->zzd:I

    :goto_3c
    return v0

    .line 5
    :cond_3d
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final synthetic a()Lcom/google/android/gms/internal/ads/zzgrv;
    .registers 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzgqm;->F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgqi;

    return-object v0
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzgpt;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgse;->a()Lcom/google/android/gms/internal/ads/zzgse;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgse;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgsp;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgpu;->l(Lcom/google/android/gms/internal/ads/zzgpt;)Lcom/google/android/gms/internal/ads/zzgpu;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgsp;->j(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgpu;)V

    return-void
.end method

.method final c(Lcom/google/android/gms/internal/ads/zzgsp;)I
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqm;->D()Z

    move-result v0

    const-string v1, "serialized size must be non-negative, was "

    if-eqz v0, :cond_24

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->g(Lcom/google/android/gms/internal/ads/zzgsp;)I

    move-result p1

    if-ltz p1, :cond_f

    return p1

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgqm;->zzd:I

    const v2, 0x7fffffff

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_2d

    return v0

    .line 3
    :cond_2d
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgqm;->g(Lcom/google/android/gms/internal/ads/zzgsp;)I

    move-result p1

    if-ltz p1, :cond_3c

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgqm;->zzd:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgqm;->zzd:I

    return p1

    .line 5
    :cond_3c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic d1()Lcom/google/android/gms/internal/ads/zzgrw;
    .registers 3

    const/4 v0, 0x6

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzgqm;->F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgqm;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 1
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    return v0

    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgse;->a()Lcom/google/android/gms/internal/ads/zzgse;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgse;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgsp;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgqm;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgsp;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected final h()Lcom/google/android/gms/internal/ads/zzgqi;
    .registers 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzgqm;->F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgqi;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqm;->D()Z

    move-result v0

    if-nez v0, :cond_11

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgon;->zza:I

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqm;->E()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgon;->zza:I

    :cond_10
    return v0

    .line 2
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqm;->E()I

    move-result v0

    return v0
.end method

.method public final i()Lcom/google/android/gms/internal/ads/zzgqi;
    .registers 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzgqm;->F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgqi;

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzgqi;->i(Lcom/google/android/gms/internal/ads/zzgqm;)Lcom/google/android/gms/internal/ads/zzgqi;

    return-object v0
.end method

.method final k()Lcom/google/android/gms/internal/ads/zzgqm;
    .registers 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzgqm;->F(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzgqm;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzgry;->a(Lcom/google/android/gms/internal/ads/zzgrw;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final y()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgse;->a()Lcom/google/android/gms/internal/ads/zzgse;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgse;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgsp;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzgsp;->e(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgqm;->z()V

    return-void
.end method

.method final z()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgqm;->zzd:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgqm;->zzd:I

    return-void
.end method
