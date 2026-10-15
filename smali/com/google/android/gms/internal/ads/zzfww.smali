###### Class com.google.android.gms.internal.ads.zzfww (com.google.android.gms.internal.ads.zzfww)
.class public final Lcom/google/android/gms/internal/ads/zzfww;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Ljava/lang/Class;

.field private b:Ljava/util/concurrent/ConcurrentMap;

.field private c:Lcom/google/android/gms/internal/ads/zzfwx;

.field private d:Lcom/google/android/gms/internal/ads/zzggl;


# direct methods
.method synthetic constructor <init>(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfwv;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfww;->b:Ljava/util/concurrent/ConcurrentMap;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfww;->a:Ljava/lang/Class;

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzggl;->b:Lcom/google/android/gms/internal/ads/zzggl;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfww;->d:Lcom/google/android/gms/internal/ads/zzggl;

    return-void
.end method

.method private final e(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzglk;Z)Lcom/google/android/gms/internal/ads/zzfww;
    .registers 18
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfww;->b:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v1, :cond_109

    if-nez p1, :cond_12

    if-eqz p2, :cond_a

    goto :goto_12

    .line 2
    :cond_a
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "at least one of the `fullPrimitive` or `primitive` must be set"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_12
    :goto_12
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzglk;->R()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_101

    .line 4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfww;->b:Ljava/util/concurrent/ConcurrentMap;

    .line 5
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzglk;->I()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 6
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzglk;->M()Lcom/google/android/gms/internal/ads/zzgme;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/ads/zzgme;->s:Lcom/google/android/gms/internal/ads/zzgme;

    const/4 v11, 0x0

    if-ne v4, v5, :cond_2d

    move-object v3, v11

    .line 7
    :cond_2d
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgdf;->b()Lcom/google/android/gms/internal/ads/zzgdf;

    move-result-object v4

    .line 8
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzglk;->J()Lcom/google/android/gms/internal/ads/zzgky;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgky;->N()Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzglk;->J()Lcom/google/android/gms/internal/ads/zzgky;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzgky;->M()Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object v6

    .line 10
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzglk;->J()Lcom/google/android/gms/internal/ads/zzgky;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzgky;->J()Lcom/google/android/gms/internal/ads/zzgkx;

    move-result-object v7

    .line 11
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzglk;->M()Lcom/google/android/gms/internal/ads/zzgme;

    move-result-object v8

    .line 12
    invoke-static {v5, v6, v7, v8, v3}, Lcom/google/android/gms/internal/ads/zzgdz;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgkx;Lcom/google/android/gms/internal/ads/zzgme;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgdz;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfxg;->a()Lcom/google/android/gms/internal/ads/zzfxg;

    move-result-object v5

    .line 13
    invoke-virtual {v4, v3, v5}, Lcom/google/android/gms/internal/ads/zzgdf;->a(Lcom/google/android/gms/internal/ads/zzgdz;Lcom/google/android/gms/internal/ads/zzfxg;)Lcom/google/android/gms/internal/ads/zzfvx;

    move-result-object v10

    new-instance v12, Lcom/google/android/gms/internal/ads/zzfwx;

    .line 14
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzglk;->M()Lcom/google/android/gms/internal/ads/zzgme;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-eq v3, v5, :cond_91

    const/4 v5, 0x2

    if-eq v3, v5, :cond_7b

    if-eq v3, v2, :cond_78

    const/4 v2, 0x4

    if-ne v3, v2, :cond_70

    goto :goto_7b

    .line 15
    :cond_70
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "unknown output prefix type"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_78
    sget-object v2, Lcom/google/android/gms/internal/ads/zzfvt;->a:[B

    goto :goto_a5

    .line 17
    :cond_7b
    :goto_7b
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const/4 v3, 0x0

    .line 18
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 19
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzglk;->I()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    goto :goto_a5

    .line 21
    :cond_91
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 22
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 23
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzglk;->I()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    :goto_a5
    move-object v5, v2

    .line 25
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzglk;->R()I

    move-result v6

    .line 26
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzglk;->M()Lcom/google/android/gms/internal/ads/zzgme;

    move-result-object v7

    .line 27
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzglk;->I()I

    move-result v8

    .line 28
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzglk;->J()Lcom/google/android/gms/internal/ads/zzgky;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgky;->N()Ljava/lang/String;

    move-result-object v9

    move-object v2, v12

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzfwx;-><init>(Ljava/lang/Object;Ljava/lang/Object;[BILcom/google/android/gms/internal/ads/zzgme;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzfvx;)V

    new-instance v2, Ljava/util/ArrayList;

    .line 29
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfwz;

    .line 31
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzfwx;->g()[B

    move-result-object v4

    invoke-direct {v3, v4, v11}, Lcom/google/android/gms/internal/ads/zzfwz;-><init>([BLcom/google/android/gms/internal/ads/zzfwy;)V

    .line 32
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_ef

    new-instance v4, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ef
    if-eqz p4, :cond_100

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfww;->c:Lcom/google/android/gms/internal/ads/zzfwx;

    if-nez v1, :cond_f8

    .line 37
    iput-object v12, v0, Lcom/google/android/gms/internal/ads/zzfww;->c:Lcom/google/android/gms/internal/ads/zzfwx;

    goto :goto_100

    .line 38
    :cond_f8
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "you cannot set two primary primitives"

    .line 39
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_100
    :goto_100
    return-object v0

    .line 40
    :cond_101
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "only ENABLED key is allowed"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    :cond_109
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "addPrimitive cannot be called after build"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzglk;)Lcom/google/android/gms/internal/ads/zzfww;
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzfww;->e(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzglk;Z)Lcom/google/android/gms/internal/ads/zzfww;

    return-object p0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzglk;)Lcom/google/android/gms/internal/ads/zzfww;
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzfww;->e(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzglk;Z)Lcom/google/android/gms/internal/ads/zzfww;

    return-object p0
.end method

.method public final c(Lcom/google/android/gms/internal/ads/zzggl;)Lcom/google/android/gms/internal/ads/zzfww;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfww;->b:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v0, :cond_7

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfww;->d:Lcom/google/android/gms/internal/ads/zzggl;

    return-object p0

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setAnnotations cannot be called after build"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d()Lcom/google/android/gms/internal/ads/zzfxb;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfww;->b:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v1, :cond_15

    new-instance v6, Lcom/google/android/gms/internal/ads/zzfxb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfww;->c:Lcom/google/android/gms/internal/ads/zzfwx;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfww;->d:Lcom/google/android/gms/internal/ads/zzggl;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfww;->a:Ljava/lang/Class;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzfxb;-><init>(Ljava/util/concurrent/ConcurrentMap;Lcom/google/android/gms/internal/ads/zzfwx;Lcom/google/android/gms/internal/ads/zzggl;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzfxa;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfww;->b:Ljava/util/concurrent/ConcurrentMap;

    return-object v6

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build cannot be called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
