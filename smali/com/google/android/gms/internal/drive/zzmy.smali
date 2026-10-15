###### Class com.google.android.gms.internal.drive.zzmy (com.google.android.gms.internal.drive.zzmy)
.class public final Lcom/google/android/gms/internal/drive/zzmy;
.super Ljava/lang/Object;


# static fields
.field private static final f:Lcom/google/android/gms/internal/drive/zzmy;


# instance fields
.field private a:I

.field private b:[I

.field private c:[Ljava/lang/Object;

.field private d:I

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzmy;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/google/android/gms/internal/drive/zzmy;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzmy;->f:Lcom/google/android/gms/internal/drive/zzmy;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    const/16 v0, 0x8

    new-array v1, v0, [I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1
    invoke-direct {p0, v2, v1, v0, v3}, Lcom/google/android/gms/internal/drive/zzmy;-><init>(I[I[Ljava/lang/Object;Z)V

    return-void
.end method

.method private constructor <init>(I[I[Ljava/lang/Object;Z)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/drive/zzmy;->d:I

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/drive/zzmy;->b:[I

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/drive/zzmy;->c:[Ljava/lang/Object;

    .line 7
    iput-boolean p4, p0, Lcom/google/android/gms/internal/drive/zzmy;->e:Z

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/drive/zzmy;Lcom/google/android/gms/internal/drive/zzmy;)Lcom/google/android/gms/internal/drive/zzmy;
    .registers 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    iget v1, p1, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    add-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzmy;->b:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/internal/drive/zzmy;->b:[I

    iget v3, p0, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    iget v4, p1, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->c:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 5
    iget-object v3, p1, Lcom/google/android/gms/internal/drive/zzmy;->c:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    iget p1, p1, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    new-instance p0, Lcom/google/android/gms/internal/drive/zzmy;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/internal/drive/zzmy;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method private static d(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x3

    and-int/lit8 p0, p0, 0x7

    if-eqz p0, :cond_56

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4c

    const/4 v1, 0x2

    if-eq p0, v1, :cond_46

    const/4 v1, 0x3

    if-eq p0, v1, :cond_26

    const/4 v1, 0x5

    if-ne p0, v1, :cond_1c

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, v0, p0}, Lcom/google/android/gms/internal/drive/zzns;->v(II)V

    return-void

    .line 2
    :cond_1c
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->c()Lcom/google/android/gms/internal/drive/zzkr;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 3
    :cond_26
    invoke-interface {p2}, Lcom/google/android/gms/internal/drive/zzns;->J()I

    move-result p0

    sget v1, Lcom/google/android/gms/internal/drive/zzkk$zze;->l:I

    if-ne p0, v1, :cond_3a

    .line 4
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/drive/zzns;->H(I)V

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/drive/zzmy;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/drive/zzmy;->e(Lcom/google/android/gms/internal/drive/zzns;)V

    .line 6
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/drive/zzns;->E(I)V

    return-void

    .line 7
    :cond_3a
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/drive/zzns;->E(I)V

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/drive/zzmy;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/drive/zzmy;->e(Lcom/google/android/gms/internal/drive/zzns;)V

    .line 9
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/drive/zzns;->H(I)V

    return-void

    .line 10
    :cond_46
    check-cast p1, Lcom/google/android/gms/internal/drive/zzjc;

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/drive/zzns;->L(ILcom/google/android/gms/internal/drive/zzjc;)V

    return-void

    .line 11
    :cond_4c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzns;->o(IJ)V

    return-void

    .line 12
    :cond_56
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-interface {p2, v0, p0, p1}, Lcom/google/android/gms/internal/drive/zzns;->G(IJ)V

    return-void
.end method

.method public static h()Lcom/google/android/gms/internal/drive/zzmy;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/drive/zzmy;->f:Lcom/google/android/gms/internal/drive/zzmy;

    return-object v0
.end method


# virtual methods
.method final b(Lcom/google/android/gms/internal/drive/zzns;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/drive/zzns;->J()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/drive/zzkk$zze;->m:I

    if-ne v0, v1, :cond_1f

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_1e

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzmy;->b:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/drive/zzns;->p(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_1e
    return-void

    :cond_1f
    const/4 v0, 0x0

    .line 5
    :goto_20
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    if-ge v0, v1, :cond_34

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzmy;->b:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v1, v2}, Lcom/google/android/gms/internal/drive/zzns;->p(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_34
    return-void
.end method

.method final c(Ljava/lang/StringBuilder;I)V
    .registers 6

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    if-ge v0, v1, :cond_19

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzmy;->b:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    .line 3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/internal/drive/zzlt;->c(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method public final e(Lcom/google/android/gms/internal/drive/zzns;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-interface {p1}, Lcom/google/android/gms/internal/drive/zzns;->J()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/drive/zzkk$zze;->l:I

    if-ne v0, v1, :cond_21

    const/4 v0, 0x0

    .line 3
    :goto_e
    iget v1, p0, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    if-ge v0, v1, :cond_20

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzmy;->b:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/drive/zzmy;->d(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_20
    return-void

    .line 5
    :cond_21
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    add-int/lit8 v0, v0, -0x1

    :goto_25
    if-ltz v0, :cond_35

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzmy;->b:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/drive/zzmy;->d(ILjava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    :cond_35
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 1
    :cond_8
    instance-of v2, p1, Lcom/google/android/gms/internal/drive/zzmy;

    if-nez v2, :cond_d

    return v1

    .line 2
    :cond_d
    check-cast p1, Lcom/google/android/gms/internal/drive/zzmy;

    .line 3
    iget v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    iget v3, p1, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    if-ne v2, v3, :cond_47

    iget-object v3, p0, Lcom/google/android/gms/internal/drive/zzmy;->b:[I

    iget-object v4, p1, Lcom/google/android/gms/internal/drive/zzmy;->b:[I

    const/4 v5, 0x0

    :goto_1a
    if-ge v5, v2, :cond_27

    .line 4
    aget v6, v3, v5

    aget v7, v4, v5

    if-eq v6, v7, :cond_24

    const/4 v2, 0x0

    goto :goto_28

    :cond_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_27
    const/4 v2, 0x1

    :goto_28
    if-eqz v2, :cond_47

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->c:[Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/drive/zzmy;->c:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    const/4 v4, 0x0

    :goto_31
    if-ge v4, v3, :cond_42

    .line 6
    aget-object v5, v2, v4

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    const/4 p1, 0x0

    goto :goto_43

    :cond_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    :cond_42
    const/4 p1, 0x1

    :goto_43
    if-nez p1, :cond_46

    goto :goto_47

    :cond_46
    return v0

    :cond_47
    :goto_47
    return v1
.end method

.method public final f()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/drive/zzmy;->e:Z

    return-void
.end method

.method public final g()I
    .registers 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzmy;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_8
    iget v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    if-ge v0, v2, :cond_78

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->b:[I

    aget v2, v2, v0

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    if-eqz v2, :cond_66

    const/4 v4, 0x1

    if-eq v2, v4, :cond_57

    const/4 v5, 0x2

    if-eq v2, v5, :cond_4c

    const/4 v5, 0x3

    if-eq v2, v5, :cond_3b

    const/4 v4, 0x5

    if-ne v2, v4, :cond_31

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/drive/zzjr;->p0(II)I

    move-result v2

    goto :goto_74

    .line 5
    :cond_31
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/google/android/gms/internal/drive/zzkq;->c()Lcom/google/android/gms/internal/drive/zzkr;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 6
    :cond_3b
    invoke-static {v3}, Lcom/google/android/gms/internal/drive/zzjr;->q(I)I

    move-result v2

    shl-int/2addr v2, v4

    iget-object v3, p0, Lcom/google/android/gms/internal/drive/zzmy;->c:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/drive/zzmy;

    .line 7
    invoke-virtual {v3}, Lcom/google/android/gms/internal/drive/zzmy;->g()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_74

    .line 8
    :cond_4c
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Lcom/google/android/gms/internal/drive/zzjc;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/drive/zzjr;->O(ILcom/google/android/gms/internal/drive/zzjc;)I

    move-result v2

    goto :goto_74

    .line 9
    :cond_57
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/drive/zzjr;->l0(IJ)I

    move-result v2

    goto :goto_74

    .line 10
    :cond_66
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/drive/zzjr;->g0(IJ)I

    move-result v2

    :goto_74
    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 11
    :cond_78
    iput v1, p0, Lcom/google/android/gms/internal/drive/zzmy;->d:I

    return v1
.end method

.method public final hashCode()I
    .registers 9

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    add-int/lit16 v1, v0, 0x20f

    mul-int/lit8 v1, v1, 0x1f

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->b:[I

    const/4 v3, 0x0

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/16 v6, 0x11

    :goto_e
    if-ge v5, v0, :cond_18

    mul-int/lit8 v6, v6, 0x1f

    .line 3
    aget v7, v2, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :cond_18
    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x1f

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzmy;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    :goto_1f
    if-ge v3, v2, :cond_2d

    mul-int/lit8 v4, v4, 0x1f

    .line 5
    aget-object v5, v0, v3

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_2d
    add-int/2addr v1, v4

    return v1
.end method

.method public final i()I
    .registers 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzmy;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_8
    iget v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->a:I

    if-ge v0, v2, :cond_20

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/drive/zzmy;->b:[I

    aget v2, v2, v0

    ushr-int/lit8 v2, v2, 0x3

    .line 4
    iget-object v3, p0, Lcom/google/android/gms/internal/drive/zzmy;->c:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/drive/zzjc;

    .line 5
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/drive/zzjr;->b0(ILcom/google/android/gms/internal/drive/zzjc;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 6
    :cond_20
    iput v1, p0, Lcom/google/android/gms/internal/drive/zzmy;->d:I

    return v1
.end method
