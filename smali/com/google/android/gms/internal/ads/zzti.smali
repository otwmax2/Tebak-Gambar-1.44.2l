###### Class com.google.android.gms.internal.ads.zzti (com.google.android.gms.internal.ads.zzti)
.class final Lcom/google/android/gms/internal/ads/zzti;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzsq;
.implements Lcom/google/android/gms/internal/ads/zzsp;


# instance fields
.field private final o:[Lcom/google/android/gms/internal/ads/zzsq;

.field private final p:Ljava/util/IdentityHashMap;

.field private final q:Ljava/util/ArrayList;

.field private final r:Ljava/util/HashMap;

.field private s:Lcom/google/android/gms/internal/ads/zzsp;

.field private t:Lcom/google/android/gms/internal/ads/zzur;

.field private u:[Lcom/google/android/gms/internal/ads/zzsq;

.field private v:Lcom/google/android/gms/internal/ads/zzul;

.field private final w:Lcom/google/android/gms/internal/ads/zzsd;


# direct methods
.method public varargs constructor <init>(Lcom/google/android/gms/internal/ads/zzsd;[J[Lcom/google/android/gms/internal/ads/zzsq;[B)V
    .registers 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzti;->w:Lcom/google/android/gms/internal/ads/zzsd;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzti;->o:[Lcom/google/android/gms/internal/ads/zzsq;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzti;->q:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    .line 2
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzti;->r:Ljava/util/HashMap;

    const/4 p1, 0x0

    new-array p4, p1, [Lcom/google/android/gms/internal/ads/zzul;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzsc;

    invoke-direct {v0, p4}, Lcom/google/android/gms/internal/ads/zzsc;-><init>([Lcom/google/android/gms/internal/ads/zzul;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->v:Lcom/google/android/gms/internal/ads/zzul;

    new-instance p4, Ljava/util/IdentityHashMap;

    .line 3
    invoke-direct {p4}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzti;->p:Ljava/util/IdentityHashMap;

    new-array p4, p1, [Lcom/google/android/gms/internal/ads/zzsq;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzti;->u:[Lcom/google/android/gms/internal/ads/zzsq;

    :goto_2a
    array-length p4, p3

    if-ge p1, p4, :cond_43

    .line 4
    aget-wide v0, p2, p1

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-eqz p4, :cond_40

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzti;->o:[Lcom/google/android/gms/internal/ads/zzsq;

    new-instance v2, Lcom/google/android/gms/internal/ads/zztg;

    .line 5
    aget-object v3, p3, p1

    invoke-direct {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zztg;-><init>(Lcom/google/android/gms/internal/ads/zzsq;J)V

    aput-object v2, p4, p1

    :cond_40
    add-int/lit8 p1, p1, 0x1

    goto :goto_2a

    :cond_43
    return-void
.end method


# virtual methods
.method public final D(J)J
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->u:[Lcom/google/android/gms/internal/ads/zzsq;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsq;->D(J)J

    move-result-wide p1

    const/4 v0, 0x1

    :goto_a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzti;->u:[Lcom/google/android/gms/internal/ads/zzsq;

    .line 2
    array-length v2, v1

    if-ge v0, v2, :cond_24

    .line 3
    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzsq;->D(J)J

    move-result-wide v1

    cmp-long v3, v1, p1

    if-nez v3, :cond_1c

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected child seekToUs result."

    .line 4
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_24
    return-wide p1
.end method

.method public final a()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->v:Lcom/google/android/gms/internal/ads/zzul;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzul;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(J)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->v:Lcom/google/android/gms/internal/ads/zzul;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzul;->b(J)V

    return-void
.end method

.method public final c(J)Z
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->q:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v0, :cond_20

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzti;->q:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzsq;

    invoke-interface {v3, p1, p2}, Lcom/google/android/gms/internal/ads/zzsq;->c(J)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_20
    return v1

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->v:Lcom/google/android/gms/internal/ads/zzul;

    .line 4
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzul;->c(J)Z

    move-result p1

    return p1
.end method

.method public final d()J
    .registers 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzti;->u:[Lcom/google/android/gms/internal/ads/zzsq;

    array-length v2, v1

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v7, v4

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v2, :cond_60

    aget-object v9, v1, v6

    .line 2
    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzsq;->d()J

    move-result-wide v10

    const-string v12, "Unexpected child seekToUs result."

    cmp-long v13, v10, v4

    if-eqz v13, :cond_4a

    cmp-long v13, v7, v4

    if-nez v13, :cond_3d

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzti;->u:[Lcom/google/android/gms/internal/ads/zzsq;

    .line 3
    array-length v8, v7

    const/4 v13, 0x0

    :goto_23
    if-ge v13, v8, :cond_3b

    aget-object v14, v7, v13

    if-ne v14, v9, :cond_2a

    goto :goto_3b

    .line 4
    :cond_2a
    invoke-interface {v14, v10, v11}, Lcom/google/android/gms/internal/ads/zzsq;->D(J)J

    move-result-wide v14

    cmp-long v16, v14, v10

    if-nez v16, :cond_35

    add-int/lit8 v13, v13, 0x1

    goto :goto_23

    :cond_35
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 5
    invoke-direct {v1, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3b
    :goto_3b
    move-wide v7, v10

    goto :goto_5d

    :cond_3d
    cmp-long v9, v10, v7

    if-nez v9, :cond_42

    goto :goto_5d

    .line 6
    :cond_42
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Conflicting discontinuities."

    .line 7
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4a
    cmp-long v10, v7, v4

    if-eqz v10, :cond_5d

    .line 8
    invoke-interface {v9, v7, v8}, Lcom/google/android/gms/internal/ads/zzsq;->D(J)J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-nez v11, :cond_57

    goto :goto_5d

    :cond_57
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 9
    invoke-direct {v1, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5d
    :goto_5d
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_60
    return-wide v7
.end method

.method public final e(Lcom/google/android/gms/internal/ads/zzsq;)V
    .registers 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzti;->q:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    return-void

    :cond_e
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzti;->o:[Lcom/google/android/gms/internal/ads/zzsq;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_14
    if-ge v2, v0, :cond_22

    .line 3
    aget-object v4, p1, v2

    .line 4
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzsq;->f()Lcom/google/android/gms/internal/ads/zzur;

    move-result-object v4

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzur;->a:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 5
    :cond_22
    new-array p1, v3, [Lcom/google/android/gms/internal/ads/zzcp;

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_26
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzti;->o:[Lcom/google/android/gms/internal/ads/zzsq;

    array-length v4, v3

    if-ge v0, v4, :cond_64

    .line 6
    aget-object v3, v3, v0

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzsq;->f()Lcom/google/android/gms/internal/ads/zzur;

    move-result-object v3

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzur;->a:I

    const/4 v5, 0x0

    :goto_34
    if-ge v5, v4, :cond_61

    .line 7
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzur;->b(I)Lcom/google/android/gms/internal/ads/zzcp;

    move-result-object v6

    .line 8
    iget-object v7, v6, Lcom/google/android/gms/internal/ads/zzcp;->b:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzcp;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcp;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzti;->r:Ljava/util/HashMap;

    .line 9
    invoke-virtual {v8, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v2, 0x1

    .line 10
    aput-object v7, p1, v2

    add-int/lit8 v5, v5, 0x1

    move v2, v6

    goto :goto_34

    :cond_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 11
    :cond_64
    new-instance v0, Lcom/google/android/gms/internal/ads/zzur;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzur;-><init>([Lcom/google/android/gms/internal/ads/zzcp;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->t:Lcom/google/android/gms/internal/ads/zzur;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzti;->s:Lcom/google/android/gms/internal/ads/zzsp;

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzsp;->e(Lcom/google/android/gms/internal/ads/zzsq;)V

    return-void
.end method

.method public final f()Lcom/google/android/gms/internal/ads/zzur;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->t:Lcom/google/android/gms/internal/ads/zzur;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final bridge synthetic g(Lcom/google/android/gms/internal/ads/zzul;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzsq;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzti;->s:Lcom/google/android/gms/internal/ads/zzsp;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzuk;->g(Lcom/google/android/gms/internal/ads/zzul;)V

    return-void
.end method

.method public final h(JZ)V
    .registers 8

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzti;->u:[Lcom/google/android/gms/internal/ads/zzsq;

    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_f

    aget-object v3, p3, v2

    .line 2
    invoke-interface {v3, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzsq;->h(JZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_f
    return-void
.end method

.method public final i()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->o:[Lcom/google/android/gms/internal/ads/zzsq;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 2
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzsq;->i()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public final j([Lcom/google/android/gms/internal/ads/zzwe;[Z[Lcom/google/android/gms/internal/ads/zzuj;[ZJ)J
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1
    array-length v3, v1

    new-array v4, v3, [I

    new-array v3, v3, [I

    const/4 v6, 0x0

    .line 2
    :goto_c
    array-length v7, v1

    const/4 v8, 0x0

    if-ge v6, v7, :cond_59

    .line 3
    aget-object v7, v2, v6

    if-nez v7, :cond_15

    goto :goto_1e

    .line 4
    :cond_15
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzti;->p:Ljava/util/IdentityHashMap;

    .line 5
    invoke-virtual {v8, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ljava/lang/Integer;

    :goto_1e
    const/4 v7, -0x1

    if-nez v8, :cond_23

    const/4 v8, -0x1

    goto :goto_27

    .line 6
    :cond_23
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    :goto_27
    aput v8, v4, v6

    .line 7
    aput v7, v3, v6

    .line 8
    aget-object v8, v1, v6

    if-eqz v8, :cond_56

    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzwi;->b()Lcom/google/android/gms/internal/ads/zzcp;

    move-result-object v8

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzti;->r:Ljava/util/HashMap;

    .line 9
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzcp;

    .line 10
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x0

    .line 11
    :goto_3f
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzti;->o:[Lcom/google/android/gms/internal/ads/zzsq;

    array-length v11, v10

    if-ge v9, v11, :cond_56

    .line 12
    aget-object v10, v10, v9

    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzsq;->f()Lcom/google/android/gms/internal/ads/zzur;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/google/android/gms/internal/ads/zzur;->a(Lcom/google/android/gms/internal/ads/zzcp;)I

    move-result v10

    if-eq v10, v7, :cond_53

    .line 13
    aput v9, v3, v6

    goto :goto_56

    :cond_53
    add-int/lit8 v9, v9, 0x1

    goto :goto_3f

    :cond_56
    :goto_56
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 14
    :cond_59
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzti;->p:Ljava/util/IdentityHashMap;

    .line 15
    invoke-virtual {v6}, Ljava/util/IdentityHashMap;->clear()V

    new-array v6, v7, [Lcom/google/android/gms/internal/ads/zzuj;

    new-array v14, v7, [Lcom/google/android/gms/internal/ads/zzuj;

    new-array v15, v7, [Lcom/google/android/gms/internal/ads/zzwe;

    new-instance v13, Ljava/util/ArrayList;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzti;->o:[Lcom/google/android/gms/internal/ads/zzsq;

    array-length v9, v9

    .line 16
    invoke-direct {v13, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-wide/from16 v16, p5

    const/4 v12, 0x0

    :goto_6f
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzti;->o:[Lcom/google/android/gms/internal/ads/zzsq;

    array-length v9, v9

    if-ge v12, v9, :cond_10d

    const/4 v9, 0x0

    .line 17
    :goto_75
    array-length v10, v1

    if-ge v9, v10, :cond_a7

    .line 18
    aget v10, v4, v9

    if-ne v10, v12, :cond_7f

    aget-object v10, v2, v9

    goto :goto_80

    :cond_7f
    move-object v10, v8

    :goto_80
    aput-object v10, v14, v9

    .line 19
    aget v10, v3, v9

    if-ne v10, v12, :cond_a2

    .line 20
    aget-object v10, v1, v9

    .line 21
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzwi;->b()Lcom/google/android/gms/internal/ads/zzcp;

    move-result-object v11

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzti;->r:Ljava/util/HashMap;

    .line 23
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzcp;

    .line 24
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v11, Lcom/google/android/gms/internal/ads/zztf;

    invoke-direct {v11, v10, v5}, Lcom/google/android/gms/internal/ads/zztf;-><init>(Lcom/google/android/gms/internal/ads/zzwe;Lcom/google/android/gms/internal/ads/zzcp;)V

    .line 26
    aput-object v11, v15, v9

    goto :goto_a4

    .line 27
    :cond_a2
    aput-object v8, v15, v9

    :goto_a4
    add-int/lit8 v9, v9, 0x1

    goto :goto_75

    :cond_a7
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzti;->o:[Lcom/google/android/gms/internal/ads/zzsq;

    .line 28
    aget-object v9, v5, v12

    move-object v10, v15

    move-object/from16 v11, p2

    move v5, v12

    move-object v12, v14

    move-object v8, v13

    move-object/from16 v13, p4

    move-object/from16 v18, v14

    move-object/from16 v19, v15

    move-wide/from16 v14, v16

    .line 29
    invoke-interface/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzsq;->j([Lcom/google/android/gms/internal/ads/zzwe;[Z[Lcom/google/android/gms/internal/ads/zzuj;[ZJ)J

    move-result-wide v9

    if-nez v5, :cond_c2

    move-wide/from16 v16, v9

    goto :goto_c6

    :cond_c2
    cmp-long v11, v9, v16

    if-nez v11, :cond_105

    :goto_c6
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 30
    :goto_c8
    array-length v11, v1

    if-ge v9, v11, :cond_f2

    .line 31
    aget v11, v3, v9

    const/4 v12, 0x1

    if-ne v11, v5, :cond_e2

    .line 32
    aget-object v10, v18, v9

    .line 33
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    aput-object v10, v6, v9

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzti;->p:Ljava/util/IdentityHashMap;

    .line 35
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v10, v13}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x1

    goto :goto_ef

    .line 36
    :cond_e2
    aget v11, v4, v9

    if-ne v11, v5, :cond_ef

    .line 37
    aget-object v11, v18, v9

    if-nez v11, :cond_eb

    goto :goto_ec

    :cond_eb
    const/4 v12, 0x0

    :goto_ec
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzdl;->f(Z)V

    :cond_ef
    :goto_ef
    add-int/lit8 v9, v9, 0x1

    goto :goto_c8

    :cond_f2
    if-eqz v10, :cond_fb

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzti;->o:[Lcom/google/android/gms/internal/ads/zzsq;

    .line 38
    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_fb
    add-int/lit8 v12, v5, 0x1

    move-object v13, v8

    move-object/from16 v14, v18

    move-object/from16 v15, v19

    const/4 v8, 0x0

    goto/16 :goto_6f

    :cond_105
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Children enabled at different positions."

    .line 39
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10d
    move-object v8, v13

    const/4 v1, 0x0

    .line 40
    invoke-static {v6, v1, v2, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzsq;

    .line 41
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzsq;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzti;->u:[Lcom/google/android/gms/internal/ads/zzsq;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzsc;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzsc;-><init>([Lcom/google/android/gms/internal/ads/zzul;)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzti;->v:Lcom/google/android/gms/internal/ads/zzul;

    return-wide v16
.end method

.method public final k(I)Lcom/google/android/gms/internal/ads/zzsq;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->o:[Lcom/google/android/gms/internal/ads/zzsq;

    aget-object p1, v0, p1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zztg;

    if-eqz v0, :cond_e

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zztg;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zztg;->k(Lcom/google/android/gms/internal/ads/zztg;)Lcom/google/android/gms/internal/ads/zzsq;

    move-result-object p1

    :cond_e
    return-object p1
.end method

.method public final m(Lcom/google/android/gms/internal/ads/zzsp;J)V
    .registers 7

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzti;->s:Lcom/google/android/gms/internal/ads/zzsp;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzti;->q:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->o:[Lcom/google/android/gms/internal/ads/zzsq;

    invoke-static {p1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzti;->o:[Lcom/google/android/gms/internal/ads/zzsq;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_17

    .line 2
    aget-object v2, p1, v1

    .line 3
    invoke-interface {v2, p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzsq;->m(Lcom/google/android/gms/internal/ads/zzsp;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_17
    return-void
.end method

.method public final n()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->v:Lcom/google/android/gms/internal/ads/zzul;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzul;->n()Z

    move-result v0

    return v0
.end method

.method public final o(JLcom/google/android/gms/internal/ads/zzkq;)J
    .registers 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->u:[Lcom/google/android/gms/internal/ads/zzsq;

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_9

    aget-object v0, v0, v2

    goto :goto_d

    .line 2
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->o:[Lcom/google/android/gms/internal/ads/zzsq;

    .line 3
    aget-object v0, v0, v2

    .line 4
    :goto_d
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzsq;->o(JLcom/google/android/gms/internal/ads/zzkq;)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzb()J
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzti;->v:Lcom/google/android/gms/internal/ads/zzul;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzul;->zzb()J

    move-result-wide v0

    return-wide v0
.end method
