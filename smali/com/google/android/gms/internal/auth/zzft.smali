###### Class com.google.android.gms.internal.auth.zzft (com.google.android.gms.internal.auth.zzft)
.class final Lcom/google/android/gms/internal/auth/zzft;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth-base@@17.1.4"

# interfaces
.implements Lcom/google/android/gms/internal/auth/zzgb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/auth/zzgb<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final o:[I

.field private static final p:Lsun/misc/Unsafe;


# instance fields
.field private final a:[I

.field private final b:[Ljava/lang/Object;

.field private final c:I

.field private final d:I

.field private final e:Lcom/google/android/gms/internal/auth/zzfq;

.field private final f:Z

.field private final g:[I

.field private final h:I

.field private final i:I

.field private final j:Lcom/google/android/gms/internal/auth/zzfe;

.field private final k:Lcom/google/android/gms/internal/auth/zzgp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/auth/zzgp<",
            "**>;"
        }
    .end annotation
.end field

.field private final l:Lcom/google/android/gms/internal/auth/zzeh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/auth/zzeh<",
            "*>;"
        }
    .end annotation
.end field

.field private final m:Lcom/google/android/gms/internal/auth/zzfv;

.field private final n:Lcom/google/android/gms/internal/auth/zzfl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/auth/zzft;->o:[I

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzgz;->g()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/auth/zzft;->p:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/auth/zzfq;ZZ[IIILcom/google/android/gms/internal/auth/zzfv;Lcom/google/android/gms/internal/auth/zzfe;Lcom/google/android/gms/internal/auth/zzgp;Lcom/google/android/gms/internal/auth/zzeh;Lcom/google/android/gms/internal/auth/zzfl;[B)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/android/gms/internal/auth/zzfq;",
            "ZZ[III",
            "Lcom/google/android/gms/internal/auth/zzfv;",
            "Lcom/google/android/gms/internal/auth/zzfe;",
            "Lcom/google/android/gms/internal/auth/zzgp<",
            "**>;",
            "Lcom/google/android/gms/internal/auth/zzeh<",
            "*>;",
            "Lcom/google/android/gms/internal/auth/zzfl;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/auth/zzft;->a:[I

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/auth/zzft;->b:[Ljava/lang/Object;

    move v1, p3

    iput v1, v0, Lcom/google/android/gms/internal/auth/zzft;->c:I

    move v1, p4

    iput v1, v0, Lcom/google/android/gms/internal/auth/zzft;->d:I

    move v1, p6

    iput-boolean v1, v0, Lcom/google/android/gms/internal/auth/zzft;->f:Z

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/auth/zzft;->g:[I

    move v1, p9

    iput v1, v0, Lcom/google/android/gms/internal/auth/zzft;->h:I

    move v1, p10

    iput v1, v0, Lcom/google/android/gms/internal/auth/zzft;->i:I

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/gms/internal/auth/zzft;->m:Lcom/google/android/gms/internal/auth/zzfv;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/gms/internal/auth/zzft;->j:Lcom/google/android/gms/internal/auth/zzfe;

    move-object v1, p13

    iput-object v1, v0, Lcom/google/android/gms/internal/auth/zzft;->k:Lcom/google/android/gms/internal/auth/zzgp;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/auth/zzft;->l:Lcom/google/android/gms/internal/auth/zzeh;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/auth/zzft;->e:Lcom/google/android/gms/internal/auth/zzfq;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/gms/internal/auth/zzft;->n:Lcom/google/android/gms/internal/auth/zzfl;

    return-void
.end method

.method private final A(I)I
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/auth/zzft;->c:I

    if-lt p1, v0, :cond_e

    iget v0, p0, Lcom/google/android/gms/internal/auth/zzft;->d:I

    if-gt p1, v0, :cond_e

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzft;->D(II)I

    move-result p1

    return p1

    :cond_e
    const/4 p1, -0x1

    return p1
.end method

.method private final B(II)I
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/auth/zzft;->c:I

    if-lt p1, v0, :cond_d

    iget v0, p0, Lcom/google/android/gms/internal/auth/zzft;->d:I

    if-gt p1, v0, :cond_d

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzft;->D(II)I

    move-result p1

    return p1

    :cond_d
    const/4 p1, -0x1

    return p1
.end method

.method private final C(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzft;->a:[I

    add-int/lit8 p1, p1, 0x2

    .line 1
    aget p1, v0, p1

    return p1
.end method

.method private final D(II)I
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzft;->a:[I

    .line 1
    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_7
    if-gt p2, v0, :cond_20

    add-int v2, v0, p2

    ushr-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v2, 0x3

    iget-object v4, p0, Lcom/google/android/gms/internal/auth/zzft;->a:[I

    .line 2
    aget v4, v4, v3

    if-ne p1, v4, :cond_16

    return v3

    :cond_16
    if-ge p1, v4, :cond_1c

    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_7

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    move p2, v2

    goto :goto_7

    :cond_20
    return v1
.end method

.method private static E(I)I
    .registers 1

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private final F(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzft;->a:[I

    add-int/lit8 p1, p1, 0x1

    .line 1
    aget p1, v0, p1

    return p1
.end method

.method private static G(Ljava/lang/Object;J)J
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private final H(I)Lcom/google/android/gms/internal/auth/zzet;
    .registers 3

    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzft;->b:[Ljava/lang/Object;

    add-int/2addr p1, p1

    add-int/lit8 p1, p1, 0x1

    .line 1
    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/auth/zzet;

    return-object p1
.end method

.method private final I(I)Lcom/google/android/gms/internal/auth/zzgb;
    .registers 5

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzft;->b:[Ljava/lang/Object;

    .line 1
    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/auth/zzgb;

    if-eqz v0, :cond_c

    return-object v0

    .line 2
    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfy;->a()Lcom/google/android/gms/internal/auth/zzfy;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzft;->b:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/auth/zzfy;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/auth/zzgb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzft;->b:[Ljava/lang/Object;

    .line 3
    aput-object v0, v1, p1

    return-object v0
.end method

.method private final J(I)Ljava/lang/Object;
    .registers 3

    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzft;->b:[Ljava/lang/Object;

    add-int/2addr p1, p1

    .line 1
    aget-object p1, v0, p1

    return-object p1
.end method

.method private static h(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    .line 2
    :catch_5
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_1d

    aget-object v3, v0, v2

    .line 4
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    return-object v3

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1d
    new-instance v1, Ljava/lang/RuntimeException;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x28

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_65

    :goto_64
    throw v1

    :goto_65
    goto :goto_64
.end method

.method private final i(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/zzft;->F(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/auth/zzft;->n(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    .line 3
    :cond_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_28

    if-nez p2, :cond_1d

    goto :goto_28

    .line 5
    :cond_1d
    invoke-static {v2, p2}, Lcom/google/android/gms/internal/auth/zzev;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 6
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzgz;->p(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 7
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/auth/zzft;->k(Ljava/lang/Object;I)V

    return-void

    :cond_28
    :goto_28
    if-eqz p2, :cond_30

    .line 8
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzgz;->p(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/auth/zzft;->k(Ljava/lang/Object;I)V

    :cond_30
    return-void
.end method

.method private final j(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/zzft;->F(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzft;->a:[I

    .line 2
    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 3
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/auth/zzft;->q(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 4
    :cond_14
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/auth/zzft;->q(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 5
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    .line 6
    :goto_20
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_34

    if-nez p2, :cond_29

    goto :goto_34

    .line 7
    :cond_29
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/auth/zzev;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 8
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/auth/zzgz;->p(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/auth/zzft;->l(Ljava/lang/Object;II)V

    return-void

    :cond_34
    :goto_34
    if-eqz p2, :cond_3c

    .line 10
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/auth/zzgz;->p(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 11
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/auth/zzft;->l(Ljava/lang/Object;II)V

    :cond_3c
    return-void
.end method

.method private final k(Ljava/lang/Object;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth/zzft;->C(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    return-void

    .line 2
    :cond_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    ushr-int/lit8 p2, p2, 0x14

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    .line 3
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzgz;->n(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final l(Ljava/lang/Object;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/zzft;->C(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/auth/zzgz;->n(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final m(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/auth/zzft;->n(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/auth/zzft;->n(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method private final n(Ljava/lang/Object;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth/zzft;->C(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/32 v6, 0xfffff

    cmp-long v8, v2, v6

    if-nez v8, :cond_eb

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth/zzft;->F(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    invoke-static {p2}, Lcom/google/android/gms/internal/auth/zzft;->E(I)I

    move-result p2

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_f8

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 5
    :pswitch_29
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_30

    return v5

    :cond_30
    return v4

    .line 6
    :pswitch_31
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->d(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3a

    return v5

    :cond_3a
    return v4

    .line 7
    :pswitch_3b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_42

    return v5

    :cond_42
    return v4

    .line 8
    :pswitch_43
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->d(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_4c

    return v5

    :cond_4c
    return v4

    .line 9
    :pswitch_4d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_54

    return v5

    :cond_54
    return v4

    .line 10
    :pswitch_55
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5c

    return v5

    :cond_5c
    return v4

    .line 11
    :pswitch_5d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_64

    return v5

    :cond_64
    return v4

    .line 12
    :pswitch_65
    sget-object p2, Lcom/google/android/gms/internal/auth/zzeb;->p:Lcom/google/android/gms/internal/auth/zzeb;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/auth/zzeb;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_72

    return v5

    :cond_72
    return v4

    .line 13
    :pswitch_73
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7a

    return v5

    :cond_7a
    return v4

    .line 14
    :pswitch_7b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 15
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_8d

    .line 16
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8c

    return v5

    :cond_8c
    return v4

    .line 17
    :cond_8d
    instance-of p2, p1, Lcom/google/android/gms/internal/auth/zzeb;

    if-eqz p2, :cond_9b

    .line 18
    sget-object p2, Lcom/google/android/gms/internal/auth/zzeb;->p:Lcom/google/android/gms/internal/auth/zzeb;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/auth/zzeb;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9a

    return v5

    :cond_9a
    return v4

    .line 19
    :cond_9b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 21
    :pswitch_a1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->t(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 22
    :pswitch_a6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_ad

    return v5

    :cond_ad
    return v4

    .line 23
    :pswitch_ae
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->d(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_b7

    return v5

    :cond_b7
    return v4

    .line 24
    :pswitch_b8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_bf

    return v5

    :cond_bf
    return v4

    .line 25
    :pswitch_c0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->d(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_c9

    return v5

    :cond_c9
    return v4

    .line 26
    :pswitch_ca
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->d(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_d3

    return v5

    :cond_d3
    return v4

    .line 27
    :pswitch_d4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->b(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_de

    return v5

    :cond_de
    return v4

    .line 28
    :pswitch_df
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->a(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_ea

    return v5

    :cond_ea
    return v4

    .line 29
    :cond_eb
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result p1

    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v5, p2

    and-int/2addr p1, p2

    if-eqz p1, :cond_f7

    return v5

    :cond_f7
    return v4

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_df
        :pswitch_d4
        :pswitch_ca
        :pswitch_c0
        :pswitch_b8
        :pswitch_ae
        :pswitch_a6
        :pswitch_a1
        :pswitch_7b
        :pswitch_73
        :pswitch_65
        :pswitch_5d
        :pswitch_55
        :pswitch_4d
        :pswitch_43
        :pswitch_3b
        :pswitch_31
        :pswitch_29
    .end packed-switch
.end method

.method private final o(Ljava/lang/Object;IIII)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)Z"
        }
    .end annotation

    const v0, 0xfffff

    if-ne p3, v0, :cond_a

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzft;->n(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_a
    and-int p1, p4, p5

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method private static p(Ljava/lang/Object;ILcom/google/android/gms/internal/auth/zzgb;)Z
    .registers 5

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/auth/zzgb;->c(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final q(Ljava/lang/Object;II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/auth/zzft;->C(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method static s(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzgq;
    .registers 3

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/auth/zzeq;

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzeq;->zzc:Lcom/google/android/gms/internal/auth/zzgq;

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzgq;->a()Lcom/google/android/gms/internal/auth/zzgq;

    move-result-object v1

    if-ne v0, v1, :cond_10

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzgq;->c()Lcom/google/android/gms/internal/auth/zzgq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/auth/zzeq;->zzc:Lcom/google/android/gms/internal/auth/zzgq;

    :cond_10
    return-object v0
.end method

.method static t(Ljava/lang/Class;Lcom/google/android/gms/internal/auth/zzfn;Lcom/google/android/gms/internal/auth/zzfv;Lcom/google/android/gms/internal/auth/zzfe;Lcom/google/android/gms/internal/auth/zzgp;Lcom/google/android/gms/internal/auth/zzeh;Lcom/google/android/gms/internal/auth/zzfl;)Lcom/google/android/gms/internal/auth/zzft;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/auth/zzfn;",
            "Lcom/google/android/gms/internal/auth/zzfv;",
            "Lcom/google/android/gms/internal/auth/zzfe;",
            "Lcom/google/android/gms/internal/auth/zzgp<",
            "**>;",
            "Lcom/google/android/gms/internal/auth/zzeh<",
            "*>;",
            "Lcom/google/android/gms/internal/auth/zzfl;",
            ")",
            "Lcom/google/android/gms/internal/auth/zzft<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of p0, p1, Lcom/google/android/gms/internal/auth/zzga;

    if-eqz p0, :cond_11

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/auth/zzga;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/auth/zzft;->u(Lcom/google/android/gms/internal/auth/zzga;Lcom/google/android/gms/internal/auth/zzfv;Lcom/google/android/gms/internal/auth/zzfe;Lcom/google/android/gms/internal/auth/zzgp;Lcom/google/android/gms/internal/auth/zzeh;Lcom/google/android/gms/internal/auth/zzfl;)Lcom/google/android/gms/internal/auth/zzft;

    move-result-object p0

    return-object p0

    .line 3
    :cond_11
    check-cast p1, Lcom/google/android/gms/internal/auth/zzgm;

    const/4 p0, 0x0

    throw p0
.end method

.method static u(Lcom/google/android/gms/internal/auth/zzga;Lcom/google/android/gms/internal/auth/zzfv;Lcom/google/android/gms/internal/auth/zzfe;Lcom/google/android/gms/internal/auth/zzgp;Lcom/google/android/gms/internal/auth/zzeh;Lcom/google/android/gms/internal/auth/zzfl;)Lcom/google/android/gms/internal/auth/zzft;
    .registers 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/auth/zzga;",
            "Lcom/google/android/gms/internal/auth/zzfv;",
            "Lcom/google/android/gms/internal/auth/zzfe;",
            "Lcom/google/android/gms/internal/auth/zzgp<",
            "**>;",
            "Lcom/google/android/gms/internal/auth/zzeh<",
            "*>;",
            "Lcom/google/android/gms/internal/auth/zzfl;",
            ")",
            "Lcom/google/android/gms/internal/auth/zzft<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/auth/zzga;->a()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_a

    const/4 v10, 0x1

    goto :goto_b

    :cond_a
    const/4 v10, 0x0

    .line 2
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/auth/zzga;->b()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_27

    const/4 v4, 0x1

    :goto_1d
    add-int/lit8 v6, v4, 0x1

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_28

    move v4, v6

    goto :goto_1d

    :cond_27
    const/4 v6, 0x1

    :cond_28
    add-int/lit8 v4, v6, 0x1

    .line 6
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_47

    and-int/lit16 v6, v6, 0x1fff

    const/16 v8, 0xd

    :goto_34
    add-int/lit8 v9, v4, 0x1

    .line 7
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_44

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v8

    or-int/2addr v6, v4

    add-int/lit8 v8, v8, 0xd

    move v4, v9

    goto :goto_34

    :cond_44
    shl-int/2addr v4, v8

    or-int/2addr v6, v4

    move v4, v9

    :cond_47
    if-nez v6, :cond_56

    sget-object v6, Lcom/google/android/gms/internal/auth/zzft;->o:[I

    move-object v13, v6

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    goto/16 :goto_165

    :cond_56
    add-int/lit8 v6, v4, 0x1

    .line 8
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_75

    and-int/lit16 v4, v4, 0x1fff

    const/16 v8, 0xd

    :goto_62
    add-int/lit8 v9, v6, 0x1

    .line 9
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_72

    and-int/lit16 v6, v6, 0x1fff

    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    add-int/lit8 v8, v8, 0xd

    move v6, v9

    goto :goto_62

    :cond_72
    shl-int/2addr v6, v8

    or-int/2addr v4, v6

    move v6, v9

    :cond_75
    add-int/lit8 v8, v6, 0x1

    .line 10
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_94

    and-int/lit16 v6, v6, 0x1fff

    const/16 v9, 0xd

    :goto_81
    add-int/lit8 v11, v8, 0x1

    .line 11
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_91

    and-int/lit16 v8, v8, 0x1fff

    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    add-int/lit8 v9, v9, 0xd

    move v8, v11

    goto :goto_81

    :cond_91
    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    move v8, v11

    :cond_94
    add-int/lit8 v9, v8, 0x1

    .line 12
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_b3

    and-int/lit16 v8, v8, 0x1fff

    const/16 v11, 0xd

    :goto_a0
    add-int/lit8 v12, v9, 0x1

    .line 13
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_b0

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    add-int/lit8 v11, v11, 0xd

    move v9, v12

    goto :goto_a0

    :cond_b0
    shl-int/2addr v9, v11

    or-int/2addr v8, v9

    move v9, v12

    :cond_b3
    add-int/lit8 v11, v9, 0x1

    .line 14
    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_d2

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_bf
    add-int/lit8 v13, v11, 0x1

    .line 15
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_cf

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_bf

    :cond_cf
    shl-int/2addr v11, v12

    or-int/2addr v9, v11

    move v11, v13

    :cond_d2
    add-int/lit8 v12, v11, 0x1

    .line 16
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_f1

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_de
    add-int/lit8 v14, v12, 0x1

    .line 17
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_ee

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_de

    :cond_ee
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_f1
    add-int/lit8 v13, v12, 0x1

    .line 18
    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_110

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_fd
    add-int/lit8 v15, v13, 0x1

    .line 19
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_10d

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_fd

    :cond_10d
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_110
    add-int/lit8 v14, v13, 0x1

    .line 20
    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_131

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_11c
    add-int/lit8 v16, v14, 0x1

    .line 21
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_12d

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_11c

    :cond_12d
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_131
    add-int/lit8 v15, v14, 0x1

    .line 22
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_154

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_13d
    add-int/lit8 v17, v15, 0x1

    .line 23
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_14f

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_13d

    :cond_14f
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_154
    add-int v16, v14, v12

    add-int v13, v16, v13

    .line 24
    new-array v13, v13, [I

    add-int v16, v4, v4

    add-int v16, v16, v6

    move v6, v4

    move v4, v15

    move/from16 v33, v12

    move v12, v9

    move/from16 v9, v33

    .line 25
    :goto_165
    sget-object v15, Lcom/google/android/gms/internal/auth/zzft;->p:Lsun/misc/Unsafe;

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/auth/zzga;->c()[Ljava/lang/Object;

    move-result-object v17

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/auth/zzga;->zza()Lcom/google/android/gms/internal/auth/zzfq;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    mul-int/lit8 v7, v11, 0x3

    .line 28
    new-array v7, v7, [I

    add-int/2addr v11, v11

    .line 29
    new-array v11, v11, [Ljava/lang/Object;

    add-int v21, v14, v9

    move/from16 v22, v14

    move/from16 v23, v21

    const/4 v9, 0x0

    const/16 v20, 0x0

    :goto_183
    if-ge v4, v3, :cond_3ca

    add-int/lit8 v24, v4, 0x1

    .line 30
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1ab

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v2, v24

    const/16 v24, 0xd

    :goto_193
    add-int/lit8 v26, v2, 0x1

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v5, :cond_1a5

    and-int/lit16 v2, v2, 0x1fff

    shl-int v2, v2, v24

    or-int/2addr v4, v2

    add-int/lit8 v24, v24, 0xd

    move/from16 v2, v26

    goto :goto_193

    :cond_1a5
    shl-int v2, v2, v24

    or-int/2addr v4, v2

    move/from16 v2, v26

    goto :goto_1ad

    :cond_1ab
    move/from16 v2, v24

    :goto_1ad
    add-int/lit8 v24, v2, 0x1

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v5, :cond_1da

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v5, v24

    const/16 v24, 0xd

    :goto_1bb
    add-int/lit8 v27, v5, 0x1

    .line 33
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v28, v3

    const v3, 0xd800

    if-lt v5, v3, :cond_1d4

    and-int/lit16 v3, v5, 0x1fff

    shl-int v3, v3, v24

    or-int/2addr v2, v3

    add-int/lit8 v24, v24, 0xd

    move/from16 v5, v27

    move/from16 v3, v28

    goto :goto_1bb

    :cond_1d4
    shl-int v3, v5, v24

    or-int/2addr v2, v3

    move/from16 v3, v27

    goto :goto_1de

    :cond_1da
    move/from16 v28, v3

    move/from16 v3, v24

    :goto_1de
    and-int/lit16 v5, v2, 0xff

    move/from16 v24, v14

    and-int/lit16 v14, v2, 0x400

    if-eqz v14, :cond_1ec

    add-int/lit8 v14, v20, 0x1

    .line 34
    aput v9, v13, v20

    move/from16 v20, v14

    :cond_1ec
    const/16 v14, 0x33

    if-lt v5, v14, :cond_295

    add-int/lit8 v14, v3, 0x1

    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move/from16 v27, v14

    const v14, 0xd800

    if-lt v3, v14, :cond_222

    and-int/lit16 v3, v3, 0x1fff

    move/from16 v14, v27

    const/16 v27, 0xd

    :goto_203
    add-int/lit8 v31, v14, 0x1

    .line 36
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move/from16 v32, v12

    const v12, 0xd800

    if-lt v14, v12, :cond_21c

    and-int/lit16 v12, v14, 0x1fff

    shl-int v12, v12, v27

    or-int/2addr v3, v12

    add-int/lit8 v27, v27, 0xd

    move/from16 v14, v31

    move/from16 v12, v32

    goto :goto_203

    :cond_21c
    shl-int v12, v14, v27

    or-int/2addr v3, v12

    move/from16 v14, v31

    goto :goto_226

    :cond_222
    move/from16 v32, v12

    move/from16 v14, v27

    :goto_226
    add-int/lit8 v12, v5, -0x33

    move/from16 v27, v14

    const/16 v14, 0x9

    if-eq v12, v14, :cond_247

    const/16 v14, 0x11

    if-ne v12, v14, :cond_233

    goto :goto_247

    :cond_233
    const/16 v14, 0xc

    if-ne v12, v14, :cond_256

    if-nez v10, :cond_256

    .line 37
    div-int/lit8 v12, v9, 0x3

    add-int/lit8 v14, v16, 0x1

    add-int/2addr v12, v12

    const/16 v25, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 38
    aget-object v16, v17, v16

    aput-object v16, v11, v12

    goto :goto_254

    .line 39
    :cond_247
    :goto_247
    div-int/lit8 v12, v9, 0x3

    add-int/lit8 v14, v16, 0x1

    add-int/2addr v12, v12

    const/16 v25, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 40
    aget-object v16, v17, v16

    aput-object v16, v11, v12

    :goto_254
    move/from16 v16, v14

    :cond_256
    add-int/2addr v3, v3

    .line 41
    aget-object v12, v17, v3

    .line 42
    instance-of v14, v12, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_260

    .line 43
    check-cast v12, Ljava/lang/reflect/Field;

    goto :goto_268

    .line 44
    :cond_260
    check-cast v12, Ljava/lang/String;

    invoke-static {v1, v12}, Lcom/google/android/gms/internal/auth/zzft;->h(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 45
    aput-object v12, v17, v3

    :goto_268
    move-object/from16 v31, v7

    move v14, v8

    .line 46
    invoke-virtual {v15, v12}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v8, v7

    add-int/lit8 v3, v3, 0x1

    .line 47
    aget-object v7, v17, v3

    .line 48
    instance-of v12, v7, Ljava/lang/reflect/Field;

    if-eqz v12, :cond_27b

    .line 49
    check-cast v7, Ljava/lang/reflect/Field;

    goto :goto_283

    .line 50
    :cond_27b
    check-cast v7, Ljava/lang/String;

    invoke-static {v1, v7}, Lcom/google/android/gms/internal/auth/zzft;->h(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 51
    aput-object v7, v17, v3

    :goto_283
    move v3, v8

    .line 52
    invoke-virtual {v15, v7}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v8, v7

    move-object/from16 v30, v0

    move-object v7, v1

    move v1, v8

    move-object/from16 v29, v11

    const/16 v25, 0x1

    move v8, v3

    const/4 v3, 0x0

    goto/16 :goto_391

    :cond_295
    move-object/from16 v31, v7

    move v14, v8

    move/from16 v32, v12

    add-int/lit8 v7, v16, 0x1

    .line 53
    aget-object v8, v17, v16

    check-cast v8, Ljava/lang/String;

    invoke-static {v1, v8}, Lcom/google/android/gms/internal/auth/zzft;->h(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    const/16 v12, 0x9

    if-eq v5, v12, :cond_30d

    const/16 v12, 0x11

    if-ne v5, v12, :cond_2ad

    goto :goto_30d

    :cond_2ad
    const/16 v12, 0x1b

    if-eq v5, v12, :cond_2fd

    const/16 v12, 0x31

    if-ne v5, v12, :cond_2b6

    goto :goto_2fd

    :cond_2b6
    const/16 v12, 0xc

    if-eq v5, v12, :cond_2ed

    const/16 v12, 0x1e

    if-eq v5, v12, :cond_2ed

    const/16 v12, 0x2c

    if-ne v5, v12, :cond_2c3

    goto :goto_2ed

    :cond_2c3
    const/16 v12, 0x32

    if-ne v5, v12, :cond_2e3

    add-int/lit8 v12, v22, 0x1

    .line 54
    aput v9, v13, v22

    div-int/lit8 v22, v9, 0x3

    add-int v22, v22, v22

    add-int/lit8 v27, v7, 0x1

    .line 55
    aget-object v7, v17, v7

    aput-object v7, v11, v22

    and-int/lit16 v7, v2, 0x800

    if-eqz v7, :cond_2e6

    add-int/lit8 v7, v27, 0x1

    add-int/lit8 v22, v22, 0x1

    .line 56
    aget-object v27, v17, v27

    aput-object v27, v11, v22

    move/from16 v22, v12

    :cond_2e3
    const/16 v25, 0x1

    goto :goto_31a

    :cond_2e6
    move/from16 v22, v12

    move/from16 v12, v27

    const/16 v25, 0x1

    goto :goto_31b

    :cond_2ed
    :goto_2ed
    if-nez v10, :cond_2e3

    .line 57
    div-int/lit8 v12, v9, 0x3

    add-int/lit8 v27, v7, 0x1

    add-int/2addr v12, v12

    const/16 v25, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 58
    aget-object v7, v17, v7

    aput-object v7, v11, v12

    goto :goto_30a

    :cond_2fd
    :goto_2fd
    const/16 v25, 0x1

    .line 59
    div-int/lit8 v12, v9, 0x3

    add-int/lit8 v27, v7, 0x1

    add-int/2addr v12, v12

    add-int/lit8 v12, v12, 0x1

    .line 60
    aget-object v7, v17, v7

    aput-object v7, v11, v12

    :goto_30a
    move/from16 v12, v27

    goto :goto_31b

    :cond_30d
    :goto_30d
    const/16 v25, 0x1

    .line 61
    div-int/lit8 v12, v9, 0x3

    add-int/2addr v12, v12

    add-int/lit8 v12, v12, 0x1

    .line 62
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v27

    aput-object v27, v11, v12

    :goto_31a
    move v12, v7

    .line 63
    :goto_31b
    invoke-virtual {v15, v8}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v7

    long-to-int v8, v7

    and-int/lit16 v7, v2, 0x1000

    const v27, 0xfffff

    move-object/from16 v29, v11

    const/16 v11, 0x1000

    if-ne v7, v11, :cond_378

    const/16 v7, 0x11

    if-gt v5, v7, :cond_378

    add-int/lit8 v7, v3, 0x1

    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const v11, 0xd800

    if-lt v3, v11, :cond_354

    and-int/lit16 v3, v3, 0x1fff

    const/16 v26, 0xd

    :goto_33e
    add-int/lit8 v27, v7, 0x1

    .line 65
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v11, :cond_350

    and-int/lit16 v7, v7, 0x1fff

    shl-int v7, v7, v26

    or-int/2addr v3, v7

    add-int/lit8 v26, v26, 0xd

    move/from16 v7, v27

    goto :goto_33e

    :cond_350
    shl-int v7, v7, v26

    or-int/2addr v3, v7

    goto :goto_356

    :cond_354
    move/from16 v27, v7

    :goto_356
    add-int v7, v6, v6

    div-int/lit8 v26, v3, 0x20

    add-int v7, v7, v26

    .line 66
    aget-object v11, v17, v7

    move-object/from16 v30, v0

    .line 67
    instance-of v0, v11, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_367

    .line 68
    check-cast v11, Ljava/lang/reflect/Field;

    goto :goto_36f

    .line 69
    :cond_367
    check-cast v11, Ljava/lang/String;

    invoke-static {v1, v11}, Lcom/google/android/gms/internal/auth/zzft;->h(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 70
    aput-object v11, v17, v7

    :goto_36f
    move-object v7, v1

    .line 71
    invoke-virtual {v15, v11}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v1, v0

    rem-int/lit8 v3, v3, 0x20

    goto :goto_381

    :cond_378
    move-object/from16 v30, v0

    move-object v7, v1

    move/from16 v27, v3

    const v1, 0xfffff

    const/4 v3, 0x0

    :goto_381
    const/16 v0, 0x12

    if-lt v5, v0, :cond_38f

    const/16 v0, 0x31

    if-gt v5, v0, :cond_38f

    add-int/lit8 v0, v23, 0x1

    .line 72
    aput v8, v13, v23

    move/from16 v23, v0

    :cond_38f
    move/from16 v16, v12

    :goto_391
    add-int/lit8 v0, v9, 0x1

    .line 73
    aput v4, v31, v9

    add-int/lit8 v4, v0, 0x1

    and-int/lit16 v9, v2, 0x200

    if-eqz v9, :cond_39e

    const/high16 v9, 0x20000000

    goto :goto_39f

    :cond_39e
    const/4 v9, 0x0

    :goto_39f
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_3a6

    const/high16 v2, 0x10000000

    goto :goto_3a7

    :cond_3a6
    const/4 v2, 0x0

    :goto_3a7
    or-int/2addr v2, v9

    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v2, v5

    or-int/2addr v2, v8

    .line 74
    aput v2, v31, v0

    add-int/lit8 v9, v4, 0x1

    shl-int/lit8 v0, v3, 0x14

    or-int/2addr v0, v1

    .line 75
    aput v0, v31, v4

    move-object v1, v7

    move v8, v14

    move/from16 v14, v24

    move/from16 v4, v27

    move/from16 v3, v28

    move-object/from16 v11, v29

    move-object/from16 v0, v30

    move-object/from16 v7, v31

    move/from16 v12, v32

    const v5, 0xd800

    goto/16 :goto_183

    :cond_3ca
    move-object/from16 v31, v7

    move-object/from16 v29, v11

    move/from16 v32, v12

    move/from16 v24, v14

    move v14, v8

    .line 76
    new-instance v0, Lcom/google/android/gms/internal/auth/zzft;

    move-object v4, v0

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/auth/zzga;->zza()Lcom/google/android/gms/internal/auth/zzfq;

    move-result-object v9

    const/4 v11, 0x0

    move-object/from16 v1, v29

    const/16 v20, 0x0

    move-object/from16 v5, v31

    move-object v6, v1

    move v7, v14

    move/from16 v8, v32

    move-object v12, v13

    move/from16 v13, v24

    move/from16 v14, v21

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v4 .. v20}, Lcom/google/android/gms/internal/auth/zzft;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/auth/zzfq;ZZ[IIILcom/google/android/gms/internal/auth/zzfv;Lcom/google/android/gms/internal/auth/zzfe;Lcom/google/android/gms/internal/auth/zzgp;Lcom/google/android/gms/internal/auth/zzeh;Lcom/google/android/gms/internal/auth/zzfl;[B)V

    return-object v0
.end method

.method private static v(Ljava/lang/Object;J)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final w(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/auth/zzdp;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;[BIIIJ",
            "Lcom/google/android/gms/internal/auth/zzdp;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object p2, Lcom/google/android/gms/internal/auth/zzft;->p:Lsun/misc/Unsafe;

    .line 1
    invoke-direct {p0, p5}, Lcom/google/android/gms/internal/auth/zzft;->J(I)Ljava/lang/Object;

    move-result-object p3

    .line 2
    invoke-virtual {p2, p1, p6, p7}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p4

    .line 3
    move-object p5, p4

    check-cast p5, Lcom/google/android/gms/internal/auth/zzfk;

    invoke-virtual {p5}, Lcom/google/android/gms/internal/auth/zzfk;->h()Z

    move-result p5

    if-eqz p5, :cond_14

    goto :goto_22

    .line 4
    :cond_14
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzfk;->a()Lcom/google/android/gms/internal/auth/zzfk;

    move-result-object p5

    .line 5
    invoke-virtual {p5}, Lcom/google/android/gms/internal/auth/zzfk;->b()Lcom/google/android/gms/internal/auth/zzfk;

    move-result-object p5

    .line 6
    invoke-static {p5, p4}, Lcom/google/android/gms/internal/auth/zzfl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p2, p1, p6, p7, p5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 8
    :goto_22
    check-cast p3, Lcom/google/android/gms/internal/auth/zzfj;

    const/4 p1, 0x0

    throw p1
.end method

.method private final x(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/auth/zzdp;)I
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIIJI",
            "Lcom/google/android/gms/internal/auth/zzdp;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v2, p5

    move/from16 v8, p6

    move/from16 v5, p7

    move-wide/from16 v9, p10

    move/from16 v6, p12

    move-object/from16 v11, p13

    sget-object v12, Lcom/google/android/gms/internal/auth/zzft;->p:Lsun/misc/Unsafe;

    iget-object v7, v0, Lcom/google/android/gms/internal/auth/zzft;->a:[I

    add-int/lit8 v13, v6, 0x2

    .line 1
    aget v7, v7, v13

    const v13, 0xfffff

    and-int/2addr v7, v13

    int-to-long v13, v7

    const/4 v7, 0x5

    const/4 v15, 0x2

    packed-switch p9, :pswitch_data_1d8

    goto/16 :goto_1d5

    :pswitch_28
    const/4 v7, 0x3

    if-ne v5, v7, :cond_1d5

    .line 2
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/auth/zzft;->I(I)Lcom/google/android/gms/internal/auth/zzgb;

    move-result-object v5

    and-int/lit8 v2, v2, -0x8

    or-int/lit8 v6, v2, 0x4

    move-object v2, v5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p13

    .line 3
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/auth/zzdq;->c(Lcom/google/android/gms/internal/auth/zzgb;[BIIILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v2

    .line 4
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_4b

    .line 5
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_4c

    :cond_4b
    const/4 v15, 0x0

    :goto_4c
    if-nez v15, :cond_54

    iget-object v3, v11, Lcom/google/android/gms/internal/auth/zzdp;->c:Ljava/lang/Object;

    .line 6
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5d

    .line 7
    :cond_54
    iget-object v3, v11, Lcom/google/android/gms/internal/auth/zzdp;->c:Ljava/lang/Object;

    .line 8
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/auth/zzev;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 9
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 10
    :goto_5d
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1d6

    :pswitch_62
    if-eqz v5, :cond_66

    goto/16 :goto_1d5

    .line 11
    :cond_66
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/auth/zzdq;->m([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/auth/zzdp;->b:J

    .line 12
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzee;->b(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_7b
    if-eqz v5, :cond_7f

    goto/16 :goto_1d5

    .line 14
    :cond_7f
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    .line 15
    invoke-static {v3}, Lcom/google/android/gms/internal/auth/zzee;->a(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 16
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_94
    if-nez v5, :cond_1d5

    .line 17
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v3

    iget v4, v11, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    .line 18
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/auth/zzft;->H(I)Lcom/google/android/gms/internal/auth/zzet;

    move-result-object v5

    if-eqz v5, :cond_b6

    .line 19
    invoke-interface {v5}, Lcom/google/android/gms/internal/auth/zzet;->zza()Z

    move-result v5

    if-eqz v5, :cond_a9

    goto :goto_b6

    .line 20
    :cond_a9
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/auth/zzft;->s(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzgq;

    move-result-object v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/internal/auth/zzgq;->f(ILjava/lang/Object;)V

    goto :goto_c0

    .line 21
    :cond_b6
    :goto_b6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 22
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_c0
    move v2, v3

    goto/16 :goto_1d6

    :pswitch_c3
    if-eq v5, v15, :cond_c7

    goto/16 :goto_1d5

    .line 23
    :cond_c7
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/auth/zzdq;->a([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v2

    iget-object v3, v11, Lcom/google/android/gms/internal/auth/zzdp;->c:Ljava/lang/Object;

    .line 24
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 25
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_d4
    if-ne v5, v15, :cond_1d5

    .line 26
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/auth/zzft;->I(I)Lcom/google/android/gms/internal/auth/zzgb;

    move-result-object v2

    move/from16 v5, p4

    .line 27
    invoke-static {v2, v3, v4, v5, v11}, Lcom/google/android/gms/internal/auth/zzdq;->d(Lcom/google/android/gms/internal/auth/zzgb;[BIILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v2

    .line 28
    invoke-virtual {v12, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v3

    if-ne v3, v8, :cond_eb

    .line 29
    invoke-virtual {v12, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v15

    goto :goto_ec

    :cond_eb
    const/4 v15, 0x0

    :goto_ec
    if-nez v15, :cond_f4

    iget-object v3, v11, Lcom/google/android/gms/internal/auth/zzdp;->c:Ljava/lang/Object;

    .line 30
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_fd

    .line 31
    :cond_f4
    iget-object v3, v11, Lcom/google/android/gms/internal/auth/zzdp;->c:Ljava/lang/Object;

    .line 32
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/auth/zzev;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 33
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 34
    :goto_fd
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1d6

    :pswitch_102
    if-ne v5, v15, :cond_1d5

    .line 35
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v2

    iget v4, v11, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    if-nez v4, :cond_112

    const-string v3, ""

    .line 36
    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_131

    :cond_112
    const/high16 v5, 0x20000000

    and-int v5, p8, v5

    if-eqz v5, :cond_126

    add-int v5, v2, v4

    .line 37
    invoke-static {v3, v2, v5}, Lcom/google/android/gms/internal/auth/zzhd;->d([BII)Z

    move-result v5

    if-eqz v5, :cond_121

    goto :goto_126

    .line 38
    :cond_121
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzew;->b()Lcom/google/android/gms/internal/auth/zzew;

    move-result-object v1

    throw v1

    .line 39
    :cond_126
    :goto_126
    new-instance v5, Ljava/lang/String;

    .line 40
    sget-object v6, Lcom/google/android/gms/internal/auth/zzev;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v3, v2, v4, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 41
    invoke-virtual {v12, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    add-int/2addr v2, v4

    .line 42
    :goto_131
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1d6

    :pswitch_136
    if-nez v5, :cond_1d5

    .line 43
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/auth/zzdq;->m([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/auth/zzdp;->b:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_146

    const/4 v15, 0x1

    goto :goto_147

    :cond_146
    const/4 v15, 0x0

    .line 44
    :goto_147
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 45
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_152
    if-eq v5, v7, :cond_156

    goto/16 :goto_1d5

    .line 46
    :cond_156
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/auth/zzdq;->b([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 47
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x4

    return v1

    :pswitch_167
    const/4 v2, 0x1

    if-eq v5, v2, :cond_16b

    goto :goto_1d5

    .line 48
    :cond_16b
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/auth/zzdq;->n([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 49
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x8

    return v1

    :pswitch_17c
    if-eqz v5, :cond_17f

    goto :goto_1d5

    .line 50
    :cond_17f
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v2

    iget v3, v11, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 52
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_190
    if-eqz v5, :cond_193

    goto :goto_1d5

    .line 53
    :cond_193
    invoke-static {v3, v4, v11}, Lcom/google/android/gms/internal/auth/zzdq;->m([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v2

    iget-wide v3, v11, Lcom/google/android/gms/internal/auth/zzdp;->b:J

    .line 54
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v12, v1, v9, v10, v3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 55
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return v2

    :pswitch_1a4
    if-eq v5, v7, :cond_1a7

    goto :goto_1d5

    .line 56
    :cond_1a7
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/auth/zzdq;->b([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 57
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 58
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x4

    return v1

    :pswitch_1bc
    const/4 v2, 0x1

    if-eq v5, v2, :cond_1c0

    goto :goto_1d5

    .line 59
    :cond_1c0
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/auth/zzdq;->n([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 60
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v12, v1, v9, v10, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 61
    invoke-virtual {v12, v1, v13, v14, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v1, v4, 0x8

    return v1

    :cond_1d5
    :goto_1d5
    move v2, v4

    :goto_1d6
    return v2

    nop

    :pswitch_data_1d8
    .packed-switch 0x33
        :pswitch_1bc
        :pswitch_1a4
        :pswitch_190
        :pswitch_190
        :pswitch_17c
        :pswitch_167
        :pswitch_152
        :pswitch_136
        :pswitch_102
        :pswitch_d4
        :pswitch_c3
        :pswitch_17c
        :pswitch_94
        :pswitch_152
        :pswitch_167
        :pswitch_7b
        :pswitch_62
        :pswitch_28
    .end packed-switch
.end method

.method private final y(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/zzdp;)I
    .registers 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/auth/zzdp;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    sget-object v9, Lcom/google/android/gms/internal/auth/zzft;->p:Lsun/misc/Unsafe;

    const/4 v10, -0x1

    const/16 v16, 0x0

    const v8, 0xfffff

    move/from16 v0, p3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const v7, 0xfffff

    :goto_1a
    if-ge v0, v13, :cond_33d

    add-int/lit8 v3, v0, 0x1

    .line 1
    aget-byte v0, v12, v0

    if-gez v0, :cond_2c

    .line 2
    invoke-static {v0, v12, v3, v11}, Lcom/google/android/gms/internal/auth/zzdq;->k(I[BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    iget v3, v11, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    move v4, v0

    move/from16 v17, v3

    goto :goto_2f

    :cond_2c
    move/from16 v17, v0

    move v4, v3

    :goto_2f
    ushr-int/lit8 v5, v17, 0x3

    and-int/lit8 v3, v17, 0x7

    if-le v5, v1, :cond_3c

    div-int/lit8 v2, v2, 0x3

    .line 3
    invoke-direct {v15, v5, v2}, Lcom/google/android/gms/internal/auth/zzft;->B(II)I

    move-result v0

    goto :goto_40

    .line 4
    :cond_3c
    invoke-direct {v15, v5}, Lcom/google/android/gms/internal/auth/zzft;->A(I)I

    move-result v0

    :goto_40
    move v2, v0

    if-ne v2, v10, :cond_4e

    move v2, v4

    move/from16 v20, v5

    move-object/from16 v28, v9

    const/16 v18, -0x1

    const/16 v19, 0x0

    goto/16 :goto_317

    .line 5
    :cond_4e
    iget-object v0, v15, Lcom/google/android/gms/internal/auth/zzft;->a:[I

    add-int/lit8 v1, v2, 0x1

    .line 6
    aget v1, v0, v1

    invoke-static {v1}, Lcom/google/android/gms/internal/auth/zzft;->E(I)I

    move-result v0

    and-int v10, v1, v8

    move-object/from16 v19, v9

    int-to-long v8, v10

    const/16 v10, 0x11

    move/from16 p3, v5

    if-gt v0, v10, :cond_213

    iget-object v10, v15, Lcom/google/android/gms/internal/auth/zzft;->a:[I

    add-int/lit8 v21, v2, 0x2

    .line 7
    aget v10, v10, v21

    ushr-int/lit8 v21, v10, 0x14

    const/4 v5, 0x1

    shl-int v21, v5, v21

    const v13, 0xfffff

    and-int/2addr v10, v13

    if-eq v10, v7, :cond_90

    move/from16 v23, v1

    move/from16 v20, v2

    if-eq v7, v13, :cond_81

    int-to-long v1, v7

    move-object/from16 v7, v19

    .line 8
    invoke-virtual {v7, v14, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_83

    :cond_81
    move-object/from16 v7, v19

    :goto_83
    if-eq v10, v13, :cond_8a

    int-to-long v1, v10

    .line 9
    invoke-virtual {v7, v14, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v6

    :cond_8a
    move/from16 v29, v10

    move-object v10, v7

    move/from16 v7, v29

    goto :goto_96

    :cond_90
    move/from16 v23, v1

    move/from16 v20, v2

    move-object/from16 v10, v19

    :goto_96
    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_35c

    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    goto/16 :goto_20a

    :pswitch_a3
    if-nez v3, :cond_bc

    .line 10
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/auth/zzdq;->m([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v17

    iget-wide v0, v11, Lcom/google/android/gms/internal/auth/zzdp;->b:J

    .line 11
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/auth/zzee;->b(J)J

    move-result-wide v4

    move-object v0, v10

    move-object/from16 v1, p1

    move/from16 v13, v20

    move-wide v2, v8

    move/from16 v20, p3

    .line 12
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_1d2

    :cond_bc
    move/from16 v13, v20

    move/from16 v20, p3

    goto :goto_126

    :pswitch_c1
    move/from16 v13, v20

    move/from16 v20, p3

    if-nez v3, :cond_126

    .line 13
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    .line 14
    invoke-static {v1}, Lcom/google/android/gms/internal/auth/zzee;->a(I)I

    move-result v1

    .line 15
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_207

    :pswitch_d6
    move/from16 v13, v20

    move/from16 v20, p3

    if-nez v3, :cond_126

    .line 16
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    .line 17
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_207

    :pswitch_e7
    move/from16 v13, v20

    const/4 v0, 0x2

    move/from16 v20, p3

    if-ne v3, v0, :cond_126

    .line 18
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/auth/zzdq;->a([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    iget-object v1, v11, Lcom/google/android/gms/internal/auth/zzdp;->c:Ljava/lang/Object;

    .line 19
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_207

    :pswitch_f9
    move/from16 v13, v20

    const/4 v0, 0x2

    move/from16 v20, p3

    if-ne v3, v0, :cond_124

    .line 20
    invoke-direct {v15, v13}, Lcom/google/android/gms/internal/auth/zzft;->I(I)Lcom/google/android/gms/internal/auth/zzgb;

    move-result-object v0

    move/from16 v2, p4

    const v19, 0xfffff

    .line 21
    invoke-static {v0, v12, v4, v2, v11}, Lcom/google/android/gms/internal/auth/zzdq;->d(Lcom/google/android/gms/internal/auth/zzgb;[BIILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    .line 22
    invoke-virtual {v10, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11a

    iget-object v1, v11, Lcom/google/android/gms/internal/auth/zzdp;->c:Ljava/lang/Object;

    .line 23
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_17d

    :cond_11a
    iget-object v3, v11, Lcom/google/android/gms/internal/auth/zzdp;->c:Ljava/lang/Object;

    .line 24
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/auth/zzev;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 25
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_17d

    :cond_124
    move/from16 v2, p4

    :cond_126
    :goto_126
    const v19, 0xfffff

    goto/16 :goto_20a

    :pswitch_12b
    move/from16 v2, p4

    move/from16 v13, v20

    const/4 v0, 0x2

    const v19, 0xfffff

    move/from16 v20, p3

    if-ne v3, v0, :cond_20a

    const/high16 v0, 0x20000000

    and-int v0, v23, v0

    if-nez v0, :cond_142

    .line 26
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/auth/zzdq;->g([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    goto :goto_146

    .line 27
    :cond_142
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/auth/zzdq;->h([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    .line 28
    :goto_146
    iget-object v1, v11, Lcom/google/android/gms/internal/auth/zzdp;->c:Ljava/lang/Object;

    .line 29
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_17d

    :pswitch_14c
    move/from16 v2, p4

    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-nez v3, :cond_20a

    .line 30
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/auth/zzdq;->m([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    iget-wide v3, v11, Lcom/google/android/gms/internal/auth/zzdp;->b:J

    const-wide/16 v22, 0x0

    cmp-long v1, v3, v22

    if-eqz v1, :cond_164

    goto :goto_165

    :cond_164
    const/4 v5, 0x0

    .line 31
    :goto_165
    invoke-static {v14, v8, v9, v5}, Lcom/google/android/gms/internal/auth/zzgz;->k(Ljava/lang/Object;JZ)V

    goto :goto_17d

    :pswitch_169
    move/from16 v2, p4

    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-ne v3, v1, :cond_20a

    .line 32
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/auth/zzdq;->b([BI)I

    move-result v0

    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v4, 0x4

    :goto_17d
    or-int v6, v6, v21

    move-object v9, v10

    move/from16 v1, v20

    const v8, 0xfffff

    const/4 v10, -0x1

    move/from16 v29, v13

    move v13, v2

    move/from16 v2, v29

    goto/16 :goto_1a

    :pswitch_18d
    move/from16 v2, p4

    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-ne v3, v5, :cond_20a

    .line 33
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/auth/zzdq;->n([BI)J

    move-result-wide v22

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v8

    move v8, v4

    move-wide/from16 v4, v22

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v8, 0x8

    goto :goto_207

    :pswitch_1a9
    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-nez v3, :cond_20a

    .line 34
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    iget v1, v11, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    .line 35
    invoke-virtual {v10, v14, v8, v9, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_207

    :pswitch_1bc
    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-nez v3, :cond_20a

    .line 36
    invoke-static {v12, v4, v11}, Lcom/google/android/gms/internal/auth/zzdq;->m([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v17

    iget-wide v4, v11, Lcom/google/android/gms/internal/auth/zzdp;->b:J

    move-object v0, v10

    move-object/from16 v1, p1

    move-wide v2, v8

    .line 37
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_1d2
    or-int v6, v6, v21

    move-object v9, v10

    move v2, v13

    move/from16 v0, v17

    goto/16 :goto_257

    :pswitch_1da
    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-ne v3, v1, :cond_20a

    .line 38
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/auth/zzdq;->b([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 39
    invoke-static {v14, v8, v9, v0}, Lcom/google/android/gms/internal/auth/zzgz;->m(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v4, 0x4

    goto :goto_207

    :pswitch_1f1
    move/from16 v13, v20

    const v19, 0xfffff

    move/from16 v20, p3

    if-ne v3, v5, :cond_20a

    .line 40
    invoke-static {v12, v4}, Lcom/google/android/gms/internal/auth/zzdq;->n([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 41
    invoke-static {v14, v8, v9, v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->l(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v4, 0x8

    :goto_207
    or-int v6, v6, v21

    goto :goto_255

    :cond_20a
    :goto_20a
    move v2, v4

    move-object/from16 v28, v10

    move/from16 v19, v13

    const/16 v18, -0x1

    goto/16 :goto_317

    :cond_213
    move/from16 v20, p3

    move/from16 v23, v1

    move v13, v2

    move-object/from16 v10, v19

    const v19, 0xfffff

    const/16 v1, 0x1b

    if-ne v0, v1, :cond_26e

    const/4 v1, 0x2

    if-ne v3, v1, :cond_261

    .line 42
    invoke-virtual {v10, v14, v8, v9}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/auth/zzeu;

    .line 43
    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzeu;->a()Z

    move-result v1

    if-nez v1, :cond_241

    .line 44
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_239

    const/16 v1, 0xa

    goto :goto_23a

    :cond_239
    add-int/2addr v1, v1

    .line 45
    :goto_23a
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/auth/zzeu;->K(I)Lcom/google/android/gms/internal/auth/zzeu;

    move-result-object v0

    .line 46
    invoke-virtual {v10, v14, v8, v9, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_241
    move-object v5, v0

    .line 47
    invoke-direct {v15, v13}, Lcom/google/android/gms/internal/auth/zzft;->I(I)Lcom/google/android/gms/internal/auth/zzgb;

    move-result-object v0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move v3, v4

    move/from16 v4, p4

    move v8, v6

    move-object/from16 v6, p5

    .line 48
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/auth/zzdq;->e(Lcom/google/android/gms/internal/auth/zzgb;I[BIILcom/google/android/gms/internal/auth/zzeu;Lcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    move v6, v8

    :goto_255
    move-object v9, v10

    move v2, v13

    :goto_257
    move/from16 v1, v20

    const v8, 0xfffff

    const/4 v10, -0x1

    move/from16 v13, p4

    goto/16 :goto_1a

    :cond_261
    move v15, v4

    move/from16 v24, v6

    move/from16 v25, v7

    move-object/from16 v28, v10

    move/from16 v19, v13

    const/16 v18, -0x1

    goto/16 :goto_2f4

    :cond_26e
    const/16 v1, 0x31

    if-gt v0, v1, :cond_2c0

    move/from16 v1, v23

    int-to-long v1, v1

    move v5, v0

    move-object/from16 v0, p0

    move-wide/from16 v21, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 p3, v3

    move v3, v4

    move v15, v4

    move/from16 v4, p4

    move/from16 v23, v5

    move/from16 v5, v17

    move/from16 v24, v6

    move/from16 v6, v20

    move/from16 v25, v7

    move/from16 v7, p3

    move-wide/from16 v26, v8

    const v9, 0xfffff

    move v8, v13

    move-object/from16 v28, v10

    const/16 v18, -0x1

    move-wide/from16 v9, v21

    move/from16 v11, v23

    move/from16 v19, v13

    move-wide/from16 v12, v26

    move-object/from16 v14, p5

    .line 49
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/auth/zzft;->z(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    if-eq v0, v15, :cond_2be

    :goto_2aa
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v2, v19

    move/from16 v1, v20

    move/from16 v6, v24

    move/from16 v7, v25

    goto/16 :goto_335

    :cond_2be
    move v2, v0

    goto :goto_2f5

    :cond_2c0
    move/from16 p3, v3

    move v15, v4

    move/from16 v24, v6

    move/from16 v25, v7

    move-wide/from16 v26, v8

    move-object/from16 v28, v10

    move/from16 v19, v13

    move/from16 v1, v23

    const/16 v18, -0x1

    move/from16 v23, v0

    const/16 v0, 0x32

    move/from16 v9, v23

    if-ne v9, v0, :cond_2fa

    move/from16 v7, p3

    const/4 v0, 0x2

    if-ne v7, v0, :cond_2f4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v19

    move-wide/from16 v6, v26

    move-object/from16 v8, p5

    .line 50
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/auth/zzft;->w(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    if-eq v0, v15, :cond_2be

    goto :goto_2aa

    :cond_2f4
    :goto_2f4
    move v2, v15

    :goto_2f5
    move/from16 v6, v24

    move/from16 v7, v25

    goto :goto_317

    :cond_2fa
    move/from16 v7, p3

    move-object/from16 v0, p0

    move v8, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v17

    move/from16 v6, v20

    move-wide/from16 v10, v26

    move/from16 v12, v19

    move-object/from16 v13, p5

    .line 51
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/auth/zzft;->x(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    if-eq v0, v15, :cond_2be

    goto :goto_2aa

    .line 52
    :goto_317
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/auth/zzft;->s(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzgq;

    move-result-object v4

    move/from16 v0, v17

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p5

    .line 53
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/auth/zzdq;->i(I[BIILcom/google/android/gms/internal/auth/zzgq;Lcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v11, p5

    move/from16 v2, v19

    move/from16 v1, v20

    :goto_335
    move-object/from16 v9, v28

    const v8, 0xfffff

    const/4 v10, -0x1

    goto/16 :goto_1a

    :cond_33d
    move/from16 v24, v6

    move-object/from16 v28, v9

    const v1, 0xfffff

    if-eq v7, v1, :cond_350

    int-to-long v1, v7

    move-object/from16 v3, p1

    move/from16 v6, v24

    move-object/from16 v4, v28

    .line 54
    invoke-virtual {v4, v3, v1, v2, v6}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_350
    move/from16 v1, p4

    if-ne v0, v1, :cond_355

    return v0

    .line 55
    :cond_355
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzew;->d()Lcom/google/android/gms/internal/auth/zzew;

    move-result-object v0

    goto :goto_35b

    :goto_35a
    throw v0

    :goto_35b
    goto :goto_35a

    :pswitch_data_35c
    .packed-switch 0x0
        :pswitch_1f1
        :pswitch_1da
        :pswitch_1bc
        :pswitch_1bc
        :pswitch_1a9
        :pswitch_18d
        :pswitch_169
        :pswitch_14c
        :pswitch_12b
        :pswitch_f9
        :pswitch_e7
        :pswitch_1a9
        :pswitch_d6
        :pswitch_169
        :pswitch_18d
        :pswitch_c1
        :pswitch_a3
    .end packed-switch
.end method

.method private final z(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/auth/zzdp;)I
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIIIIIIJIJ",
            "Lcom/google/android/gms/internal/auth/zzdp;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v2, p5

    move/from16 v6, p7

    move/from16 v8, p8

    move-wide/from16 v9, p12

    move-object/from16 v7, p14

    sget-object v11, Lcom/google/android/gms/internal/auth/zzft;->p:Lsun/misc/Unsafe;

    .line 1
    invoke-virtual {v11, v1, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/internal/auth/zzeu;

    .line 2
    invoke-interface {v12}, Lcom/google/android/gms/internal/auth/zzeu;->a()Z

    move-result v13

    if-nez v13, :cond_32

    .line 3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    if-nez v13, :cond_2a

    const/16 v13, 0xa

    goto :goto_2b

    :cond_2a
    add-int/2addr v13, v13

    .line 4
    :goto_2b
    invoke-interface {v12, v13}, Lcom/google/android/gms/internal/auth/zzeu;->K(I)Lcom/google/android/gms/internal/auth/zzeu;

    move-result-object v12

    .line 5
    invoke-virtual {v11, v1, v9, v10, v12}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_32
    const/4 v9, 0x5

    const-wide/16 v10, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x2

    packed-switch p11, :pswitch_data_452

    const/4 v1, 0x3

    if-ne v6, v1, :cond_44f

    .line 6
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/auth/zzft;->I(I)Lcom/google/android/gms/internal/auth/zzgb;

    move-result-object v1

    and-int/lit8 v6, v2, -0x8

    or-int/lit8 v6, v6, 0x4

    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, p3

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 7
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/auth/zzdq;->c(Lcom/google/android/gms/internal/auth/zzgb;[BIIILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v4

    iget-object v8, v7, Lcom/google/android/gms/internal/auth/zzdp;->c:Ljava/lang/Object;

    .line 8
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_42d

    :pswitch_5c
    if-ne v6, v14, :cond_80

    .line 9
    check-cast v12, Lcom/google/android/gms/internal/auth/zzff;

    .line 10
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    add-int/2addr v2, v1

    :goto_67
    if-ge v1, v2, :cond_77

    .line 11
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/auth/zzdq;->m([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v1

    iget-wide v4, v7, Lcom/google/android/gms/internal/auth/zzdp;->b:J

    .line 12
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/auth/zzee;->b(J)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/auth/zzff;->g(J)V

    goto :goto_67

    :cond_77
    if-ne v1, v2, :cond_7b

    goto/16 :goto_450

    .line 13
    :cond_7b
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzew;->f()Lcom/google/android/gms/internal/auth/zzew;

    move-result-object v1

    throw v1

    :cond_80
    if-nez v6, :cond_44f

    .line 14
    check-cast v12, Lcom/google/android/gms/internal/auth/zzff;

    .line 15
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/auth/zzdq;->m([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/auth/zzdp;->b:J

    .line 16
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/auth/zzee;->b(J)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/auth/zzff;->g(J)V

    :goto_91
    if-ge v1, v5, :cond_aa

    .line 17
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    if-eq v2, v6, :cond_9c

    goto :goto_aa

    .line 18
    :cond_9c
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/auth/zzdq;->m([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/auth/zzdp;->b:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/auth/zzee;->b(J)J

    move-result-wide v8

    .line 19
    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/auth/zzff;->g(J)V

    goto :goto_91

    :cond_aa
    :goto_aa
    return v1

    :pswitch_ab
    if-ne v6, v14, :cond_cf

    .line 20
    check-cast v12, Lcom/google/android/gms/internal/auth/zzer;

    .line 21
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    add-int/2addr v2, v1

    :goto_b6
    if-ge v1, v2, :cond_c6

    .line 22
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    .line 23
    invoke-static {v4}, Lcom/google/android/gms/internal/auth/zzee;->a(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/auth/zzer;->g(I)V

    goto :goto_b6

    :cond_c6
    if-ne v1, v2, :cond_ca

    goto/16 :goto_450

    .line 24
    :cond_ca
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzew;->f()Lcom/google/android/gms/internal/auth/zzew;

    move-result-object v1

    throw v1

    :cond_cf
    if-nez v6, :cond_44f

    .line 25
    check-cast v12, Lcom/google/android/gms/internal/auth/zzer;

    .line 26
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    .line 27
    invoke-static {v4}, Lcom/google/android/gms/internal/auth/zzee;->a(I)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/auth/zzer;->g(I)V

    :goto_e0
    if-ge v1, v5, :cond_f9

    .line 28
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    if-eq v2, v6, :cond_eb

    goto :goto_f9

    .line 29
    :cond_eb
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    invoke-static {v4}, Lcom/google/android/gms/internal/auth/zzee;->a(I)I

    move-result v4

    .line 30
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/auth/zzer;->g(I)V

    goto :goto_e0

    :cond_f9
    :goto_f9
    return v1

    :pswitch_fa
    if-ne v6, v14, :cond_101

    .line 31
    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/auth/zzdq;->f([BILcom/google/android/gms/internal/auth/zzeu;Lcom/google/android/gms/internal/auth/zzdp;)I

    move-result v2

    goto :goto_112

    :cond_101
    if-nez v6, :cond_44f

    move/from16 v2, p5

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v12

    move-object/from16 v7, p14

    .line 32
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/auth/zzdq;->l(I[BIILcom/google/android/gms/internal/auth/zzeu;Lcom/google/android/gms/internal/auth/zzdp;)I

    move-result v2

    .line 33
    :goto_112
    check-cast v1, Lcom/google/android/gms/internal/auth/zzeq;

    iget-object v3, v1, Lcom/google/android/gms/internal/auth/zzeq;->zzc:Lcom/google/android/gms/internal/auth/zzgq;

    invoke-static {}, Lcom/google/android/gms/internal/auth/zzgq;->a()Lcom/google/android/gms/internal/auth/zzgq;

    move-result-object v4

    if-ne v3, v4, :cond_11d

    const/4 v3, 0x0

    .line 34
    :cond_11d
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/auth/zzft;->H(I)Lcom/google/android/gms/internal/auth/zzet;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/gms/internal/auth/zzft;->k:Lcom/google/android/gms/internal/auth/zzgp;

    move/from16 v6, p6

    .line 35
    invoke-static {v6, v12, v4, v3, v5}, Lcom/google/android/gms/internal/auth/zzgd;->d(ILjava/util/List;Lcom/google/android/gms/internal/auth/zzet;Ljava/lang/Object;Lcom/google/android/gms/internal/auth/zzgp;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_12d

    goto/16 :goto_27b

    :cond_12d
    check-cast v3, Lcom/google/android/gms/internal/auth/zzgq;

    iput-object v3, v1, Lcom/google/android/gms/internal/auth/zzeq;->zzc:Lcom/google/android/gms/internal/auth/zzgq;

    return v2

    :pswitch_132
    if-ne v6, v14, :cond_44f

    .line 36
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    if-ltz v4, :cond_187

    .line 37
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_182

    if-nez v4, :cond_148

    .line 38
    sget-object v4, Lcom/google/android/gms/internal/auth/zzeb;->p:Lcom/google/android/gms/internal/auth/zzeb;

    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_150

    .line 39
    :cond_148
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/auth/zzeb;->p([BII)Lcom/google/android/gms/internal/auth/zzeb;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_14f
    add-int/2addr v1, v4

    :goto_150
    if-ge v1, v5, :cond_181

    .line 40
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    if-eq v2, v6, :cond_15b

    goto :goto_181

    .line 41
    :cond_15b
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v1

    iget v4, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    if-ltz v4, :cond_17c

    .line 42
    array-length v6, v3

    sub-int/2addr v6, v1

    if-gt v4, v6, :cond_177

    if-nez v4, :cond_16f

    .line 43
    sget-object v4, Lcom/google/android/gms/internal/auth/zzeb;->p:Lcom/google/android/gms/internal/auth/zzeb;

    .line 44
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_150

    .line 45
    :cond_16f
    invoke-static {v3, v1, v4}, Lcom/google/android/gms/internal/auth/zzeb;->p([BII)Lcom/google/android/gms/internal/auth/zzeb;

    move-result-object v6

    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14f

    .line 46
    :cond_177
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzew;->f()Lcom/google/android/gms/internal/auth/zzew;

    move-result-object v1

    throw v1

    .line 47
    :cond_17c
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzew;->c()Lcom/google/android/gms/internal/auth/zzew;

    move-result-object v1

    throw v1

    :cond_181
    :goto_181
    return v1

    .line 48
    :cond_182
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzew;->f()Lcom/google/android/gms/internal/auth/zzew;

    move-result-object v1

    throw v1

    .line 49
    :cond_187
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzew;->c()Lcom/google/android/gms/internal/auth/zzew;

    move-result-object v1

    throw v1

    :pswitch_18c
    if-eq v6, v14, :cond_190

    goto/16 :goto_44f

    .line 50
    :cond_190
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/auth/zzft;->I(I)Lcom/google/android/gms/internal/auth/zzgb;

    move-result-object v1

    move-object/from16 p6, v1

    move/from16 p7, p5

    move-object/from16 p8, p2

    move/from16 p9, p3

    move/from16 p10, p4

    move-object/from16 p11, v12

    move-object/from16 p12, p14

    .line 51
    invoke-static/range {p6 .. p12}, Lcom/google/android/gms/internal/auth/zzdq;->e(Lcom/google/android/gms/internal/auth/zzgb;I[BIILcom/google/android/gms/internal/auth/zzeu;Lcom/google/android/gms/internal/auth/zzdp;)I

    move-result v1

    return v1

    :pswitch_1a7
    if-ne v6, v14, :cond_44f

    const-wide/32 v8, 0x20000000

    and-long v8, p9, v8

    const-string v1, ""

    cmp-long v6, v8, v10

    if-nez v6, :cond_1fa

    .line 52
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    if-ltz v6, :cond_1f5

    if-nez v6, :cond_1c2

    .line 53
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1cd

    .line 54
    :cond_1c2
    new-instance v8, Ljava/lang/String;

    .line 55
    sget-object v9, Lcom/google/android/gms/internal/auth/zzev;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 56
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1cc
    add-int/2addr v4, v6

    :goto_1cd
    if-ge v4, v5, :cond_44f

    .line 57
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    if-ne v2, v8, :cond_44f

    .line 58
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    if-ltz v6, :cond_1f0

    if-nez v6, :cond_1e5

    .line 59
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1cd

    :cond_1e5
    new-instance v8, Ljava/lang/String;

    .line 60
    sget-object v9, Lcom/google/android/gms/internal/auth/zzev;->a:Ljava/nio/charset/Charset;

    invoke-direct {v8, v3, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 61
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1cc

    .line 62
    :cond_1f0
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzew;->c()Lcom/google/android/gms/internal/auth/zzew;

    move-result-object v1

    throw v1

    .line 63
    :cond_1f5
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzew;->c()Lcom/google/android/gms/internal/auth/zzew;

    move-result-object v1

    throw v1

    .line 64
    :cond_1fa
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    if-ltz v6, :cond_255

    if-nez v6, :cond_208

    .line 65
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21b

    :cond_208
    add-int v8, v4, v6

    .line 66
    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/auth/zzhd;->d([BII)Z

    move-result v9

    if-eqz v9, :cond_250

    .line 67
    new-instance v9, Ljava/lang/String;

    .line 68
    sget-object v10, Lcom/google/android/gms/internal/auth/zzev;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 69
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_21a
    move v4, v8

    :goto_21b
    if-ge v4, v5, :cond_44f

    .line 70
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    if-ne v2, v8, :cond_44f

    .line 71
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    if-ltz v6, :cond_24b

    if-nez v6, :cond_233

    .line 72
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21b

    :cond_233
    add-int v8, v4, v6

    .line 73
    invoke-static {v3, v4, v8}, Lcom/google/android/gms/internal/auth/zzhd;->d([BII)Z

    move-result v9

    if-eqz v9, :cond_246

    .line 74
    new-instance v9, Ljava/lang/String;

    .line 75
    sget-object v10, Lcom/google/android/gms/internal/auth/zzev;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v3, v4, v6, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 76
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21a

    .line 77
    :cond_246
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzew;->b()Lcom/google/android/gms/internal/auth/zzew;

    move-result-object v1

    throw v1

    .line 78
    :cond_24b
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzew;->c()Lcom/google/android/gms/internal/auth/zzew;

    move-result-object v1

    throw v1

    .line 79
    :cond_250
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzew;->b()Lcom/google/android/gms/internal/auth/zzew;

    move-result-object v1

    throw v1

    .line 80
    :cond_255
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzew;->c()Lcom/google/android/gms/internal/auth/zzew;

    move-result-object v1

    throw v1

    :pswitch_25a
    const/4 v1, 0x0

    if-ne v6, v14, :cond_283

    .line 81
    check-cast v12, Lcom/google/android/gms/internal/auth/zzdr;

    .line 82
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v2

    iget v4, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    add-int/2addr v4, v2

    :goto_266
    if-ge v2, v4, :cond_279

    .line 83
    invoke-static {v3, v2, v7}, Lcom/google/android/gms/internal/auth/zzdq;->m([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v2

    iget-wide v5, v7, Lcom/google/android/gms/internal/auth/zzdp;->b:J

    cmp-long v8, v5, v10

    if-eqz v8, :cond_274

    const/4 v5, 0x1

    goto :goto_275

    :cond_274
    const/4 v5, 0x0

    .line 84
    :goto_275
    invoke-virtual {v12, v5}, Lcom/google/android/gms/internal/auth/zzdr;->g(Z)V

    goto :goto_266

    :cond_279
    if-ne v2, v4, :cond_27e

    :goto_27b
    move v1, v2

    goto/16 :goto_450

    .line 85
    :cond_27e
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzew;->f()Lcom/google/android/gms/internal/auth/zzew;

    move-result-object v1

    throw v1

    :cond_283
    if-nez v6, :cond_44f

    .line 86
    check-cast v12, Lcom/google/android/gms/internal/auth/zzdr;

    .line 87
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/auth/zzdq;->m([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v4

    iget-wide v8, v7, Lcom/google/android/gms/internal/auth/zzdp;->b:J

    cmp-long v6, v8, v10

    if-eqz v6, :cond_293

    const/4 v6, 0x1

    goto :goto_294

    :cond_293
    const/4 v6, 0x0

    .line 88
    :goto_294
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/auth/zzdr;->g(Z)V

    :goto_297
    if-ge v4, v5, :cond_2b3

    .line 89
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v6

    iget v8, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    if-eq v2, v8, :cond_2a2

    goto :goto_2b3

    .line 90
    :cond_2a2
    invoke-static {v3, v6, v7}, Lcom/google/android/gms/internal/auth/zzdq;->m([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v4

    iget-wide v8, v7, Lcom/google/android/gms/internal/auth/zzdp;->b:J

    cmp-long v6, v8, v10

    if-eqz v6, :cond_2ae

    const/4 v6, 0x1

    goto :goto_2af

    :cond_2ae
    const/4 v6, 0x0

    .line 91
    :goto_2af
    invoke-virtual {v12, v6}, Lcom/google/android/gms/internal/auth/zzdr;->g(Z)V

    goto :goto_297

    :cond_2b3
    :goto_2b3
    return v4

    :pswitch_2b4
    if-ne v6, v14, :cond_2d4

    .line 92
    check-cast v12, Lcom/google/android/gms/internal/auth/zzer;

    .line 93
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    add-int/2addr v2, v1

    :goto_2bf
    if-ge v1, v2, :cond_2cb

    .line 94
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/auth/zzdq;->b([BI)I

    move-result v4

    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/auth/zzer;->g(I)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_2bf

    :cond_2cb
    if-ne v1, v2, :cond_2cf

    goto/16 :goto_450

    .line 95
    :cond_2cf
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzew;->f()Lcom/google/android/gms/internal/auth/zzew;

    move-result-object v1

    throw v1

    :cond_2d4
    if-ne v6, v9, :cond_44f

    .line 96
    check-cast v12, Lcom/google/android/gms/internal/auth/zzer;

    .line 97
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/auth/zzdq;->b([BI)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/auth/zzer;->g(I)V

    :goto_2df
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_2f4

    .line 98
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    if-eq v2, v6, :cond_2ec

    goto :goto_2f4

    .line 99
    :cond_2ec
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzdq;->b([BI)I

    move-result v1

    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/auth/zzer;->g(I)V

    goto :goto_2df

    :cond_2f4
    :goto_2f4
    return v1

    :pswitch_2f5
    if-ne v6, v14, :cond_315

    .line 100
    check-cast v12, Lcom/google/android/gms/internal/auth/zzff;

    .line 101
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    add-int/2addr v2, v1

    :goto_300
    if-ge v1, v2, :cond_30c

    .line 102
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/auth/zzdq;->n([BI)J

    move-result-wide v4

    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/auth/zzff;->g(J)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_300

    :cond_30c
    if-ne v1, v2, :cond_310

    goto/16 :goto_450

    .line 103
    :cond_310
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzew;->f()Lcom/google/android/gms/internal/auth/zzew;

    move-result-object v1

    throw v1

    :cond_315
    if-ne v6, v13, :cond_44f

    .line 104
    check-cast v12, Lcom/google/android/gms/internal/auth/zzff;

    .line 105
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/auth/zzdq;->n([BI)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/auth/zzff;->g(J)V

    :goto_320
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_335

    .line 106
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    if-eq v2, v6, :cond_32d

    goto :goto_335

    .line 107
    :cond_32d
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzdq;->n([BI)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/auth/zzff;->g(J)V

    goto :goto_320

    :cond_335
    :goto_335
    return v1

    :pswitch_336
    if-ne v6, v14, :cond_33e

    .line 108
    invoke-static {v3, v4, v12, v7}, Lcom/google/android/gms/internal/auth/zzdq;->f([BILcom/google/android/gms/internal/auth/zzeu;Lcom/google/android/gms/internal/auth/zzdp;)I

    move-result v1

    goto/16 :goto_450

    :cond_33e
    if-eqz v6, :cond_342

    goto/16 :goto_44f

    :cond_342
    move-object/from16 p6, p2

    move/from16 p7, p3

    move/from16 p8, p4

    move-object/from16 p9, v12

    move-object/from16 p10, p14

    .line 109
    invoke-static/range {p5 .. p10}, Lcom/google/android/gms/internal/auth/zzdq;->l(I[BIILcom/google/android/gms/internal/auth/zzeu;Lcom/google/android/gms/internal/auth/zzdp;)I

    move-result v1

    return v1

    :pswitch_351
    if-ne v6, v14, :cond_371

    .line 110
    check-cast v12, Lcom/google/android/gms/internal/auth/zzff;

    .line 111
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    add-int/2addr v2, v1

    :goto_35c
    if-ge v1, v2, :cond_368

    .line 112
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/auth/zzdq;->m([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v1

    iget-wide v4, v7, Lcom/google/android/gms/internal/auth/zzdp;->b:J

    .line 113
    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/auth/zzff;->g(J)V

    goto :goto_35c

    :cond_368
    if-ne v1, v2, :cond_36c

    goto/16 :goto_450

    .line 114
    :cond_36c
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzew;->f()Lcom/google/android/gms/internal/auth/zzew;

    move-result-object v1

    throw v1

    :cond_371
    if-nez v6, :cond_44f

    .line 115
    check-cast v12, Lcom/google/android/gms/internal/auth/zzff;

    .line 116
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/auth/zzdq;->m([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/auth/zzdp;->b:J

    .line 117
    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/auth/zzff;->g(J)V

    :goto_37e
    if-ge v1, v5, :cond_393

    .line 118
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    if-eq v2, v6, :cond_389

    goto :goto_393

    .line 119
    :cond_389
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/auth/zzdq;->m([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v1

    iget-wide v8, v7, Lcom/google/android/gms/internal/auth/zzdp;->b:J

    .line 120
    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/auth/zzff;->g(J)V

    goto :goto_37e

    :cond_393
    :goto_393
    return v1

    :pswitch_394
    if-ne v6, v14, :cond_3b8

    .line 121
    check-cast v12, Lcom/google/android/gms/internal/auth/zzem;

    .line 122
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    add-int/2addr v2, v1

    :goto_39f
    if-ge v1, v2, :cond_3af

    .line 123
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/auth/zzdq;->b([BI)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    .line 124
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/auth/zzem;->g(F)V

    add-int/lit8 v1, v1, 0x4

    goto :goto_39f

    :cond_3af
    if-ne v1, v2, :cond_3b3

    goto/16 :goto_450

    .line 125
    :cond_3b3
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzew;->f()Lcom/google/android/gms/internal/auth/zzew;

    move-result-object v1

    throw v1

    :cond_3b8
    if-ne v6, v9, :cond_44f

    .line 126
    check-cast v12, Lcom/google/android/gms/internal/auth/zzem;

    .line 127
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/auth/zzdq;->b([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 128
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/auth/zzem;->g(F)V

    :goto_3c7
    add-int/lit8 v1, v4, 0x4

    if-ge v1, v5, :cond_3e0

    .line 129
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    if-eq v2, v6, :cond_3d4

    goto :goto_3e0

    .line 130
    :cond_3d4
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzdq;->b([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 131
    invoke-virtual {v12, v1}, Lcom/google/android/gms/internal/auth/zzem;->g(F)V

    goto :goto_3c7

    :cond_3e0
    :goto_3e0
    return v1

    :pswitch_3e1
    if-ne v6, v14, :cond_404

    .line 132
    check-cast v12, Lcom/google/android/gms/internal/auth/zzef;

    .line 133
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    add-int/2addr v2, v1

    :goto_3ec
    if-ge v1, v2, :cond_3fc

    .line 134
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/auth/zzdq;->n([BI)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 135
    invoke-virtual {v12, v4, v5}, Lcom/google/android/gms/internal/auth/zzef;->g(D)V

    add-int/lit8 v1, v1, 0x8

    goto :goto_3ec

    :cond_3fc
    if-ne v1, v2, :cond_3ff

    goto :goto_450

    .line 136
    :cond_3ff
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzew;->f()Lcom/google/android/gms/internal/auth/zzew;

    move-result-object v1

    throw v1

    :cond_404
    if-ne v6, v13, :cond_44f

    .line 137
    check-cast v12, Lcom/google/android/gms/internal/auth/zzef;

    .line 138
    invoke-static/range {p2 .. p3}, Lcom/google/android/gms/internal/auth/zzdq;->n([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 139
    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/auth/zzef;->g(D)V

    :goto_413
    add-int/lit8 v1, v4, 0x8

    if-ge v1, v5, :cond_42c

    .line 140
    invoke-static {v3, v1, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v4

    iget v6, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    if-eq v2, v6, :cond_420

    goto :goto_42c

    .line 141
    :cond_420
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzdq;->n([BI)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v8

    .line 142
    invoke-virtual {v12, v8, v9}, Lcom/google/android/gms/internal/auth/zzef;->g(D)V

    goto :goto_413

    :cond_42c
    :goto_42c
    return v1

    :goto_42d
    if-ge v4, v5, :cond_44e

    .line 143
    invoke-static {v3, v4, v7}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v8

    iget v9, v7, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    if-eq v2, v9, :cond_438

    goto :goto_44e

    :cond_438
    move-object/from16 p6, v1

    move-object/from16 p7, p2

    move/from16 p8, v8

    move/from16 p9, p4

    move/from16 p10, v6

    move-object/from16 p11, p14

    .line 144
    invoke-static/range {p6 .. p11}, Lcom/google/android/gms/internal/auth/zzdq;->c(Lcom/google/android/gms/internal/auth/zzgb;[BIIILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v4

    iget-object v8, v7, Lcom/google/android/gms/internal/auth/zzdp;->c:Ljava/lang/Object;

    .line 145
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42d

    :cond_44e
    :goto_44e
    return v4

    :cond_44f
    :goto_44f
    move v1, v4

    :goto_450
    return v1

    nop

    :pswitch_data_452
    .packed-switch 0x12
        :pswitch_3e1
        :pswitch_394
        :pswitch_351
        :pswitch_351
        :pswitch_336
        :pswitch_2f5
        :pswitch_2b4
        :pswitch_25a
        :pswitch_1a7
        :pswitch_18c
        :pswitch_132
        :pswitch_336
        :pswitch_fa
        :pswitch_2b4
        :pswitch_2f5
        :pswitch_ab
        :pswitch_5c
        :pswitch_3e1
        :pswitch_394
        :pswitch_351
        :pswitch_351
        :pswitch_336
        :pswitch_2f5
        :pswitch_2b4
        :pswitch_25a
        :pswitch_336
        :pswitch_fa
        :pswitch_2b4
        :pswitch_2f5
        :pswitch_ab
        :pswitch_5c
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzft;->a:[I

    .line 1
    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v1, v0, :cond_23d

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/auth/zzft;->F(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/internal/auth/zzft;->a:[I

    .line 3
    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    invoke-static {v3}, Lcom/google/android/gms/internal/auth/zzft;->E(I)I

    move-result v3

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_24c

    goto/16 :goto_239

    .line 4
    :pswitch_1f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzft;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_239

    mul-int/lit8 v2, v2, 0x35

    .line 5
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_238

    .line 7
    :pswitch_31
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzft;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_239

    mul-int/lit8 v2, v2, 0x35

    .line 8
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzft;->G(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzev;->c(J)I

    move-result v3

    goto/16 :goto_238

    .line 9
    :pswitch_43
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzft;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_239

    mul-int/lit8 v2, v2, 0x35

    .line 10
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzft;->v(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_238

    .line 11
    :pswitch_51
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzft;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_239

    mul-int/lit8 v2, v2, 0x35

    .line 12
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzft;->G(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzev;->c(J)I

    move-result v3

    goto/16 :goto_238

    .line 13
    :pswitch_63
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzft;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_239

    mul-int/lit8 v2, v2, 0x35

    .line 14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzft;->v(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_238

    .line 15
    :pswitch_71
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzft;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_239

    mul-int/lit8 v2, v2, 0x35

    .line 16
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzft;->v(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_238

    .line 17
    :pswitch_7f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzft;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_239

    mul-int/lit8 v2, v2, 0x35

    .line 18
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzft;->v(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_238

    .line 19
    :pswitch_8d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzft;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_239

    mul-int/lit8 v2, v2, 0x35

    .line 20
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_238

    .line 21
    :pswitch_9f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzft;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_239

    mul-int/lit8 v2, v2, 0x35

    .line 22
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_238

    .line 24
    :pswitch_b1
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzft;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_239

    mul-int/lit8 v2, v2, 0x35

    .line 25
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_238

    .line 26
    :pswitch_c5
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzft;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_239

    mul-int/lit8 v2, v2, 0x35

    .line 27
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 28
    invoke-static {v3}, Lcom/google/android/gms/internal/auth/zzev;->a(Z)I

    move-result v3

    goto/16 :goto_238

    .line 29
    :pswitch_dd
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzft;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_239

    mul-int/lit8 v2, v2, 0x35

    .line 30
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzft;->v(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_238

    .line 31
    :pswitch_eb
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzft;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_239

    mul-int/lit8 v2, v2, 0x35

    .line 32
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzft;->G(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzev;->c(J)I

    move-result v3

    goto/16 :goto_238

    .line 33
    :pswitch_fd
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzft;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_239

    mul-int/lit8 v2, v2, 0x35

    .line 34
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzft;->v(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_238

    .line 35
    :pswitch_10b
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzft;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_239

    mul-int/lit8 v2, v2, 0x35

    .line 36
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzft;->G(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzev;->c(J)I

    move-result v3

    goto/16 :goto_238

    .line 37
    :pswitch_11d
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzft;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_239

    mul-int/lit8 v2, v2, 0x35

    .line 38
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzft;->G(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzev;->c(J)I

    move-result v3

    goto/16 :goto_238

    .line 39
    :pswitch_12f
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzft;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_239

    mul-int/lit8 v2, v2, 0x35

    .line 40
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 41
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_238

    .line 42
    :pswitch_147
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/auth/zzft;->q(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_239

    mul-int/lit8 v2, v2, 0x35

    .line 43
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 44
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzev;->c(J)I

    move-result v3

    goto/16 :goto_238

    :pswitch_163
    mul-int/lit8 v2, v2, 0x35

    .line 45
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_238

    :pswitch_16f
    mul-int/lit8 v2, v2, 0x35

    .line 46
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_238

    .line 47
    :pswitch_17b
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1d4

    .line 48
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1d4

    :pswitch_186
    mul-int/lit8 v2, v2, 0x35

    .line 49
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->d(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzev;->c(J)I

    move-result v3

    goto/16 :goto_238

    :pswitch_192
    mul-int/lit8 v2, v2, 0x35

    .line 50
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_238

    :pswitch_19a
    mul-int/lit8 v2, v2, 0x35

    .line 51
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->d(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzev;->c(J)I

    move-result v3

    goto/16 :goto_238

    :pswitch_1a6
    mul-int/lit8 v2, v2, 0x35

    .line 52
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_238

    :pswitch_1ae
    mul-int/lit8 v2, v2, 0x35

    .line 53
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_238

    :pswitch_1b6
    mul-int/lit8 v2, v2, 0x35

    .line 54
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_238

    :pswitch_1be
    mul-int/lit8 v2, v2, 0x35

    .line 55
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_238

    .line 56
    :pswitch_1ca
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1d4

    .line 57
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_1d4
    :goto_1d4
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_239

    :pswitch_1d8
    mul-int/lit8 v2, v2, 0x35

    .line 58
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_238

    :pswitch_1e5
    mul-int/lit8 v2, v2, 0x35

    .line 59
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->t(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/auth/zzev;->a(Z)I

    move-result v3

    goto :goto_238

    :pswitch_1f0
    mul-int/lit8 v2, v2, 0x35

    .line 60
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_238

    :pswitch_1f7
    mul-int/lit8 v2, v2, 0x35

    .line 61
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->d(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzev;->c(J)I

    move-result v3

    goto :goto_238

    :pswitch_202
    mul-int/lit8 v2, v2, 0x35

    .line 62
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_238

    :pswitch_209
    mul-int/lit8 v2, v2, 0x35

    .line 63
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->d(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzev;->c(J)I

    move-result v3

    goto :goto_238

    :pswitch_214
    mul-int/lit8 v2, v2, 0x35

    .line 64
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->d(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzev;->c(J)I

    move-result v3

    goto :goto_238

    :pswitch_21f
    mul-int/lit8 v2, v2, 0x35

    .line 65
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->b(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_238

    :pswitch_22a
    mul-int/lit8 v2, v2, 0x35

    .line 66
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->a(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 67
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzev;->c(J)I

    move-result v3

    :goto_238
    add-int/2addr v2, v3

    :cond_239
    :goto_239
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_5

    :cond_23d
    mul-int/lit8 v2, v2, 0x35

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzft;->k:Lcom/google/android/gms/internal/auth/zzgp;

    .line 68
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzgp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    return v2

    nop

    :pswitch_data_24c
    .packed-switch 0x0
        :pswitch_22a
        :pswitch_21f
        :pswitch_214
        :pswitch_209
        :pswitch_202
        :pswitch_1f7
        :pswitch_1f0
        :pswitch_1e5
        :pswitch_1d8
        :pswitch_1ca
        :pswitch_1be
        :pswitch_1b6
        :pswitch_1ae
        :pswitch_1a6
        :pswitch_19a
        :pswitch_192
        :pswitch_186
        :pswitch_17b
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_16f
        :pswitch_163
        :pswitch_147
        :pswitch_12f
        :pswitch_11d
        :pswitch_10b
        :pswitch_fd
        :pswitch_eb
        :pswitch_dd
        :pswitch_c5
        :pswitch_b1
        :pswitch_9f
        :pswitch_8d
        :pswitch_7f
        :pswitch_71
        :pswitch_63
        :pswitch_51
        :pswitch_43
        :pswitch_31
        :pswitch_1f
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/auth/zzft;->h:I

    :goto_2
    iget v1, p0, Lcom/google/android/gms/internal/auth/zzft;->i:I

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzft;->g:[I

    .line 1
    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/auth/zzft;->F(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 2
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 3
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/auth/zzfk;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/auth/zzfk;->d()V

    .line 4
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/auth/zzgz;->p(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzft;->g:[I

    .line 5
    array-length v0, v0

    :goto_28
    if-ge v1, v0, :cond_37

    iget-object v2, p0, Lcom/google/android/gms/internal/auth/zzft;->j:Lcom/google/android/gms/internal/auth/zzfe;

    iget-object v3, p0, Lcom/google/android/gms/internal/auth/zzft;->g:[I

    .line 6
    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/auth/zzfe;->a(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzft;->k:Lcom/google/android/gms/internal/auth/zzgp;

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzgp;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;)Z
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const v8, 0xfffff

    const/4 v9, 0x0

    const v0, 0xfffff

    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_d
    iget v2, v6, Lcom/google/android/gms/internal/auth/zzft;->h:I

    const/4 v3, 0x1

    if-ge v10, v2, :cond_e6

    iget-object v2, v6, Lcom/google/android/gms/internal/auth/zzft;->g:[I

    .line 1
    aget v11, v2, v10

    iget-object v2, v6, Lcom/google/android/gms/internal/auth/zzft;->a:[I

    .line 2
    aget v12, v2, v11

    .line 3
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/auth/zzft;->F(I)I

    move-result v13

    iget-object v2, v6, Lcom/google/android/gms/internal/auth/zzft;->a:[I

    add-int/lit8 v4, v11, 0x2

    .line 4
    aget v2, v2, v4

    and-int v4, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v14, v3, v2

    if-eq v4, v0, :cond_39

    if-eq v4, v8, :cond_35

    sget-object v0, Lcom/google/android/gms/internal/auth/zzft;->p:Lsun/misc/Unsafe;

    int-to-long v1, v4

    .line 5
    invoke-virtual {v0, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_35
    move/from16 v16, v1

    move v15, v4

    goto :goto_3c

    :cond_39
    move v15, v0

    move/from16 v16, v1

    :goto_3c
    const/high16 v0, 0x10000000

    and-int/2addr v0, v13

    if-eqz v0, :cond_52

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/auth/zzft;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_52

    :cond_51
    return v9

    :cond_52
    :goto_52
    invoke-static {v13}, Lcom/google/android/gms/internal/auth/zzft;->E(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_c5

    const/16 v1, 0x11

    if-eq v0, v1, :cond_c5

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_9d

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_8c

    const/16 v1, 0x44

    if-eq v0, v1, :cond_8c

    const/16 v1, 0x31

    if-eq v0, v1, :cond_9d

    const/16 v1, 0x32

    if-eq v0, v1, :cond_74

    goto/16 :goto_df

    :cond_74
    and-int v0, v13, v8

    int-to-long v0, v0

    .line 7
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/auth/zzfk;

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_84

    goto :goto_df

    .line 10
    :cond_84
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/auth/zzft;->J(I)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Lcom/google/android/gms/internal/auth/zzfj;

    const/4 v0, 0x0

    throw v0

    .line 12
    :cond_8c
    invoke-direct {v6, v7, v12, v11}, Lcom/google/android/gms/internal/auth/zzft;->q(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 13
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/auth/zzft;->I(I)Lcom/google/android/gms/internal/auth/zzgb;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/android/gms/internal/auth/zzft;->p(Ljava/lang/Object;ILcom/google/android/gms/internal/auth/zzgb;)Z

    move-result v0

    if-nez v0, :cond_df

    return v9

    :cond_9d
    and-int v0, v13, v8

    int-to-long v0, v0

    .line 14
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_df

    .line 16
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/auth/zzft;->I(I)Lcom/google/android/gms/internal/auth/zzgb;

    move-result-object v1

    const/4 v2, 0x0

    .line 17
    :goto_b1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_df

    .line 18
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 19
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/auth/zzgb;->c(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c2

    return v9

    :cond_c2
    add-int/lit8 v2, v2, 0x1

    goto :goto_b1

    :cond_c5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/auth/zzft;->o(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 21
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/auth/zzft;->I(I)Lcom/google/android/gms/internal/auth/zzgb;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/android/gms/internal/auth/zzft;->p(Ljava/lang/Object;ILcom/google/android/gms/internal/auth/zzgb;)Z

    move-result v0

    if-nez v0, :cond_df

    return v9

    :cond_df
    :goto_df
    add-int/lit8 v10, v10, 0x1

    move v0, v15

    move/from16 v1, v16

    goto/16 :goto_d

    :cond_e6
    return v3
.end method

.method public final d()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzft;->e:Lcom/google/android/gms/internal/auth/zzfq;

    check-cast v0, Lcom/google/android/gms/internal/auth/zzeq;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 1
    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/auth/zzeq;->k(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzft;->a:[I

    .line 3
    array-length v1, v1

    if-ge v0, v1, :cond_181

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/auth/zzft;->F(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    iget-object v4, p0, Lcom/google/android/gms/internal/auth/zzft;->a:[I

    .line 5
    aget v4, v4, v0

    invoke-static {v1}, Lcom/google/android/gms/internal/auth/zzft;->E(I)I

    move-result v1

    packed-switch v1, :pswitch_data_188

    goto/16 :goto_17d

    .line 6
    :pswitch_1f
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/auth/zzft;->j(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 7
    :pswitch_24
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/auth/zzft;->q(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 8
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/auth/zzgz;->p(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/auth/zzft;->l(Ljava/lang/Object;II)V

    goto/16 :goto_17d

    .line 10
    :pswitch_36
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/auth/zzft;->j(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 11
    :pswitch_3b
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/auth/zzft;->q(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 12
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/auth/zzgz;->p(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/auth/zzft;->l(Ljava/lang/Object;II)V

    goto/16 :goto_17d

    :pswitch_4d
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzft;->n:Lcom/google/android/gms/internal/auth/zzfl;

    .line 14
    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/auth/zzgd;->i(Lcom/google/android/gms/internal/auth/zzfl;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_17d

    :pswitch_54
    iget-object v1, p0, Lcom/google/android/gms/internal/auth/zzft;->j:Lcom/google/android/gms/internal/auth/zzfe;

    .line 15
    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/auth/zzfe;->b(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_17d

    .line 16
    :pswitch_5b
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/auth/zzft;->i(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 17
    :pswitch_60
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzft;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 18
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/auth/zzgz;->d(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/auth/zzgz;->o(Ljava/lang/Object;JJ)V

    .line 19
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzft;->k(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 20
    :pswitch_72
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzft;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 21
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/auth/zzgz;->n(Ljava/lang/Object;JI)V

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzft;->k(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 23
    :pswitch_84
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzft;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 24
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/auth/zzgz;->d(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/auth/zzgz;->o(Ljava/lang/Object;JJ)V

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzft;->k(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 26
    :pswitch_96
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzft;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 27
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/auth/zzgz;->n(Ljava/lang/Object;JI)V

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzft;->k(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 29
    :pswitch_a8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzft;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 30
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/auth/zzgz;->n(Ljava/lang/Object;JI)V

    .line 31
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzft;->k(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 32
    :pswitch_ba
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzft;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 33
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/auth/zzgz;->n(Ljava/lang/Object;JI)V

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzft;->k(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 35
    :pswitch_cc
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzft;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 36
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/auth/zzgz;->p(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzft;->k(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 38
    :pswitch_de
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/auth/zzft;->i(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 39
    :pswitch_e3
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzft;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 40
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/auth/zzgz;->p(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzft;->k(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 42
    :pswitch_f5
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzft;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 43
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/auth/zzgz;->t(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/auth/zzgz;->k(Ljava/lang/Object;JZ)V

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzft;->k(Ljava/lang/Object;I)V

    goto/16 :goto_17d

    .line 45
    :pswitch_107
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzft;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 46
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/auth/zzgz;->n(Ljava/lang/Object;JI)V

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzft;->k(Ljava/lang/Object;I)V

    goto :goto_17d

    .line 48
    :pswitch_118
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzft;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 49
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/auth/zzgz;->d(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/auth/zzgz;->o(Ljava/lang/Object;JJ)V

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzft;->k(Ljava/lang/Object;I)V

    goto :goto_17d

    .line 51
    :pswitch_129
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzft;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 52
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/auth/zzgz;->n(Ljava/lang/Object;JI)V

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzft;->k(Ljava/lang/Object;I)V

    goto :goto_17d

    .line 54
    :pswitch_13a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzft;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 55
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/auth/zzgz;->d(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/auth/zzgz;->o(Ljava/lang/Object;JJ)V

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzft;->k(Ljava/lang/Object;I)V

    goto :goto_17d

    .line 57
    :pswitch_14b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzft;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 58
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/auth/zzgz;->d(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/auth/zzgz;->o(Ljava/lang/Object;JJ)V

    .line 59
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzft;->k(Ljava/lang/Object;I)V

    goto :goto_17d

    .line 60
    :pswitch_15c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzft;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 61
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/auth/zzgz;->b(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/auth/zzgz;->m(Ljava/lang/Object;JF)V

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzft;->k(Ljava/lang/Object;I)V

    goto :goto_17d

    .line 63
    :pswitch_16d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/auth/zzft;->n(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 64
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/auth/zzgz;->a(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/auth/zzgz;->l(Ljava/lang/Object;JD)V

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/auth/zzft;->k(Ljava/lang/Object;I)V

    :cond_17d
    :goto_17d
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_4

    .line 66
    :cond_181
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzft;->k:Lcom/google/android/gms/internal/auth/zzgp;

    .line 67
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/auth/zzgd;->f(Lcom/google/android/gms/internal/auth/zzgp;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_188
    .packed-switch 0x0
        :pswitch_16d
        :pswitch_15c
        :pswitch_14b
        :pswitch_13a
        :pswitch_129
        :pswitch_118
        :pswitch_107
        :pswitch_f5
        :pswitch_e3
        :pswitch_de
        :pswitch_cc
        :pswitch_ba
        :pswitch_a8
        :pswitch_96
        :pswitch_84
        :pswitch_72
        :pswitch_60
        :pswitch_5b
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_54
        :pswitch_4d
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_36
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_1f
    .end packed-switch
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzft;->a:[I

    .line 1
    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_1c7

    .line 2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/auth/zzft;->F(I)I

    move-result v3

    const v4, 0xfffff

    and-int v5, v3, v4

    int-to-long v5, v5

    invoke-static {v3}, Lcom/google/android/gms/internal/auth/zzft;->E(I)I

    move-result v3

    packed-switch v3, :pswitch_data_1dc

    goto/16 :goto_1c3

    .line 3
    :pswitch_1a
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/auth/zzft;->C(I)I

    move-result v3

    and-int/2addr v3, v4

    int-to-long v3, v3

    .line 4
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result v7

    .line 5
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result v3

    if-ne v7, v3, :cond_1c2

    .line 6
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 7
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzgd;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c3

    goto/16 :goto_1c2

    .line 8
    :pswitch_3a
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 9
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzgd;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_53

    .line 10
    :pswitch_47
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzgd;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_53
    if-nez v3, :cond_1c3

    goto/16 :goto_1c2

    .line 12
    :pswitch_57
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzft;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 13
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 14
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzgd;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c2

    goto/16 :goto_1c3

    .line 15
    :pswitch_6d
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzft;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 16
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->d(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->d(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1c2

    goto/16 :goto_1c3

    .line 17
    :pswitch_81
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzft;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 18
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto/16 :goto_1c3

    .line 19
    :pswitch_93
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzft;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 20
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->d(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->d(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1c2

    goto/16 :goto_1c3

    .line 21
    :pswitch_a7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzft;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 22
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto/16 :goto_1c3

    .line 23
    :pswitch_b9
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzft;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 24
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto/16 :goto_1c3

    .line 25
    :pswitch_cb
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzft;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 26
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto/16 :goto_1c3

    .line 27
    :pswitch_dd
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzft;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 28
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 29
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzgd;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c2

    goto/16 :goto_1c3

    .line 30
    :pswitch_f3
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzft;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 31
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 32
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzgd;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c2

    goto/16 :goto_1c3

    .line 33
    :pswitch_109
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzft;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 34
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 35
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/auth/zzgd;->h(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c2

    goto/16 :goto_1c3

    .line 36
    :pswitch_11f
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzft;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 37
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->t(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->t(Ljava/lang/Object;J)Z

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto/16 :goto_1c3

    .line 38
    :pswitch_131
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzft;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 39
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto/16 :goto_1c3

    .line 40
    :pswitch_143
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzft;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 41
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->d(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->d(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1c2

    goto/16 :goto_1c3

    .line 42
    :pswitch_157
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzft;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 43
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->c(Ljava/lang/Object;J)I

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto :goto_1c3

    .line 44
    :pswitch_168
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzft;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 45
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->d(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->d(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1c2

    goto :goto_1c3

    .line 46
    :pswitch_17b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzft;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 47
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->d(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->d(Ljava/lang/Object;J)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1c2

    goto :goto_1c3

    .line 48
    :pswitch_18e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzft;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 49
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->b(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    .line 50
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->b(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_1c2

    goto :goto_1c3

    .line 51
    :pswitch_1a7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/auth/zzft;->m(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_1c2

    .line 52
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->a(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 53
    invoke-static {p2, v5, v6}, Lcom/google/android/gms/internal/auth/zzgz;->a(Ljava/lang/Object;J)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_1c2

    goto :goto_1c3

    :cond_1c2
    :goto_1c2
    return v1

    :cond_1c3
    :goto_1c3
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_5

    :cond_1c7
    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzft;->k:Lcom/google/android/gms/internal/auth/zzgp;

    .line 54
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/zzgp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/zzft;->k:Lcom/google/android/gms/internal/auth/zzgp;

    .line 55
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/auth/zzgp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 56
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1da

    return v1

    :cond_1da
    const/4 p1, 0x1

    return p1

    :pswitch_data_1dc
    .packed-switch 0x0
        :pswitch_1a7
        :pswitch_18e
        :pswitch_17b
        :pswitch_168
        :pswitch_157
        :pswitch_143
        :pswitch_131
        :pswitch_11f
        :pswitch_109
        :pswitch_f3
        :pswitch_dd
        :pswitch_cb
        :pswitch_b9
        :pswitch_a7
        :pswitch_93
        :pswitch_81
        :pswitch_6d
        :pswitch_57
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_3a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/zzdp;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lcom/google/android/gms/internal/auth/zzdp;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/auth/zzft;->f:Z

    if-eqz v0, :cond_8

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/auth/zzft;->y(Ljava/lang/Object;[BIILcom/google/android/gms/internal/auth/zzdp;)I

    return-void

    :cond_8
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    .line 2
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/auth/zzft;->r(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/auth/zzdp;)I

    return-void
.end method

.method final r(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/auth/zzdp;)I
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BIII",
            "Lcom/google/android/gms/internal/auth/zzdp;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    sget-object v10, Lcom/google/android/gms/internal/auth/zzft;->p:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    :goto_19
    if-ge v0, v13, :cond_3b9

    add-int/lit8 v1, v0, 0x1

    .line 1
    aget-byte v0, v12, v0

    if-gez v0, :cond_2a

    .line 2
    invoke-static {v0, v12, v1, v9}, Lcom/google/android/gms/internal/auth/zzdq;->k(I[BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    move v4, v1

    move v1, v0

    goto :goto_2b

    :cond_2a
    move v4, v0

    :goto_2b
    ushr-int/lit8 v0, v4, 0x3

    and-int/lit8 v7, v4, 0x7

    const/4 v8, 0x3

    if-le v0, v2, :cond_38

    div-int/2addr v3, v8

    .line 3
    invoke-direct {v15, v0, v3}, Lcom/google/android/gms/internal/auth/zzft;->B(II)I

    move-result v2

    goto :goto_3c

    .line 4
    :cond_38
    invoke-direct {v15, v0}, Lcom/google/android/gms/internal/auth/zzft;->A(I)I

    move-result v2

    :goto_3c
    const/4 v3, -0x1

    if-ne v2, v3, :cond_4e

    move/from16 v19, v0

    move v2, v1

    move v8, v4

    move/from16 v22, v5

    move-object/from16 v27, v10

    move v7, v11

    const/16 v17, -0x1

    const/16 v20, 0x0

    goto/16 :goto_38b

    .line 5
    :cond_4e
    iget-object v3, v15, Lcom/google/android/gms/internal/auth/zzft;->a:[I

    add-int/lit8 v19, v2, 0x1

    .line 6
    aget v3, v3, v19

    invoke-static {v3}, Lcom/google/android/gms/internal/auth/zzft;->E(I)I

    move-result v8

    move/from16 v19, v0

    const v17, 0xfffff

    and-int v0, v3, v17

    move/from16 v21, v3

    move/from16 v20, v4

    int-to-long v3, v0

    const/16 v0, 0x11

    if-gt v8, v0, :cond_28f

    iget-object v0, v15, Lcom/google/android/gms/internal/auth/zzft;->a:[I

    add-int/lit8 v22, v2, 0x2

    .line 7
    aget v0, v0, v22

    ushr-int/lit8 v22, v0, 0x14

    const/4 v11, 0x1

    shl-int v22, v11, v22

    const v11, 0xfffff

    and-int/2addr v0, v11

    if-eq v0, v6, :cond_86

    if-eq v6, v11, :cond_7f

    int-to-long v11, v6

    .line 8
    invoke-virtual {v10, v14, v11, v12, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_7f
    int-to-long v5, v0

    .line 9
    invoke-virtual {v10, v14, v5, v6}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v5

    move v11, v0

    goto :goto_87

    :cond_86
    move v11, v6

    :goto_87
    move v6, v5

    const/4 v0, 0x5

    packed-switch v8, :pswitch_data_41a

    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v20

    const/4 v0, 0x3

    const/16 v18, -0x1

    move v2, v1

    if-ne v7, v0, :cond_280

    .line 10
    invoke-direct {v15, v8}, Lcom/google/android/gms/internal/auth/zzft;->I(I)Lcom/google/android/gms/internal/auth/zzgb;

    move-result-object v0

    shl-int/lit8 v1, v19, 0x3

    or-int/lit8 v5, v1, 0x4

    move-object/from16 v1, p2

    move-wide v12, v3

    move/from16 v3, p4

    move v4, v5

    move-object/from16 v5, p6

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/auth/zzdq;->c(Lcom/google/android/gms/internal/auth/zzgb;[BIIILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    and-int v1, v6, v22

    if-nez v1, :cond_26a

    iget-object v1, v9, Lcom/google/android/gms/internal/auth/zzdp;->c:Ljava/lang/Object;

    .line 12
    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_277

    :pswitch_b8
    if-nez v7, :cond_d8

    move-object/from16 v12, p2

    .line 13
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/auth/zzdq;->m([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v7

    iget-wide v0, v9, Lcom/google/android/gms/internal/auth/zzdp;->b:J

    .line 14
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/auth/zzee;->b(J)J

    move-result-wide v23

    move-object v0, v10

    move-object/from16 v1, p1

    move v8, v2

    const/16 v18, -0x1

    move-wide v2, v3

    move/from16 p3, v11

    move/from16 v11, v20

    move-wide/from16 v4, v23

    .line 15
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_226

    :cond_d8
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v20

    const/16 v18, -0x1

    goto/16 :goto_1ef

    :pswitch_e3
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v20

    const/16 v18, -0x1

    if-nez v7, :cond_1ef

    .line 16
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    .line 17
    invoke-static {v1}, Lcom/google/android/gms/internal/auth/zzee;->a(I)I

    move-result v1

    .line 18
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_260

    :pswitch_fd
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v20

    const/16 v18, -0x1

    if-nez v7, :cond_1ef

    .line 19
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    .line 20
    invoke-direct {v15, v8}, Lcom/google/android/gms/internal/auth/zzft;->H(I)Lcom/google/android/gms/internal/auth/zzet;

    move-result-object v2

    if-eqz v2, :cond_130

    .line 21
    invoke-interface {v2}, Lcom/google/android/gms/internal/auth/zzet;->zza()Z

    move-result v2

    if-eqz v2, :cond_11b

    goto :goto_130

    .line 22
    :cond_11b
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/auth/zzft;->s(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzgq;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v11, v1}, Lcom/google/android/gms/internal/auth/zzgq;->f(ILjava/lang/Object;)V

    move v5, v6

    move v3, v8

    move v1, v11

    move/from16 v2, v19

    move/from16 v6, p3

    goto/16 :goto_2de

    .line 23
    :cond_130
    :goto_130
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_260

    :pswitch_135
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v20

    const/4 v0, 0x2

    const/16 v18, -0x1

    if-ne v7, v0, :cond_1ef

    .line 24
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/auth/zzdq;->a([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    iget-object v1, v9, Lcom/google/android/gms/internal/auth/zzdp;->c:Ljava/lang/Object;

    .line 25
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_260

    :pswitch_14c
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v20

    const/4 v0, 0x2

    const/16 v18, -0x1

    if-ne v7, v0, :cond_1ef

    .line 26
    invoke-direct {v15, v8}, Lcom/google/android/gms/internal/auth/zzft;->I(I)Lcom/google/android/gms/internal/auth/zzgb;

    move-result-object v0

    .line 27
    invoke-static {v0, v12, v1, v13, v9}, Lcom/google/android/gms/internal/auth/zzdq;->d(Lcom/google/android/gms/internal/auth/zzgb;[BIILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    and-int v1, v6, v22

    if-nez v1, :cond_16b

    iget-object v1, v9, Lcom/google/android/gms/internal/auth/zzdp;->c:Ljava/lang/Object;

    .line 28
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_260

    .line 29
    :cond_16b
    invoke-virtual {v10, v14, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/google/android/gms/internal/auth/zzdp;->c:Ljava/lang/Object;

    .line 30
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/auth/zzev;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 31
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_260

    :pswitch_17a
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v20

    const/4 v0, 0x2

    const/16 v18, -0x1

    if-ne v7, v0, :cond_1ef

    const/high16 v0, 0x20000000

    and-int v0, v21, v0

    if-nez v0, :cond_191

    .line 32
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/auth/zzdq;->g([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    goto :goto_195

    .line 33
    :cond_191
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/auth/zzdq;->h([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    .line 34
    :goto_195
    iget-object v1, v9, Lcom/google/android/gms/internal/auth/zzdp;->c:Ljava/lang/Object;

    .line 35
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_260

    :pswitch_19c
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v20

    const/16 v18, -0x1

    if-nez v7, :cond_1ef

    .line 36
    invoke-static {v12, v1, v9}, Lcom/google/android/gms/internal/auth/zzdq;->m([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    iget-wide v1, v9, Lcom/google/android/gms/internal/auth/zzdp;->b:J

    const-wide/16 v20, 0x0

    cmp-long v5, v1, v20

    if-eqz v5, :cond_1b5

    const/4 v1, 0x1

    goto :goto_1b6

    :cond_1b5
    const/4 v1, 0x0

    .line 37
    :goto_1b6
    invoke-static {v14, v3, v4, v1}, Lcom/google/android/gms/internal/auth/zzgz;->k(Ljava/lang/Object;JZ)V

    goto/16 :goto_260

    :pswitch_1bb
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v20

    const/16 v18, -0x1

    if-ne v7, v0, :cond_1ef

    .line 38
    invoke-static {v12, v1}, Lcom/google/android/gms/internal/auth/zzdq;->b([BI)I

    move-result v0

    invoke-virtual {v10, v14, v3, v4, v0}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    add-int/lit8 v0, v1, 0x4

    goto/16 :goto_260

    :pswitch_1d1
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v20

    const/4 v0, 0x1

    const/16 v18, -0x1

    if-ne v7, v0, :cond_1ef

    .line 39
    invoke-static {v12, v1}, Lcom/google/android/gms/internal/auth/zzdq;->n([BI)J

    move-result-wide v20

    move-object v0, v10

    move v7, v1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide/from16 v4, v20

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    add-int/lit8 v0, v7, 0x8

    goto/16 :goto_260

    :cond_1ef
    :goto_1ef
    move v2, v1

    goto/16 :goto_280

    :pswitch_1f2
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v20

    const/16 v18, -0x1

    move v2, v1

    if-nez v7, :cond_280

    .line 40
    invoke-static {v12, v2, v9}, Lcom/google/android/gms/internal/auth/zzdq;->j([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    iget v1, v9, Lcom/google/android/gms/internal/auth/zzdp;->a:I

    .line 41
    invoke-virtual {v10, v14, v3, v4, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_260

    :pswitch_209
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v20

    const/16 v18, -0x1

    move v2, v1

    if-nez v7, :cond_280

    .line 42
    invoke-static {v12, v2, v9}, Lcom/google/android/gms/internal/auth/zzdq;->m([BILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v7

    iget-wide v1, v9, Lcom/google/android/gms/internal/auth/zzdp;->b:J

    move-object v0, v10

    move-wide/from16 v20, v1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide/from16 v4, v20

    .line 43
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_226
    or-int v5, v6, v22

    move/from16 v6, p3

    move v0, v7

    goto :goto_264

    :pswitch_22c
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v20

    const/16 v18, -0x1

    move v2, v1

    if-ne v7, v0, :cond_280

    .line 44
    invoke-static {v12, v2}, Lcom/google/android/gms/internal/auth/zzdq;->b([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 45
    invoke-static {v14, v3, v4, v0}, Lcom/google/android/gms/internal/auth/zzgz;->m(Ljava/lang/Object;JF)V

    add-int/lit8 v0, v2, 0x4

    goto :goto_260

    :pswitch_246
    move-object/from16 v12, p2

    move v8, v2

    move/from16 p3, v11

    move/from16 v11, v20

    const/4 v0, 0x1

    const/16 v18, -0x1

    move v2, v1

    if-ne v7, v0, :cond_280

    .line 46
    invoke-static {v12, v2}, Lcom/google/android/gms/internal/auth/zzdq;->n([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 47
    invoke-static {v14, v3, v4, v0, v1}, Lcom/google/android/gms/internal/auth/zzgz;->l(Ljava/lang/Object;JD)V

    add-int/lit8 v0, v2, 0x8

    :goto_260
    or-int v5, v6, v22

    move/from16 v6, p3

    :goto_264
    move v3, v8

    move v1, v11

    move/from16 v2, v19

    goto/16 :goto_2de

    .line 48
    :cond_26a
    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v9, Lcom/google/android/gms/internal/auth/zzdp;->c:Ljava/lang/Object;

    .line 49
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/auth/zzev;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 50
    invoke-virtual {v10, v14, v12, v13, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_277
    or-int v5, v6, v22

    move-object/from16 v12, p2

    move/from16 v6, p3

    move/from16 v13, p4

    goto :goto_264

    :cond_280
    :goto_280
    move/from16 v7, p5

    move/from16 v22, v6

    move/from16 v20, v8

    move-object/from16 v27, v10

    move v8, v11

    const/16 v17, -0x1

    move/from16 v6, p3

    goto/16 :goto_38b

    :cond_28f
    move-wide v12, v3

    move/from16 v11, v20

    const/16 v18, -0x1

    move v4, v2

    move v2, v1

    const/16 v0, 0x1b

    if-ne v8, v0, :cond_2f1

    const/4 v0, 0x2

    if-ne v7, v0, :cond_2e2

    .line 51
    invoke-virtual {v10, v14, v12, v13}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/auth/zzeu;

    .line 52
    invoke-interface {v0}, Lcom/google/android/gms/internal/auth/zzeu;->a()Z

    move-result v1

    if-nez v1, :cond_2ba

    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2b2

    const/16 v1, 0xa

    goto :goto_2b3

    :cond_2b2
    add-int/2addr v1, v1

    .line 54
    :goto_2b3
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/auth/zzeu;->K(I)Lcom/google/android/gms/internal/auth/zzeu;

    move-result-object v0

    .line 55
    invoke-virtual {v10, v14, v12, v13, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_2ba
    move-object v7, v0

    .line 56
    invoke-direct {v15, v4}, Lcom/google/android/gms/internal/auth/zzft;->I(I)Lcom/google/android/gms/internal/auth/zzgb;

    move-result-object v0

    move v1, v11

    move v3, v2

    move-object/from16 v2, p2

    move/from16 v20, v4

    move/from16 v4, p4

    move/from16 v22, v5

    move-object v5, v7

    move/from16 v24, v6

    move-object/from16 v6, p6

    .line 57
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/auth/zzdq;->e(Lcom/google/android/gms/internal/auth/zzgb;I[BIILcom/google/android/gms/internal/auth/zzeu;Lcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v5, v22

    move/from16 v6, v24

    :goto_2de
    move/from16 v11, p5

    goto/16 :goto_19

    :cond_2e2
    move/from16 v20, v4

    move/from16 v22, v5

    move/from16 v24, v6

    move v15, v2

    move-object/from16 v27, v10

    move/from16 v18, v11

    const/16 v17, -0x1

    goto/16 :goto_369

    :cond_2f1
    move v3, v2

    move/from16 v20, v4

    move/from16 v22, v5

    move/from16 v24, v6

    const/16 v0, 0x31

    if-gt v8, v0, :cond_340

    move/from16 v4, v21

    int-to-long v5, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v3

    move v15, v4

    move/from16 v4, p4

    move-wide/from16 v25, v5

    move v5, v11

    move/from16 v6, v19

    move/from16 p3, v8

    const/16 v17, -0x1

    move/from16 v8, v20

    move-object/from16 v27, v10

    move-wide/from16 v9, v25

    move/from16 v18, v11

    move/from16 v11, p3

    move-object/from16 v14, p6

    .line 58
    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/internal/auth/zzft;->z(Ljava/lang/Object;[BIIIIIIJIJLcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    if-eq v0, v15, :cond_33c

    :goto_324
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move/from16 v11, p5

    move-object/from16 v9, p6

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v5, v22

    move/from16 v6, v24

    goto/16 :goto_3b5

    :cond_33c
    move/from16 v7, p5

    move v2, v0

    goto :goto_36c

    :cond_340
    move v15, v3

    move/from16 p3, v8

    move-object/from16 v27, v10

    move/from16 v18, v11

    move/from16 v4, v21

    const/16 v17, -0x1

    const/16 v0, 0x32

    move/from16 v9, p3

    if-ne v9, v0, :cond_371

    const/4 v0, 0x2

    if-ne v7, v0, :cond_369

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v20

    move-wide v6, v12

    move-object/from16 v8, p6

    .line 59
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/auth/zzft;->w(Ljava/lang/Object;[BIIIJLcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    if-eq v0, v15, :cond_33c

    goto :goto_324

    :cond_369
    :goto_369
    move/from16 v7, p5

    move v2, v15

    :goto_36c
    move/from16 v8, v18

    move/from16 v6, v24

    goto :goto_38b

    :cond_371
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v8, v4

    move v3, v15

    move/from16 v4, p4

    move/from16 v5, v18

    move/from16 v6, v19

    move-wide v10, v12

    move/from16 v12, v20

    move-object/from16 v13, p6

    .line 60
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/auth/zzft;->x(Ljava/lang/Object;[BIIIIIIIJILcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    if-eq v0, v15, :cond_33c

    goto :goto_324

    :goto_38b
    if-ne v8, v7, :cond_394

    if-eqz v7, :cond_394

    move v0, v2

    move v1, v8

    move/from16 v5, v22

    goto :goto_3c0

    .line 61
    :cond_394
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/auth/zzft;->s(Ljava/lang/Object;)Lcom/google/android/gms/internal/auth/zzgq;

    move-result-object v4

    move v0, v8

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 62
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/auth/zzdq;->i(I[BIILcom/google/android/gms/internal/auth/zzgq;Lcom/google/android/gms/internal/auth/zzdp;)I

    move-result v0

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v9, p6

    move v11, v7

    move v1, v8

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v5, v22

    :goto_3b5
    move-object/from16 v10, v27

    goto/16 :goto_19

    :cond_3b9
    move/from16 v22, v5

    move/from16 v24, v6

    move-object/from16 v27, v10

    move v7, v11

    :goto_3c0
    const v2, 0xfffff

    if-eq v6, v2, :cond_3ce

    int-to-long v3, v6

    move-object/from16 v6, p1

    move-object/from16 v8, v27

    .line 63
    invoke-virtual {v8, v6, v3, v4, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_3d0

    :cond_3ce
    move-object/from16 v6, p1

    :goto_3d0
    move-object/from16 v3, p0

    iget v4, v3, Lcom/google/android/gms/internal/auth/zzft;->h:I

    :goto_3d4
    iget v5, v3, Lcom/google/android/gms/internal/auth/zzft;->i:I

    if-ge v4, v5, :cond_400

    iget-object v5, v3, Lcom/google/android/gms/internal/auth/zzft;->g:[I

    .line 64
    aget v5, v5, v4

    iget-object v8, v3, Lcom/google/android/gms/internal/auth/zzft;->a:[I

    .line 65
    aget v8, v8, v5

    .line 66
    invoke-direct {v3, v5}, Lcom/google/android/gms/internal/auth/zzft;->F(I)I

    move-result v8

    and-int/2addr v8, v2

    int-to-long v8, v8

    .line 67
    invoke-static {v6, v8, v9}, Lcom/google/android/gms/internal/auth/zzgz;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3ed

    goto :goto_3f3

    .line 68
    :cond_3ed
    invoke-direct {v3, v5}, Lcom/google/android/gms/internal/auth/zzft;->H(I)Lcom/google/android/gms/internal/auth/zzet;

    move-result-object v9

    if-nez v9, :cond_3f6

    :goto_3f3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d4

    .line 69
    :cond_3f6
    check-cast v8, Lcom/google/android/gms/internal/auth/zzfk;

    .line 70
    invoke-direct {v3, v5}, Lcom/google/android/gms/internal/auth/zzft;->J(I)Ljava/lang/Object;

    move-result-object v0

    .line 71
    check-cast v0, Lcom/google/android/gms/internal/auth/zzfj;

    const/4 v0, 0x0

    throw v0

    :cond_400
    if-nez v7, :cond_40c

    move/from16 v2, p4

    if-ne v0, v2, :cond_407

    goto :goto_412

    .line 72
    :cond_407
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzew;->d()Lcom/google/android/gms/internal/auth/zzew;

    move-result-object v0

    throw v0

    :cond_40c
    move/from16 v2, p4

    if-gt v0, v2, :cond_413

    if-ne v1, v7, :cond_413

    :goto_412
    return v0

    .line 73
    :cond_413
    invoke-static {}, Lcom/google/android/gms/internal/auth/zzew;->d()Lcom/google/android/gms/internal/auth/zzew;

    move-result-object v0

    goto :goto_419

    :goto_418
    throw v0

    :goto_419
    goto :goto_418

    :pswitch_data_41a
    .packed-switch 0x0
        :pswitch_246
        :pswitch_22c
        :pswitch_209
        :pswitch_209
        :pswitch_1f2
        :pswitch_1d1
        :pswitch_1bb
        :pswitch_19c
        :pswitch_17a
        :pswitch_14c
        :pswitch_135
        :pswitch_1f2
        :pswitch_fd
        :pswitch_1bb
        :pswitch_1d1
        :pswitch_e3
        :pswitch_b8
    .end packed-switch
.end method
