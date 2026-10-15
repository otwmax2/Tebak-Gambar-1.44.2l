###### Class com.google.android.gms.internal.ads.zzgso (com.google.android.gms.internal.ads.zzgso)
.class final Lcom/google/android/gms/internal/ads/zzgso;
.super Lcom/google/android/gms/internal/ads/zzgpe;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field static final x:[I


# instance fields
.field private final s:I

.field private final t:Lcom/google/android/gms/internal/ads/zzgpe;

.field private final u:Lcom/google/android/gms/internal/ads/zzgpe;

.field private final v:I

.field private final w:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x2f

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgso;->x:[I

    return-void

    :array_a
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x5
        0x8
        0xd
        0x15
        0x22
        0x37
        0x59
        0x90
        0xe9
        0x179
        0x262
        0x3db
        0x63d
        0xa18
        0x1055
        0x1a6d
        0x2ac2
        0x452f
        0x6ff1
        0xb520
        0x12511
        0x1da31
        0x2ff42
        0x4d973
        0x7d8b5
        0xcb228
        0x148add
        0x213d05
        0x35c7e2
        0x5704e7
        0x8cccc9
        0xe3d1b0
        0x1709e79
        0x2547029
        0x3c50ea2
        0x6197ecb
        0x9de8d6d
        0xff80c38
        0x19d699a5
        0x29cea5dd
        0x43a53f82
        0x6d73e55f
        0x7fffffff
    .end array-data
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpe;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgpe;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgso;->t:Lcom/google/android/gms/internal/ads/zzgpe;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgso;->u:Lcom/google/android/gms/internal/ads/zzgpe;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgso;->v:I

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgso;->s:I

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpe;->q()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgpe;->q()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgso;->w:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgsn;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgso;-><init>(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpe;)V

    return-void
.end method

.method static bridge synthetic P(Lcom/google/android/gms/internal/ads/zzgso;)Lcom/google/android/gms/internal/ads/zzgpe;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgso;->u:Lcom/google/android/gms/internal/ads/zzgpe;

    return-object p0
.end method

.method static Q(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzgpe;
    .registers 7

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result v0

    if-nez v0, :cond_7

    return-object p0

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result v0

    if-nez v0, :cond_e

    return-object p1

    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x80

    if-ge v0, v1, :cond_20

    .line 3
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzgso;->R(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p0

    return-object p0

    .line 4
    :cond_20
    instance-of v2, p0, Lcom/google/android/gms/internal/ads/zzgso;

    if-eqz v2, :cond_68

    .line 5
    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgso;

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzgso;->u:Lcom/google/android/gms/internal/ads/zzgpe;

    .line 6
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v1, :cond_42

    iget-object p0, v2, Lcom/google/android/gms/internal/ads/zzgso;->u:Lcom/google/android/gms/internal/ads/zzgpe;

    .line 7
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzgso;->R(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgso;

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzgso;->t:Lcom/google/android/gms/internal/ads/zzgpe;

    .line 8
    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzgso;-><init>(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpe;)V

    return-object p1

    :cond_42
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzgso;->t:Lcom/google/android/gms/internal/ads/zzgpe;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgpe;->q()I

    move-result v1

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzgso;->u:Lcom/google/android/gms/internal/ads/zzgpe;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgpe;->q()I

    move-result v3

    if-le v1, v3, :cond_68

    iget v1, v2, Lcom/google/android/gms/internal/ads/zzgso;->w:I

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpe;->q()I

    move-result v3

    if-gt v1, v3, :cond_59

    goto :goto_68

    .line 11
    :cond_59
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgso;

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzgso;->u:Lcom/google/android/gms/internal/ads/zzgpe;

    .line 12
    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzgso;-><init>(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpe;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgso;

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzgso;->t:Lcom/google/android/gms/internal/ads/zzgpe;

    .line 13
    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzgso;-><init>(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpe;)V

    return-object p1

    .line 14
    :cond_68
    :goto_68
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpe;->q()I

    move-result v1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpe;->q()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 16
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgso;->S(I)I

    move-result v1

    if-lt v0, v1, :cond_82

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgso;

    .line 17
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgso;-><init>(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpe;)V

    return-object v0

    :cond_82
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgsk;

    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgsk;-><init>(Lcom/google/android/gms/internal/ads/zzgsj;)V

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzgsk;->a(Lcom/google/android/gms/internal/ads/zzgsk;Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p0

    return-object p0
.end method

.method private static R(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpe;)Lcom/google/android/gms/internal/ads/zzgpe;
    .registers 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result v1

    add-int v2, v0, v1

    .line 3
    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/google/android/gms/internal/ads/zzgpe;->i([BIII)V

    .line 5
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzgpe;->i([BIII)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzgpa;

    .line 6
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzgpa;-><init>([B)V

    return-object p0
.end method

.method static S(I)I
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgso;->x:[I

    array-length v1, v0

    const/16 v1, 0x2f

    if-lt p0, v1, :cond_b

    const p0, 0x7fffffff

    return p0

    .line 2
    :cond_b
    aget p0, v0, p0

    return p0
.end method

.method static bridge synthetic T(Lcom/google/android/gms/internal/ads/zzgso;)Lcom/google/android/gms/internal/ads/zzgpe;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgso;->t:Lcom/google/android/gms/internal/ads/zzgpe;

    return-object p0
.end method


# virtual methods
.method final A(Lcom/google/android/gms/internal/ads/zzgot;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgso;->t:Lcom/google/android/gms/internal/ads/zzgpe;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgpe;->A(Lcom/google/android/gms/internal/ads/zzgot;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgso;->u:Lcom/google/android/gms/internal/ads/zzgpe;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgpe;->A(Lcom/google/android/gms/internal/ads/zzgot;)V

    return-void
.end method

.method public final B()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgso;->t:Lcom/google/android/gms/internal/ads/zzgpe;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgso;->v:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/google/android/gms/internal/ads/zzgpe;->t(III)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgso;->u:Lcom/google/android/gms/internal/ads/zzgpe;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzgpe;->t(III)I

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    return v0

    :cond_17
    return v2
.end method

.method public final E()Lcom/google/android/gms/internal/ads/zzgoy;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgsi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgsi;-><init>(Lcom/google/android/gms/internal/ads/zzgso;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 14

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzgpe;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgpe;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgso;->s:I

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result v3

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgso;->s:I

    if-nez v1, :cond_1a

    return v0

    :cond_1a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpe;->D()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpe;->D()I

    move-result v3

    if-eqz v1, :cond_2a

    if-eqz v3, :cond_2a

    if-ne v1, v3, :cond_29

    goto :goto_2a

    :cond_29
    return v2

    :cond_2a
    :goto_2a
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgsm;

    const/4 v3, 0x0

    .line 5
    invoke-direct {v1, p0, v3}, Lcom/google/android/gms/internal/ads/zzgsm;-><init>(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgsl;)V

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgsm;->a()Lcom/google/android/gms/internal/ads/zzgoz;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/ads/zzgsm;

    .line 7
    invoke-direct {v5, p1, v3}, Lcom/google/android/gms/internal/ads/zzgsm;-><init>(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgsl;)V

    .line 8
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgsm;->a()Lcom/google/android/gms/internal/ads/zzgoz;

    move-result-object p1

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_40
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result v9

    sub-int/2addr v9, v6

    .line 9
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-nez v3, :cond_55

    .line 10
    invoke-virtual {v4, p1, v6, v10}, Lcom/google/android/gms/internal/ads/zzgoz;->P(Lcom/google/android/gms/internal/ads/zzgpe;II)Z

    move-result v11

    goto :goto_59

    .line 11
    :cond_55
    invoke-virtual {p1, v4, v3, v10}, Lcom/google/android/gms/internal/ads/zzgoz;->P(Lcom/google/android/gms/internal/ads/zzgpe;II)Z

    move-result v11

    :goto_59
    if-nez v11, :cond_5d

    const/4 v0, 0x0

    goto :goto_64

    :cond_5d
    add-int/2addr v7, v10

    .line 12
    iget v11, p0, Lcom/google/android/gms/internal/ads/zzgso;->s:I

    if-lt v7, v11, :cond_6b

    if-ne v7, v11, :cond_65

    :goto_64
    return v0

    .line 13
    :cond_65
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 14
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_6b
    if-ne v10, v8, :cond_74

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgsm;->a()Lcom/google/android/gms/internal/ads/zzgoz;

    move-result-object v3

    move-object v4, v3

    const/4 v3, 0x0

    goto :goto_75

    :cond_74
    add-int/2addr v3, v10

    :goto_75
    if-ne v10, v9, :cond_7d

    .line 16
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgsm;->a()Lcom/google/android/gms/internal/ads/zzgoz;

    move-result-object p1

    const/4 v6, 0x0

    goto :goto_40

    :cond_7d
    add-int/2addr v6, v10

    goto :goto_40
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgsi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgsi;-><init>(Lcom/google/android/gms/internal/ads/zzgso;)V

    return-object v0
.end method

.method public final l(I)B
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgso;->s:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgpe;->g(II)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgso;->m(I)B

    move-result p1

    return p1
.end method

.method final m(I)B
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgso;->v:I

    if-ge p1, v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgso;->t:Lcom/google/android/gms/internal/ads/zzgpe;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgpe;->m(I)B

    move-result p1

    return p1

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgso;->u:Lcom/google/android/gms/internal/ads/zzgpe;

    sub-int/2addr p1, v0

    .line 2
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzgpe;->m(I)B

    move-result p1

    return p1
.end method

.method public final o()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgso;->s:I

    return v0
.end method

.method protected final p([BIII)V
    .registers 7

    add-int v0, p2, p4

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgso;->v:I

    if-gt v0, v1, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgso;->t:Lcom/google/android/gms/internal/ads/zzgpe;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzgpe;->p([BIII)V

    return-void

    :cond_c
    if-lt p2, v1, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgso;->u:Lcom/google/android/gms/internal/ads/zzgpe;

    sub-int/2addr p2, v1

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzgpe;->p([BIII)V

    return-void

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgso;->t:Lcom/google/android/gms/internal/ads/zzgpe;

    sub-int/2addr v1, p2

    .line 3
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzgpe;->p([BIII)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgso;->u:Lcom/google/android/gms/internal/ads/zzgpe;

    const/4 v0, 0x0

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    .line 4
    invoke-virtual {p2, p1, v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzgpe;->p([BIII)V

    return-void
.end method

.method protected final q()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgso;->w:I

    return v0
.end method

.method protected final r()Z
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgso;->s:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgso;->w:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgso;->S(I)I

    move-result v1

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method protected final s(III)I
    .registers 6

    add-int v0, p2, p3

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgso;->v:I

    if-gt v0, v1, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgso;->t:Lcom/google/android/gms/internal/ads/zzgpe;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgpe;->s(III)I

    move-result p1

    return p1

    :cond_d
    if-lt p2, v1, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgso;->u:Lcom/google/android/gms/internal/ads/zzgpe;

    sub-int/2addr p2, v1

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgpe;->s(III)I

    move-result p1

    return p1

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgso;->t:Lcom/google/android/gms/internal/ads/zzgpe;

    sub-int/2addr v1, p2

    .line 3
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgpe;->s(III)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgso;->u:Lcom/google/android/gms/internal/ads/zzgpe;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    .line 4
    invoke-virtual {p2, p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzgpe;->s(III)I

    move-result p1

    return p1
.end method

.method protected final t(III)I
    .registers 6

    add-int v0, p2, p3

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgso;->v:I

    if-gt v0, v1, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgso;->t:Lcom/google/android/gms/internal/ads/zzgpe;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgpe;->t(III)I

    move-result p1

    return p1

    :cond_d
    if-lt p2, v1, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgso;->u:Lcom/google/android/gms/internal/ads/zzgpe;

    sub-int/2addr p2, v1

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgpe;->t(III)I

    move-result p1

    return p1

    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgso;->t:Lcom/google/android/gms/internal/ads/zzgpe;

    sub-int/2addr v1, p2

    .line 3
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzgpe;->t(III)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgso;->u:Lcom/google/android/gms/internal/ads/zzgpe;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    .line 4
    invoke-virtual {p2, p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzgpe;->t(III)I

    move-result p1

    return p1
.end method

.method public final u(II)Lcom/google/android/gms/internal/ads/zzgpe;
    .registers 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgso;->s:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgpe;->C(III)I

    move-result v0

    if-nez v0, :cond_b

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgpe;->p:Lcom/google/android/gms/internal/ads/zzgpe;

    return-object p1

    :cond_b
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgso;->s:I

    if-ne v0, v1, :cond_10

    return-object p0

    :cond_10
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgso;->v:I

    if-gt p2, v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgso;->t:Lcom/google/android/gms/internal/ads/zzgpe;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgpe;->u(II)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p1

    return-object p1

    :cond_1b
    if-lt p1, v0, :cond_26

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgso;->u:Lcom/google/android/gms/internal/ads/zzgpe;

    sub-int/2addr p2, v0

    sub-int/2addr p1, v0

    .line 3
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzgpe;->u(II)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p1

    return-object p1

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgso;->t:Lcom/google/android/gms/internal/ads/zzgpe;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgpe;->o()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgpe;->u(II)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgso;->u:Lcom/google/android/gms/internal/ads/zzgpe;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgso;->v:I

    sub-int/2addr p2, v2

    .line 5
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzgpe;->u(II)Lcom/google/android/gms/internal/ads/zzgpe;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgso;

    .line 6
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgso;-><init>(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgpe;)V

    return-object v0
.end method

.method public final v()Lcom/google/android/gms/internal/ads/zzgpm;
    .registers 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgsm;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzgsm;-><init>(Lcom/google/android/gms/internal/ads/zzgpe;Lcom/google/android/gms/internal/ads/zzgsl;)V

    :goto_b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgsm;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgsm;->a()Lcom/google/android/gms/internal/ads/zzgoz;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgpe;->y()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 5
    :cond_1d
    sget v1, Lcom/google/android/gms/internal/ads/zzgpm;->e:I

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    add-int/2addr v4, v6

    .line 8
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v6

    if-eqz v6, :cond_3f

    or-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 9
    :cond_3f
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v5

    if-eqz v5, :cond_48

    or-int/lit8 v3, v3, 0x2

    goto :goto_25

    :cond_48
    or-int/lit8 v3, v3, 0x4

    goto :goto_25

    :cond_4b
    const/4 v1, 0x2

    if-ne v3, v1, :cond_55

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgpi;

    const/4 v3, 0x1

    .line 10
    invoke-direct {v1, v0, v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzgpi;-><init>(Ljava/lang/Iterable;IZLcom/google/android/gms/internal/ads/zzgph;)V

    goto :goto_60

    :cond_55
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgqz;

    .line 11
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzgqz;-><init>(Ljava/lang/Iterable;)V

    const/16 v0, 0x1000

    .line 12
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgpm;->g(Ljava/io/InputStream;I)Lcom/google/android/gms/internal/ads/zzgpm;

    move-result-object v1

    :goto_60
    return-object v1
.end method

.method protected final x(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgpe;->k()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
