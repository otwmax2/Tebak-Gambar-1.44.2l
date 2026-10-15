###### Class com.google.android.gms.internal.ads.zzfry (com.google.android.gms.internal.ads.zzfry)
.class final Lcom/google/android/gms/internal/ads/zzfry;
.super Lcom/google/android/gms/internal/ads/zzfqn;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field static final u:Lcom/google/android/gms/internal/ads/zzfqn;


# instance fields
.field private final transient r:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final transient s:[Ljava/lang/Object;

.field private final transient t:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfry;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzfry;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfry;->u:Lcom/google/android/gms/internal/ads/zzfqn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfqn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfry;->r:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfry;->s:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzfry;->t:I

    return-void
.end method

.method static k(I[Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfqm;)Lcom/google/android/gms/internal/ads/zzfry;
    .registers 20

    move/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v0, :cond_b

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfry;->u:Lcom/google/android/gms/internal/ads/zzfqn;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfry;

    return-object v0

    :cond_b
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_23

    .line 1
    aget-object v0, v1, v3

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v3, v1, v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzfpj;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfry;

    invoke-direct {v0, v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzfry;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v0

    .line 4
    :cond_23
    array-length v5, v1

    shr-int/2addr v5, v4

    const-string v6, "index"

    .line 5
    invoke-static {v0, v5, v6}, Lcom/google/android/gms/internal/ads/zzfnu;->b(IILjava/lang/String;)I

    .line 6
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfqp;->n(I)I

    move-result v5

    if-ne v0, v4, :cond_40

    .line 7
    aget-object v5, v1, v3

    .line 8
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v7, v1, v4

    .line 9
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {v5, v7}, Lcom/google/android/gms/internal/ads/zzfpj;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3d
    const/4 v5, 0x2

    goto/16 :goto_186

    :cond_40
    add-int/lit8 v7, v5, -0x1

    const/16 v8, 0x80

    const/4 v9, 0x3

    const/4 v10, -0x1

    if-gt v5, v8, :cond_b2

    .line 11
    new-array v5, v5, [B

    .line 12
    invoke-static {v5, v10}, Ljava/util/Arrays;->fill([BB)V

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_4f
    if-ge v8, v0, :cond_9e

    add-int v11, v10, v10

    add-int v12, v8, v8

    .line 13
    aget-object v13, v1, v12

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    xor-int/2addr v12, v4

    .line 14
    aget-object v12, v1, v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    invoke-static {v13, v12}, Lcom/google/android/gms/internal/ads/zzfpj;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzfqc;->a(I)I

    move-result v14

    :goto_6b
    and-int/2addr v14, v7

    .line 17
    aget-byte v15, v5, v14

    const/16 v6, 0xff

    and-int/2addr v15, v6

    if-ne v15, v6, :cond_81

    int-to-byte v6, v11

    .line 18
    aput-byte v6, v5, v14

    if-ge v10, v8, :cond_7e

    .line 19
    aput-object v13, v1, v11

    xor-int/lit8 v6, v11, 0x1

    .line 20
    aput-object v12, v1, v6

    :cond_7e
    add-int/lit8 v10, v10, 0x1

    goto :goto_98

    .line 21
    :cond_81
    aget-object v6, v1, v15

    invoke-virtual {v13, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9b

    xor-int/lit8 v2, v15, 0x1

    new-instance v6, Lcom/google/android/gms/internal/ads/zzfql;

    .line 22
    aget-object v11, v1, v2

    .line 23
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v6, v13, v12, v11}, Lcom/google/android/gms/internal/ads/zzfql;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    aput-object v12, v1, v2

    move-object v2, v6

    :goto_98
    add-int/lit8 v8, v8, 0x1

    goto :goto_4f

    :cond_9b
    add-int/lit8 v14, v14, 0x1

    goto :goto_6b

    :cond_9e
    if-ne v10, v0, :cond_a2

    :goto_a0
    move-object v2, v5

    goto :goto_3d

    :cond_a2
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v5, v6, v3

    .line 25
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    const/4 v5, 0x2

    aput-object v2, v6, v5

    :goto_af
    move-object v2, v6

    goto/16 :goto_186

    :cond_b2
    const v6, 0x8000

    if-gt v5, v6, :cond_11f

    new-array v5, v5, [S

    .line 26
    invoke-static {v5, v10}, Ljava/util/Arrays;->fill([SS)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_be
    if-ge v6, v0, :cond_10e

    add-int v10, v8, v8

    add-int v11, v6, v6

    .line 27
    aget-object v12, v1, v11

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    xor-int/2addr v11, v4

    .line 28
    aget-object v11, v1, v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-static {v12, v11}, Lcom/google/android/gms/internal/ads/zzfpj;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v13

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzfqc;->a(I)I

    move-result v13

    :goto_da
    and-int/2addr v13, v7

    .line 31
    aget-short v14, v5, v13

    int-to-char v14, v14

    const v15, 0xffff

    if-ne v14, v15, :cond_f1

    int-to-short v14, v10

    .line 32
    aput-short v14, v5, v13

    if-ge v8, v6, :cond_ee

    .line 33
    aput-object v12, v1, v10

    xor-int/lit8 v10, v10, 0x1

    .line 34
    aput-object v11, v1, v10

    :cond_ee
    add-int/lit8 v8, v8, 0x1

    goto :goto_108

    .line 35
    :cond_f1
    aget-object v15, v1, v14

    invoke-virtual {v12, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10b

    xor-int/lit8 v2, v14, 0x1

    new-instance v10, Lcom/google/android/gms/internal/ads/zzfql;

    .line 36
    aget-object v13, v1, v2

    .line 37
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v10, v12, v11, v13}, Lcom/google/android/gms/internal/ads/zzfql;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 38
    aput-object v11, v1, v2

    move-object v2, v10

    :goto_108
    add-int/lit8 v6, v6, 0x1

    goto :goto_be

    :cond_10b
    add-int/lit8 v13, v13, 0x1

    goto :goto_da

    :cond_10e
    if-ne v8, v0, :cond_111

    goto :goto_a0

    :cond_111
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v5, v6, v3

    .line 39
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    const/4 v5, 0x2

    aput-object v2, v6, v5

    goto :goto_af

    :cond_11f
    new-array v5, v5, [I

    .line 40
    invoke-static {v5, v10}, Ljava/util/Arrays;->fill([II)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_126
    if-ge v6, v0, :cond_173

    add-int v11, v8, v8

    add-int v12, v6, v6

    .line 41
    aget-object v13, v1, v12

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    xor-int/2addr v12, v4

    .line 42
    aget-object v12, v1, v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-static {v13, v12}, Lcom/google/android/gms/internal/ads/zzfpj;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v14

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzfqc;->a(I)I

    move-result v14

    :goto_142
    and-int/2addr v14, v7

    .line 45
    aget v15, v5, v14

    if-ne v15, v10, :cond_154

    .line 46
    aput v11, v5, v14

    if-ge v8, v6, :cond_151

    .line 47
    aput-object v13, v1, v11

    xor-int/lit8 v11, v11, 0x1

    .line 48
    aput-object v12, v1, v11

    :cond_151
    add-int/lit8 v8, v8, 0x1

    goto :goto_16b

    .line 49
    :cond_154
    aget-object v10, v1, v15

    invoke-virtual {v13, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16f

    xor-int/lit8 v2, v15, 0x1

    new-instance v10, Lcom/google/android/gms/internal/ads/zzfql;

    .line 50
    aget-object v11, v1, v2

    .line 51
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v10, v13, v12, v11}, Lcom/google/android/gms/internal/ads/zzfql;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    aput-object v12, v1, v2

    move-object v2, v10

    :goto_16b
    add-int/lit8 v6, v6, 0x1

    const/4 v10, -0x1

    goto :goto_126

    :cond_16f
    add-int/lit8 v14, v14, 0x1

    const/4 v10, -0x1

    goto :goto_142

    :cond_173
    if-ne v8, v0, :cond_177

    goto/16 :goto_a0

    :cond_177
    new-array v6, v9, [Ljava/lang/Object;

    aput-object v5, v6, v3

    .line 53
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v4

    const/4 v5, 0x2

    aput-object v2, v6, v5

    goto/16 :goto_af

    .line 54
    :goto_186
    instance-of v6, v2, [Ljava/lang/Object;

    if-eqz v6, :cond_1a9

    .line 55
    check-cast v2, [Ljava/lang/Object;

    .line 56
    aget-object v0, v2, v5

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfql;

    move-object/from16 v5, p2

    iput-object v0, v5, Lcom/google/android/gms/internal/ads/zzfqm;->c:Lcom/google/android/gms/internal/ads/zzfql;

    .line 57
    aget-object v0, v2, v3

    .line 58
    aget-object v2, v2, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int v3, v2, v2

    .line 59
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move/from16 v16, v2

    move-object v2, v0

    move/from16 v0, v16

    :cond_1a9
    new-instance v3, Lcom/google/android/gms/internal/ads/zzfry;

    invoke-direct {v3, v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzfry;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v3
.end method


# virtual methods
.method final a()Lcom/google/android/gms/internal/ads/zzfqf;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfrx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfry;->s:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfry;->t:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzfrx;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method final e()Lcom/google/android/gms/internal/ads/zzfqp;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfrv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfry;->s:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfry;->t:I

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzfrv;-><init>(Lcom/google/android/gms/internal/ads/zzfqn;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method final f()Lcom/google/android/gms/internal/ads/zzfqp;
    .registers 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfrx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfry;->s:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfry;->t:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzfrx;-><init>([Ljava/lang/Object;II)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfrw;

    .line 2
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzfrw;-><init>(Lcom/google/android/gms/internal/ads/zzfqn;Lcom/google/android/gms/internal/ads/zzfqk;)V

    return-object v1
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfry;->r:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfry;->s:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzfry;->t:I

    const/4 v3, 0x0

    if-nez p1, :cond_c

    :cond_9
    :goto_9
    move-object p1, v3

    goto/16 :goto_9c

    :cond_c
    const/4 v4, 0x1

    if-ne v2, v4, :cond_22

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2
    aget-object p1, v1, v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_9c

    :cond_22
    if-nez v0, :cond_25

    goto :goto_9

    .line 3
    :cond_25
    instance-of v2, v0, [B

    const/4 v5, -0x1

    if-eqz v2, :cond_51

    .line 4
    move-object v2, v0

    check-cast v2, [B

    array-length v0, v2

    add-int/lit8 v6, v0, -0x1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfqc;->a(I)I

    move-result v0

    :goto_38
    and-int/2addr v0, v6

    .line 6
    aget-byte v5, v2, v0

    const/16 v7, 0xff

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_41

    goto :goto_9

    .line 7
    :cond_41
    aget-object v7, v1, v5

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4e

    xor-int/lit8 p1, v5, 0x1

    .line 8
    aget-object p1, v1, p1

    goto :goto_9c

    :cond_4e
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 9
    :cond_51
    instance-of v2, v0, [S

    if-eqz v2, :cond_7d

    .line 10
    move-object v2, v0

    check-cast v2, [S

    array-length v0, v2

    add-int/lit8 v6, v0, -0x1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfqc;->a(I)I

    move-result v0

    :goto_63
    and-int/2addr v0, v6

    .line 12
    aget-short v5, v2, v0

    int-to-char v5, v5

    const v7, 0xffff

    if-ne v5, v7, :cond_6d

    goto :goto_9

    .line 13
    :cond_6d
    aget-object v7, v1, v5

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7a

    xor-int/lit8 p1, v5, 0x1

    .line 14
    aget-object p1, v1, p1

    goto :goto_9c

    :cond_7a
    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 15
    :cond_7d
    check-cast v0, [I

    array-length v2, v0

    add-int/2addr v2, v5

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzfqc;->a(I)I

    move-result v6

    :goto_89
    and-int/2addr v6, v2

    .line 17
    aget v7, v0, v6

    if-ne v7, v5, :cond_90

    goto/16 :goto_9

    .line 18
    :cond_90
    aget-object v8, v1, v7

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a0

    xor-int/lit8 p1, v7, 0x1

    .line 19
    aget-object p1, v1, p1

    :goto_9c
    if-nez p1, :cond_9f

    return-object v3

    :cond_9f
    return-object p1

    :cond_a0
    add-int/lit8 v6, v6, 0x1

    goto :goto_89
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfry;->t:I

    return v0
.end method
