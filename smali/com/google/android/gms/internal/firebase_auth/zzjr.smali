###### Class com.google.android.gms.internal.firebase_auth.zzjr (com.google.android.gms.internal.firebase_auth.zzjr)
.class final Lcom/google/android/gms/internal/firebase_auth/zzjr;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_auth/zzkd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase_auth/zzkd<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final r:[I

.field private static final s:Lsun/misc/Unsafe;


# instance fields
.field private final a:[I

.field private final b:[Ljava/lang/Object;

.field private final c:I

.field private final d:I

.field private final e:Lcom/google/android/gms/internal/firebase_auth/zzjn;

.field private final f:Z

.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:[I

.field private final k:I

.field private final l:I

.field private final m:Lcom/google/android/gms/internal/firebase_auth/zzjw;

.field private final n:Lcom/google/android/gms/internal/firebase_auth/zzix;

.field private final o:Lcom/google/android/gms/internal/firebase_auth/zzkz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzkz<",
            "**>;"
        }
    .end annotation
.end field

.field private final p:Lcom/google/android/gms/internal/firebase_auth/zzhu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase_auth/zzhu<",
            "*>;"
        }
    .end annotation
.end field

.field private final q:Lcom/google/android/gms/internal/firebase_auth/zzjk;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1
    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r:[I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->t()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->s:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/firebase_auth/zzjn;ZZ[IIILcom/google/android/gms/internal/firebase_auth/zzjw;Lcom/google/android/gms/internal/firebase_auth/zzix;Lcom/google/android/gms/internal/firebase_auth/zzkz;Lcom/google/android/gms/internal/firebase_auth/zzhu;Lcom/google/android/gms/internal/firebase_auth/zzjk;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Ljava/lang/Object;",
            "II",
            "Lcom/google/android/gms/internal/firebase_auth/zzjn;",
            "ZZ[III",
            "Lcom/google/android/gms/internal/firebase_auth/zzjw;",
            "Lcom/google/android/gms/internal/firebase_auth/zzix;",
            "Lcom/google/android/gms/internal/firebase_auth/zzkz<",
            "**>;",
            "Lcom/google/android/gms/internal/firebase_auth/zzhu<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase_auth/zzjk;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->b:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->c:I

    .line 5
    iput p4, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->d:I

    .line 6
    instance-of p1, p5, Lcom/google/android/gms/internal/firebase_auth/zzif;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->g:Z

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->h:Z

    const/4 p1, 0x0

    if-eqz p14, :cond_1c

    .line 8
    invoke-virtual {p14, p5}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->d(Lcom/google/android/gms/internal/firebase_auth/zzjn;)Z

    move-result p2

    if-eqz p2, :cond_1c

    const/4 p2, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p2, 0x0

    :goto_1d
    iput-boolean p2, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->f:Z

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    .line 10
    iput-object p8, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j:[I

    .line 11
    iput p9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->k:I

    .line 12
    iput p10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->l:I

    .line 13
    iput-object p11, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->m:Lcom/google/android/gms/internal/firebase_auth/zzjw;

    .line 14
    iput-object p12, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->n:Lcom/google/android/gms/internal/firebase_auth/zzix;

    .line 15
    iput-object p13, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->o:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    .line 16
    iput-object p14, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->p:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    .line 17
    iput-object p5, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->e:Lcom/google/android/gms/internal/firebase_auth/zzjn;

    .line 18
    iput-object p15, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    return-void
.end method

.method private static A(Ljava/lang/Object;J)F
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private final B(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_c

    const/4 p1, 0x1

    return p1

    :cond_c
    const/4 p1, 0x0

    return p1
.end method

.method private final C(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private static D(Ljava/lang/Object;J)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final E(I)I
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private static F(Ljava/lang/Object;J)J
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static G(Ljava/lang/Object;J)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static h(Lcom/google/android/gms/internal/firebase_auth/zzkz;Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase_auth/zzkz<",
            "TUT;TUB;>;TT;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->h(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static i(Ljava/lang/Class;Lcom/google/android/gms/internal/firebase_auth/zzjl;Lcom/google/android/gms/internal/firebase_auth/zzjw;Lcom/google/android/gms/internal/firebase_auth/zzix;Lcom/google/android/gms/internal/firebase_auth/zzkz;Lcom/google/android/gms/internal/firebase_auth/zzhu;Lcom/google/android/gms/internal/firebase_auth/zzjk;)Lcom/google/android/gms/internal/firebase_auth/zzjr;
    .registers 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/android/gms/internal/firebase_auth/zzjl;",
            "Lcom/google/android/gms/internal/firebase_auth/zzjw;",
            "Lcom/google/android/gms/internal/firebase_auth/zzix;",
            "Lcom/google/android/gms/internal/firebase_auth/zzkz<",
            "**>;",
            "Lcom/google/android/gms/internal/firebase_auth/zzhu<",
            "*>;",
            "Lcom/google/android/gms/internal/firebase_auth/zzjk;",
            ")",
            "Lcom/google/android/gms/internal/firebase_auth/zzjr<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p1

    .line 1
    instance-of v1, v0, Lcom/google/android/gms/internal/firebase_auth/zzkb;

    if-eqz v1, :cond_40f

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzkb;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzkb;->zza()I

    move-result v1

    sget v2, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->j:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_14

    const/4 v11, 0x1

    goto :goto_15

    :cond_14
    const/4 v11, 0x0

    .line 4
    :goto_15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzkb;->b()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const v6, 0xd800

    if-lt v5, v6, :cond_31

    const/4 v5, 0x1

    :goto_27
    add-int/lit8 v7, v5, 0x1

    .line 7
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_32

    move v5, v7

    goto :goto_27

    :cond_31
    const/4 v7, 0x1

    :cond_32
    add-int/lit8 v5, v7, 0x1

    .line 8
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_51

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_3e
    add-int/lit8 v10, v5, 0x1

    .line 9
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_4e

    and-int/lit16 v5, v5, 0x1fff

    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    add-int/lit8 v9, v9, 0xd

    move v5, v10

    goto :goto_3e

    :cond_4e
    shl-int/2addr v5, v9

    or-int/2addr v7, v5

    move v5, v10

    :cond_51
    if-nez v7, :cond_5e

    .line 10
    sget-object v7, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r:[I

    move-object v14, v7

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    goto/16 :goto_16f

    :cond_5e
    add-int/lit8 v7, v5, 0x1

    .line 11
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-lt v5, v6, :cond_7d

    and-int/lit16 v5, v5, 0x1fff

    const/16 v9, 0xd

    :goto_6a
    add-int/lit8 v10, v7, 0x1

    .line 12
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_7a

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_6a

    :cond_7a
    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    move v7, v10

    :cond_7d
    add-int/lit8 v9, v7, 0x1

    .line 13
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_9c

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_89
    add-int/lit8 v12, v9, 0x1

    .line 14
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_99

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v12

    goto :goto_89

    :cond_99
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v12

    :cond_9c
    add-int/lit8 v10, v9, 0x1

    .line 15
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v6, :cond_bb

    and-int/lit16 v9, v9, 0x1fff

    const/16 v12, 0xd

    :goto_a8
    add-int/lit8 v13, v10, 0x1

    .line 16
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_b8

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    add-int/lit8 v12, v12, 0xd

    move v10, v13

    goto :goto_a8

    :cond_b8
    shl-int/2addr v10, v12

    or-int/2addr v9, v10

    move v10, v13

    :cond_bb
    add-int/lit8 v12, v10, 0x1

    .line 17
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v6, :cond_da

    and-int/lit16 v10, v10, 0x1fff

    const/16 v13, 0xd

    :goto_c7
    add-int/lit8 v14, v12, 0x1

    .line 18
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_d7

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_c7

    :cond_d7
    shl-int/2addr v12, v13

    or-int/2addr v10, v12

    move v12, v14

    :cond_da
    add-int/lit8 v13, v12, 0x1

    .line 19
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v6, :cond_f9

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_e6
    add-int/lit8 v15, v13, 0x1

    .line 20
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_f6

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_e6

    :cond_f6
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_f9
    add-int/lit8 v14, v13, 0x1

    .line 21
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v6, :cond_11a

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_105
    add-int/lit8 v16, v14, 0x1

    .line 22
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_116

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_105

    :cond_116
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_11a
    add-int/lit8 v15, v14, 0x1

    .line 23
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v6, :cond_13d

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_126
    add-int/lit8 v17, v15, 0x1

    .line 24
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_138

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_126

    :cond_138
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_13d
    add-int/lit8 v16, v15, 0x1

    .line 25
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v6, :cond_162

    and-int/lit16 v15, v15, 0x1fff

    move/from16 v3, v16

    const/16 v16, 0xd

    :goto_14b
    add-int/lit8 v17, v3, 0x1

    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v6, :cond_15d

    and-int/lit16 v3, v3, 0x1fff

    shl-int v3, v3, v16

    or-int/2addr v15, v3

    add-int/lit8 v16, v16, 0xd

    move/from16 v3, v17

    goto :goto_14b

    :cond_15d
    shl-int v3, v3, v16

    or-int/2addr v15, v3

    move/from16 v16, v17

    :cond_162
    add-int v3, v15, v13

    add-int/2addr v3, v14

    .line 27
    new-array v3, v3, [I

    shl-int/lit8 v14, v5, 0x1

    add-int/2addr v14, v7

    move v7, v14

    move-object v14, v3

    move v3, v5

    move/from16 v5, v16

    .line 28
    :goto_16f
    sget-object v8, Lcom/google/android/gms/internal/firebase_auth/zzjr;->s:Lsun/misc/Unsafe;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzkb;->c()[Ljava/lang/Object;

    move-result-object v16

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzkb;->a()Lcom/google/android/gms/internal/firebase_auth/zzjn;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move/from16 v17, v5

    mul-int/lit8 v5, v12, 0x3

    .line 31
    new-array v5, v5, [I

    shl-int/2addr v12, v4

    .line 32
    new-array v12, v12, [Ljava/lang/Object;

    add-int v19, v15, v13

    move v13, v7

    move/from16 v21, v15

    move/from16 v7, v17

    move/from16 v22, v19

    const/16 v17, 0x0

    const/16 v20, 0x0

    :goto_193
    if-ge v7, v2, :cond_3e3

    add-int/lit8 v23, v7, 0x1

    .line 33
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const v4, 0xd800

    if-lt v7, v4, :cond_1c5

    and-int/lit16 v7, v7, 0x1fff

    move/from16 v4, v23

    const/16 v23, 0xd

    :goto_1a6
    add-int/lit8 v25, v4, 0x1

    .line 34
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v26, v2

    const v2, 0xd800

    if-lt v4, v2, :cond_1bf

    and-int/lit16 v2, v4, 0x1fff

    shl-int v2, v2, v23

    or-int/2addr v7, v2

    add-int/lit8 v23, v23, 0xd

    move/from16 v4, v25

    move/from16 v2, v26

    goto :goto_1a6

    :cond_1bf
    shl-int v2, v4, v23

    or-int/2addr v7, v2

    move/from16 v2, v25

    goto :goto_1c9

    :cond_1c5
    move/from16 v26, v2

    move/from16 v2, v23

    :goto_1c9
    add-int/lit8 v4, v2, 0x1

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move/from16 v23, v4

    const v4, 0xd800

    if-lt v2, v4, :cond_1fb

    and-int/lit16 v2, v2, 0x1fff

    move/from16 v4, v23

    const/16 v23, 0xd

    :goto_1dc
    add-int/lit8 v25, v4, 0x1

    .line 36
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v27, v15

    const v15, 0xd800

    if-lt v4, v15, :cond_1f5

    and-int/lit16 v4, v4, 0x1fff

    shl-int v4, v4, v23

    or-int/2addr v2, v4

    add-int/lit8 v23, v23, 0xd

    move/from16 v4, v25

    move/from16 v15, v27

    goto :goto_1dc

    :cond_1f5
    shl-int v4, v4, v23

    or-int/2addr v2, v4

    move/from16 v4, v25

    goto :goto_1ff

    :cond_1fb
    move/from16 v27, v15

    move/from16 v4, v23

    :goto_1ff
    and-int/lit16 v15, v2, 0xff

    move/from16 v23, v10

    and-int/lit16 v10, v2, 0x400

    if-eqz v10, :cond_20d

    add-int/lit8 v10, v17, 0x1

    .line 37
    aput v20, v14, v17

    move/from16 v17, v10

    :cond_20d
    const/16 v10, 0x33

    move/from16 v29, v9

    if-lt v15, v10, :cond_2aa

    add-int/lit8 v10, v4, 0x1

    .line 38
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v9, 0xd800

    if-lt v4, v9, :cond_23c

    and-int/lit16 v4, v4, 0x1fff

    const/16 v31, 0xd

    :goto_222
    add-int/lit8 v32, v10, 0x1

    .line 39
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v9, :cond_237

    and-int/lit16 v9, v10, 0x1fff

    shl-int v9, v9, v31

    or-int/2addr v4, v9

    add-int/lit8 v31, v31, 0xd

    move/from16 v10, v32

    const v9, 0xd800

    goto :goto_222

    :cond_237
    shl-int v9, v10, v31

    or-int/2addr v4, v9

    move/from16 v10, v32

    :cond_23c
    add-int/lit8 v9, v15, -0x33

    move/from16 v31, v10

    const/16 v10, 0x9

    if-eq v9, v10, :cond_25d

    const/16 v10, 0x11

    if-ne v9, v10, :cond_249

    goto :goto_25d

    :cond_249
    const/16 v10, 0xc

    if-ne v9, v10, :cond_25b

    if-nez v11, :cond_25b

    .line 40
    div-int/lit8 v9, v20, 0x3

    const/4 v10, 0x1

    shl-int/2addr v9, v10

    add-int/2addr v9, v10

    add-int/lit8 v10, v13, 0x1

    aget-object v13, v16, v13

    aput-object v13, v12, v9

    move v13, v10

    :cond_25b
    const/4 v10, 0x1

    goto :goto_26a

    .line 41
    :cond_25d
    :goto_25d
    div-int/lit8 v9, v20, 0x3

    const/4 v10, 0x1

    shl-int/2addr v9, v10

    add-int/2addr v9, v10

    add-int/lit8 v24, v13, 0x1

    aget-object v13, v16, v13

    aput-object v13, v12, v9

    move/from16 v13, v24

    :goto_26a
    shl-int/2addr v4, v10

    .line 42
    aget-object v9, v16, v4

    .line 43
    instance-of v10, v9, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_274

    .line 44
    check-cast v9, Ljava/lang/reflect/Field;

    goto :goto_27c

    .line 45
    :cond_274
    check-cast v9, Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->k(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 46
    aput-object v9, v16, v4

    .line 47
    :goto_27c
    invoke-virtual {v8, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v10, v9

    add-int/lit8 v4, v4, 0x1

    .line 48
    aget-object v9, v16, v4

    move/from16 v25, v10

    .line 49
    instance-of v10, v9, Ljava/lang/reflect/Field;

    if-eqz v10, :cond_28e

    .line 50
    check-cast v9, Ljava/lang/reflect/Field;

    goto :goto_296

    .line 51
    :cond_28e
    check-cast v9, Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->k(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 52
    aput-object v9, v16, v4

    .line 53
    :goto_296
    invoke-virtual {v8, v9}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v4, v9

    move-object/from16 v30, v1

    move v9, v4

    move v1, v11

    move-object/from16 v24, v12

    move/from16 v10, v25

    move/from16 v11, v31

    const/4 v4, 0x0

    const/16 v18, 0x1

    goto/16 :goto_3a8

    :cond_2aa
    add-int/lit8 v9, v13, 0x1

    .line 54
    aget-object v10, v16, v13

    check-cast v10, Ljava/lang/String;

    invoke-static {v6, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->k(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    const/16 v13, 0x9

    if-eq v15, v13, :cond_31e

    const/16 v13, 0x11

    if-ne v15, v13, :cond_2bd

    goto :goto_31e

    :cond_2bd
    const/16 v13, 0x1b

    if-eq v15, v13, :cond_30d

    const/16 v13, 0x31

    if-ne v15, v13, :cond_2c6

    goto :goto_30d

    :cond_2c6
    const/16 v13, 0xc

    if-eq v15, v13, :cond_2f9

    const/16 v13, 0x1e

    if-eq v15, v13, :cond_2f9

    const/16 v13, 0x2c

    if-ne v15, v13, :cond_2d3

    goto :goto_2f9

    :cond_2d3
    const/16 v13, 0x32

    if-ne v15, v13, :cond_32c

    add-int/lit8 v13, v21, 0x1

    .line 55
    aput v20, v14, v21

    .line 56
    div-int/lit8 v21, v20, 0x3

    const/16 v24, 0x1

    shl-int/lit8 v21, v21, 0x1

    add-int/lit8 v25, v9, 0x1

    aget-object v9, v16, v9

    aput-object v9, v12, v21

    and-int/lit16 v9, v2, 0x800

    if-eqz v9, :cond_2f6

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v9, v25, 0x1

    .line 57
    aget-object v25, v16, v25

    aput-object v25, v12, v21

    move/from16 v21, v13

    goto :goto_32c

    :cond_2f6
    move/from16 v21, v13

    goto :goto_31b

    :cond_2f9
    :goto_2f9
    if-nez v11, :cond_30a

    .line 58
    div-int/lit8 v13, v20, 0x3

    const/16 v24, 0x1

    shl-int/lit8 v13, v13, 0x1

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v25, v9, 0x1

    aget-object v9, v16, v9

    aput-object v9, v12, v13

    goto :goto_31b

    :cond_30a
    const/16 v24, 0x1

    goto :goto_32c

    :cond_30d
    :goto_30d
    const/16 v24, 0x1

    .line 59
    div-int/lit8 v13, v20, 0x3

    shl-int/lit8 v13, v13, 0x1

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v25, v9, 0x1

    aget-object v9, v16, v9

    aput-object v9, v12, v13

    :goto_31b
    move/from16 v13, v25

    goto :goto_32d

    :cond_31e
    :goto_31e
    const/16 v24, 0x1

    .line 60
    div-int/lit8 v13, v20, 0x3

    shl-int/lit8 v13, v13, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v25

    aput-object v25, v12, v13

    :cond_32c
    :goto_32c
    move v13, v9

    .line 61
    :goto_32d
    invoke-virtual {v8, v10}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v9

    long-to-int v10, v9

    and-int/lit16 v9, v2, 0x1000

    move/from16 v25, v13

    const/16 v13, 0x1000

    if-ne v9, v13, :cond_38c

    const/16 v9, 0x11

    if-gt v15, v9, :cond_38c

    add-int/lit8 v9, v4, 0x1

    .line 62
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v13, 0xd800

    if-lt v4, v13, :cond_364

    and-int/lit16 v4, v4, 0x1fff

    const/16 v18, 0xd

    :goto_34d
    add-int/lit8 v28, v9, 0x1

    .line 63
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v13, :cond_35f

    and-int/lit16 v9, v9, 0x1fff

    shl-int v9, v9, v18

    or-int/2addr v4, v9

    add-int/lit8 v18, v18, 0xd

    move/from16 v9, v28

    goto :goto_34d

    :cond_35f
    shl-int v9, v9, v18

    or-int/2addr v4, v9

    move/from16 v9, v28

    :cond_364
    const/16 v18, 0x1

    shl-int/lit8 v24, v3, 0x1

    .line 64
    div-int/lit8 v28, v4, 0x20

    add-int v24, v24, v28

    .line 65
    aget-object v13, v16, v24

    move-object/from16 v30, v1

    .line 66
    instance-of v1, v13, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_377

    .line 67
    check-cast v13, Ljava/lang/reflect/Field;

    goto :goto_37f

    .line 68
    :cond_377
    check-cast v13, Ljava/lang/String;

    invoke-static {v6, v13}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->k(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 69
    aput-object v13, v16, v24

    :goto_37f
    move v1, v11

    move-object/from16 v24, v12

    .line 70
    invoke-virtual {v8, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v11

    long-to-int v12, v11

    .line 71
    rem-int/lit8 v4, v4, 0x20

    move v11, v9

    move v9, v12

    goto :goto_398

    :cond_38c
    move-object/from16 v30, v1

    move v1, v11

    move-object/from16 v24, v12

    const/16 v18, 0x1

    const v9, 0xfffff

    move v11, v4

    const/4 v4, 0x0

    :goto_398
    const/16 v12, 0x12

    if-lt v15, v12, :cond_3a6

    const/16 v12, 0x31

    if-gt v15, v12, :cond_3a6

    add-int/lit8 v12, v22, 0x1

    .line 72
    aput v10, v14, v22

    move/from16 v22, v12

    :cond_3a6
    move/from16 v13, v25

    :goto_3a8
    add-int/lit8 v12, v20, 0x1

    .line 73
    aput v7, v5, v20

    add-int/lit8 v7, v12, 0x1

    move/from16 v20, v3

    and-int/lit16 v3, v2, 0x200

    if-eqz v3, :cond_3b7

    const/high16 v3, 0x20000000

    goto :goto_3b8

    :cond_3b7
    const/4 v3, 0x0

    :goto_3b8
    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_3bf

    const/high16 v2, 0x10000000

    goto :goto_3c0

    :cond_3bf
    const/4 v2, 0x0

    :goto_3c0
    or-int/2addr v2, v3

    shl-int/lit8 v3, v15, 0x14

    or-int/2addr v2, v3

    or-int/2addr v2, v10

    .line 74
    aput v2, v5, v12

    add-int/lit8 v2, v7, 0x1

    shl-int/lit8 v3, v4, 0x14

    or-int/2addr v3, v9

    .line 75
    aput v3, v5, v7

    move v7, v11

    move/from16 v3, v20

    move/from16 v10, v23

    move-object/from16 v12, v24

    move/from16 v15, v27

    move/from16 v9, v29

    const/4 v4, 0x1

    move v11, v1

    move/from16 v20, v2

    move/from16 v2, v26

    move-object/from16 v1, v30

    goto/16 :goto_193

    :cond_3e3
    move/from16 v29, v9

    move/from16 v23, v10

    move v1, v11

    move-object/from16 v24, v12

    move/from16 v27, v15

    .line 76
    new-instance v2, Lcom/google/android/gms/internal/firebase_auth/zzjr;

    .line 77
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzkb;->a()Lcom/google/android/gms/internal/firebase_auth/zzjn;

    move-result-object v10

    const/4 v12, 0x0

    move-object v0, v5

    move-object v5, v2

    move-object v6, v0

    move-object/from16 v7, v24

    move/from16 v8, v29

    move/from16 v9, v23

    move-object v13, v14

    move/from16 v14, v27

    move/from16 v15, v19

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v20, p6

    invoke-direct/range {v5 .. v20}, Lcom/google/android/gms/internal/firebase_auth/zzjr;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/firebase_auth/zzjn;ZZ[IIILcom/google/android/gms/internal/firebase_auth/zzjw;Lcom/google/android/gms/internal/firebase_auth/zzix;Lcom/google/android/gms/internal/firebase_auth/zzkz;Lcom/google/android/gms/internal/firebase_auth/zzhu;Lcom/google/android/gms/internal/firebase_auth/zzjk;)V

    return-object v2

    .line 78
    :cond_40f
    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzks;

    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzks;->zza()I

    sget v0, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->j:I

    .line 80
    new-instance v0, Ljava/lang/NoSuchMethodError;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodError;-><init>()V

    goto :goto_41d

    :goto_41c
    throw v0

    :goto_41d
    goto :goto_41c
.end method

.method private final j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;
    .registers 5

    .line 1
    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Lcom/google/android/gms/internal/firebase_auth/zzkd;

    if-eqz v0, :cond_d

    return-object v0

    .line 3
    :cond_d
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->a()Lcom/google/android/gms/internal/firebase_auth/zzjz;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->b:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->b:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-object v0
.end method

.method private static k(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .registers 7
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

    .line 5
    :cond_1d
    new-instance v1, Ljava/lang/RuntimeException;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Field "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_65

    :goto_64
    throw v1

    :goto_65
    goto :goto_64
.end method

.method private static l(Ljava/lang/Object;J)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static m(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzls;->P(ILjava/lang/String;)V

    return-void

    .line 3
    :cond_a
    check-cast p1, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzls;->G(ILcom/google/android/gms/internal/firebase_auth/zzgv;)V

    return-void
.end method

.method private static n(Lcom/google/android/gms/internal/firebase_auth/zzkz;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase_auth/zzkz<",
            "TUT;TUB;>;TT;",
            "Lcom/google/android/gms/internal/firebase_auth/zzls;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->a(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    return-void
.end method

.method private final o(Lcom/google/android/gms/internal/firebase_auth/zzls;ILjava/lang/Object;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/firebase_auth/zzls;",
            "I",
            "Ljava/lang/Object;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_15

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    .line 2
    invoke-direct {p0, p4}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->v(I)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v0, p4}, Lcom/google/android/gms/internal/firebase_auth/zzjk;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzji;

    move-result-object p4

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    .line 3
    invoke-interface {v0, p3}, Lcom/google/android/gms/internal/firebase_auth/zzjk;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p3

    .line 4
    invoke-interface {p1, p2, p4, p3}, Lcom/google/android/gms/internal/firebase_auth/zzls;->J(ILcom/google/android/gms/internal/firebase_auth/zzji;Ljava/util/Map;)V

    :cond_15
    return-void
.end method

.method private final p(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->C(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 2
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    .line 3
    :cond_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 4
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v2, :cond_27

    if-eqz p2, :cond_27

    .line 5
    invoke-static {v2, p2}, Lcom/google/android/gms/internal/firebase_auth/zzii;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 6
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 7
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->w(Ljava/lang/Object;I)V

    return-void

    :cond_27
    if-eqz p2, :cond_2f

    .line 8
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 9
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->w(Ljava/lang/Object;I)V

    :cond_2f
    return-void
.end method

.method private final q(Ljava/lang/Object;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->E(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/32 v6, 0xfffff

    cmp-long v8, v2, v6

    if-nez v8, :cond_ec

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->C(I)I

    move-result p2

    and-int v0, p2, v1

    int-to-long v0, v0

    const/high16 v2, 0xff00000

    and-int/2addr p2, v2

    ushr-int/lit8 p2, p2, 0x14

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_fa

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 4
    :pswitch_2a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_31

    return v5

    :cond_31
    return v4

    .line 5
    :pswitch_32
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3b

    return v5

    :cond_3b
    return v4

    .line 6
    :pswitch_3c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_43

    return v5

    :cond_43
    return v4

    .line 7
    :pswitch_44
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_4d

    return v5

    :cond_4d
    return v4

    .line 8
    :pswitch_4e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_55

    return v5

    :cond_55
    return v4

    .line 9
    :pswitch_56
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5d

    return v5

    :cond_5d
    return v4

    .line 10
    :pswitch_5e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_65

    return v5

    :cond_65
    return v4

    .line 11
    :pswitch_66
    sget-object p2, Lcom/google/android/gms/internal/firebase_auth/zzgv;->p:Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzgv;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_73

    return v5

    :cond_73
    return v4

    .line 12
    :pswitch_74
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_7b

    return v5

    :cond_7b
    return v4

    .line 13
    :pswitch_7c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 14
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_8e

    .line 15
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8d

    return v5

    :cond_8d
    return v4

    .line 16
    :cond_8e
    instance-of p2, p1, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    if-eqz p2, :cond_9c

    .line 17
    sget-object p2, Lcom/google/android/gms/internal/firebase_auth/zzgv;->p:Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase_auth/zzgv;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9b

    return v5

    :cond_9b
    return v4

    .line 18
    :cond_9c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 19
    :pswitch_a2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->w(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 20
    :pswitch_a7
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_ae

    return v5

    :cond_ae
    return v4

    .line 21
    :pswitch_af
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_b8

    return v5

    :cond_b8
    return v4

    .line 22
    :pswitch_b9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_c0

    return v5

    :cond_c0
    return v4

    .line 23
    :pswitch_c1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_ca

    return v5

    :cond_ca
    return v4

    .line 24
    :pswitch_cb
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_d4

    return v5

    :cond_d4
    return v4

    .line 25
    :pswitch_d5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->x(Ljava/lang/Object;J)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_df

    return v5

    :cond_df
    return v4

    .line 26
    :pswitch_e0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->C(Ljava/lang/Object;J)D

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-eqz v2, :cond_eb

    return v5

    :cond_eb
    return v4

    :cond_ec
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v5, p2

    .line 27
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_f8

    return v5

    :cond_f8
    return v4

    nop

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_e0
        :pswitch_d5
        :pswitch_cb
        :pswitch_c1
        :pswitch_b9
        :pswitch_af
        :pswitch_a7
        :pswitch_a2
        :pswitch_7c
        :pswitch_74
        :pswitch_66
        :pswitch_5e
        :pswitch_56
        :pswitch_4e
        :pswitch_44
        :pswitch_3c
        :pswitch_32
        :pswitch_2a
    .end packed-switch
.end method

.method private final r(Ljava/lang/Object;II)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->E(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_11

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method private final s(Ljava/lang/Object;IIII)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)Z"
        }
    .end annotation

    const v0, 0xfffff

    if-ne p3, v0, :cond_a

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

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

.method private static t(Ljava/lang/Object;ILcom/google/android/gms/internal/firebase_auth/zzkd;)Z
    .registers 5

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->b(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static u(Ljava/lang/Object;J)D
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private final v(I)Ljava/lang/Object;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->b:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final w(Ljava/lang/Object;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->E(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    return-void

    :cond_11
    const/4 v2, 0x1

    ushr-int/lit8 p2, p2, 0x14

    shl-int p2, v2, p2

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v2

    or-int/2addr p2, v2

    .line 3
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->h(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final x(Ljava/lang/Object;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->E(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->h(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final y(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/firebase_auth/zzls;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    iget-boolean v3, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->f:Z

    if-eqz v3, :cond_23

    .line 2
    iget-object v3, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->p:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object v3

    .line 3
    iget-object v5, v3, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_23

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->p()Ljava/util/Iterator;

    move-result-object v3

    .line 5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_25

    :cond_23
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 6
    :goto_25
    iget-object v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    array-length v6, v6

    .line 7
    sget-object v7, Lcom/google/android/gms/internal/firebase_auth/zzjr;->s:Lsun/misc/Unsafe;

    const/4 v10, 0x0

    const v11, 0xfffff

    const/4 v12, 0x0

    :goto_2f
    if-ge v10, v6, :cond_493

    .line 8
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->C(I)I

    move-result v13

    .line 9
    iget-object v14, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v15, v14, v10

    const/high16 v16, 0xff00000

    and-int v16, v13, v16

    ushr-int/lit8 v4, v16, 0x14

    .line 10
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->h:Z

    if-nez v9, :cond_5e

    const/16 v9, 0x11

    if-gt v4, v9, :cond_5e

    add-int/lit8 v9, v10, 0x2

    .line 11
    aget v9, v14, v9

    const v14, 0xfffff

    and-int v8, v9, v14

    if-eq v8, v11, :cond_58

    int-to-long v11, v8

    .line 12
    invoke-virtual {v7, v1, v11, v12}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v11, v8

    :cond_58
    ushr-int/lit8 v8, v9, 0x14

    const/4 v9, 0x1

    shl-int v8, v9, v8

    goto :goto_5f

    :cond_5e
    const/4 v8, 0x0

    :goto_5f
    if-eqz v5, :cond_7d

    .line 13
    iget-object v9, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->p:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v9, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->a(Ljava/util/Map$Entry;)I

    move-result v9

    if-gt v9, v15, :cond_7d

    .line 14
    iget-object v9, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->p:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v9, v2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->c(Lcom/google/android/gms/internal/firebase_auth/zzls;Ljava/util/Map$Entry;)V

    .line 15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    goto :goto_5f

    :cond_7b
    const/4 v5, 0x0

    goto :goto_5f

    :cond_7d
    const v9, 0xfffff

    and-int/2addr v13, v9

    int-to-long v13, v13

    packed-switch v4, :pswitch_data_4b0

    :cond_85
    :goto_85
    const/4 v4, 0x0

    goto/16 :goto_48f

    .line 16
    :pswitch_88
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 17
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v8

    .line 18
    invoke-interface {v2, v15, v4, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->H(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto :goto_85

    .line 19
    :pswitch_9a
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 20
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->F(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzls;->L(IJ)V

    goto :goto_85

    .line 21
    :pswitch_a8
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 22
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzls;->v(II)V

    goto :goto_85

    .line 23
    :pswitch_b6
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 24
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->F(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzls;->j(IJ)V

    goto :goto_85

    .line 25
    :pswitch_c4
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 26
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzls;->F(II)V

    goto :goto_85

    .line 27
    :pswitch_d2
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 28
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzls;->E(II)V

    goto :goto_85

    .line 29
    :pswitch_e0
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 30
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzls;->C(II)V

    goto :goto_85

    .line 31
    :pswitch_ee
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 32
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzls;->G(ILcom/google/android/gms/internal/firebase_auth/zzgv;)V

    goto :goto_85

    .line 33
    :pswitch_fe
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 34
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 35
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v8

    invoke-interface {v2, v15, v4, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->K(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_85

    .line 36
    :pswitch_111
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 37
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v15, v4, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->m(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    goto/16 :goto_85

    .line 38
    :pswitch_120
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 39
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->G(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzls;->A0(IZ)V

    goto/16 :goto_85

    .line 40
    :pswitch_12f
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 41
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzls;->A(II)V

    goto/16 :goto_85

    .line 42
    :pswitch_13e
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 43
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->F(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzls;->I(IJ)V

    goto/16 :goto_85

    .line 44
    :pswitch_14d
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 45
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzls;->n(II)V

    goto/16 :goto_85

    .line 46
    :pswitch_15c
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 47
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->F(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzls;->o(IJ)V

    goto/16 :goto_85

    .line 48
    :pswitch_16b
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 49
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->F(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzls;->a(IJ)V

    goto/16 :goto_85

    .line 50
    :pswitch_17a
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 51
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->A(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {v2, v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzls;->t(IF)V

    goto/16 :goto_85

    .line 52
    :pswitch_189
    invoke-direct {v0, v1, v15, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 53
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->u(Ljava/lang/Object;J)D

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzls;->s(ID)V

    goto/16 :goto_85

    .line 54
    :pswitch_198
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v2, v15, v4, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->o(Lcom/google/android/gms/internal/firebase_auth/zzls;ILjava/lang/Object;I)V

    goto/16 :goto_85

    .line 55
    :pswitch_1a1
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 56
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 57
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v13

    .line 58
    invoke-static {v4, v8, v2, v13}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->v(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_85

    .line 59
    :pswitch_1b4
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 60
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v15, 0x1

    .line 61
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->I(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_85

    :pswitch_1c4
    const/4 v15, 0x1

    .line 62
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 63
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 64
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->X(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_85

    :pswitch_1d4
    const/4 v15, 0x1

    .line 65
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 66
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 67
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->O(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_85

    :pswitch_1e4
    const/4 v15, 0x1

    .line 68
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 69
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 70
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->Z(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_85

    :pswitch_1f4
    const/4 v15, 0x1

    .line 71
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 72
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 73
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->a0(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_85

    :pswitch_204
    const/4 v15, 0x1

    .line 74
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 75
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 76
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->U(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_85

    :pswitch_214
    const/4 v15, 0x1

    .line 77
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 78
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 79
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->b0(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_85

    :pswitch_224
    const/4 v15, 0x1

    .line 80
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 81
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 82
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->Y(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_85

    :pswitch_234
    const/4 v15, 0x1

    .line 83
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 84
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 85
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->L(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_85

    :pswitch_244
    const/4 v15, 0x1

    .line 86
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 87
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 88
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->R(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_85

    :pswitch_254
    const/4 v15, 0x1

    .line 89
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 90
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 91
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->E(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_85

    :pswitch_264
    const/4 v15, 0x1

    .line 92
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 93
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 94
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->A(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_85

    :pswitch_274
    const/4 v15, 0x1

    .line 95
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 96
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 97
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->w(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_85

    :pswitch_284
    const/4 v15, 0x1

    .line 98
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 99
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 100
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->j(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_85

    .line 101
    :pswitch_294
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 102
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v15, 0x0

    .line 103
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->I(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_85

    :pswitch_2a4
    const/4 v15, 0x0

    .line 104
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 105
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 106
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->X(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_85

    :pswitch_2b4
    const/4 v15, 0x0

    .line 107
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 108
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 109
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->O(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_85

    :pswitch_2c4
    const/4 v15, 0x0

    .line 110
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 111
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 112
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->Z(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_85

    :pswitch_2d4
    const/4 v15, 0x0

    .line 113
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 114
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 115
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->a0(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_85

    :pswitch_2e4
    const/4 v15, 0x0

    .line 116
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 117
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 118
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->U(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_85

    .line 119
    :pswitch_2f4
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 120
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 121
    invoke-static {v4, v8, v2}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->u(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    goto/16 :goto_85

    .line 122
    :pswitch_303
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 123
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 124
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v13

    .line 125
    invoke-static {v4, v8, v2, v13}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->i(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_85

    .line 126
    :pswitch_316
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 127
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 128
    invoke-static {v4, v8, v2}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->h(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    goto/16 :goto_85

    .line 129
    :pswitch_325
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 130
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v15, 0x0

    .line 131
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->b0(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_85

    :pswitch_335
    const/4 v15, 0x0

    .line 132
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 133
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 134
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->Y(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_85

    :pswitch_345
    const/4 v15, 0x0

    .line 135
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 136
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 137
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->L(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_85

    :pswitch_355
    const/4 v15, 0x0

    .line 138
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 139
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 140
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->R(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_85

    :pswitch_365
    const/4 v15, 0x0

    .line 141
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 142
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 143
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->E(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_85

    :pswitch_375
    const/4 v15, 0x0

    .line 144
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 145
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 146
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->A(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_85

    :pswitch_385
    const/4 v15, 0x0

    .line 147
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 148
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 149
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->w(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_85

    :pswitch_395
    const/4 v15, 0x0

    .line 150
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v10

    .line 151
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 152
    invoke-static {v4, v8, v2, v15}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->j(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_85

    :pswitch_3a5
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 153
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v13

    .line 154
    invoke-interface {v2, v15, v8, v13}, Lcom/google/android/gms/internal/firebase_auth/zzls;->H(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_48f

    :pswitch_3b6
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 155
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzls;->L(IJ)V

    goto/16 :goto_48f

    :pswitch_3c3
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 156
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->v(II)V

    goto/16 :goto_48f

    :pswitch_3d0
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 157
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzls;->j(IJ)V

    goto/16 :goto_48f

    :pswitch_3dd
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 158
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->F(II)V

    goto/16 :goto_48f

    :pswitch_3ea
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 159
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->E(II)V

    goto/16 :goto_48f

    :pswitch_3f7
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 160
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->C(II)V

    goto/16 :goto_48f

    :pswitch_404
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 161
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->G(ILcom/google/android/gms/internal/firebase_auth/zzgv;)V

    goto/16 :goto_48f

    :pswitch_413
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 162
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 163
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v13

    invoke-interface {v2, v15, v8, v13}, Lcom/google/android/gms/internal/firebase_auth/zzls;->K(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_48f

    :pswitch_424
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 164
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v15, v8, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->m(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    goto :goto_48f

    :pswitch_430
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 165
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->w(Ljava/lang/Object;J)Z

    move-result v8

    .line 166
    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->A0(IZ)V

    goto :goto_48f

    :pswitch_43c
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 167
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->A(II)V

    goto :goto_48f

    :pswitch_448
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 168
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzls;->I(IJ)V

    goto :goto_48f

    :pswitch_454
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 169
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->n(II)V

    goto :goto_48f

    :pswitch_460
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 170
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzls;->o(IJ)V

    goto :goto_48f

    :pswitch_46c
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 171
    invoke-virtual {v7, v1, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v13

    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzls;->a(IJ)V

    goto :goto_48f

    :pswitch_478
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 172
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->x(Ljava/lang/Object;J)F

    move-result v8

    .line 173
    invoke-interface {v2, v15, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->t(IF)V

    goto :goto_48f

    :pswitch_484
    const/4 v4, 0x0

    and-int/2addr v8, v12

    if-eqz v8, :cond_48f

    .line 174
    invoke-static {v1, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->C(Ljava/lang/Object;J)D

    move-result-wide v13

    .line 175
    invoke-interface {v2, v15, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzls;->s(ID)V

    :cond_48f
    :goto_48f
    add-int/lit8 v10, v10, 0x3

    goto/16 :goto_2f

    :cond_493
    :goto_493
    if-eqz v5, :cond_4aa

    .line 176
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->p:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v4, v2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->c(Lcom/google/android/gms/internal/firebase_auth/zzls;Ljava/util/Map$Entry;)V

    .line 177
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    move-object v5, v4

    goto :goto_493

    :cond_4a8
    const/4 v5, 0x0

    goto :goto_493

    .line 178
    :cond_4aa
    iget-object v3, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->o:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->n(Lcom/google/android/gms/internal/firebase_auth/zzkz;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    return-void

    :pswitch_data_4b0
    .packed-switch 0x0
        :pswitch_484
        :pswitch_478
        :pswitch_46c
        :pswitch_460
        :pswitch_454
        :pswitch_448
        :pswitch_43c
        :pswitch_430
        :pswitch_424
        :pswitch_413
        :pswitch_404
        :pswitch_3f7
        :pswitch_3ea
        :pswitch_3dd
        :pswitch_3d0
        :pswitch_3c3
        :pswitch_3b6
        :pswitch_3a5
        :pswitch_395
        :pswitch_385
        :pswitch_375
        :pswitch_365
        :pswitch_355
        :pswitch_345
        :pswitch_335
        :pswitch_325
        :pswitch_316
        :pswitch_303
        :pswitch_2f4
        :pswitch_2e4
        :pswitch_2d4
        :pswitch_2c4
        :pswitch_2b4
        :pswitch_2a4
        :pswitch_294
        :pswitch_284
        :pswitch_274
        :pswitch_264
        :pswitch_254
        :pswitch_244
        :pswitch_234
        :pswitch_224
        :pswitch_214
        :pswitch_204
        :pswitch_1f4
        :pswitch_1e4
        :pswitch_1d4
        :pswitch_1c4
        :pswitch_1b4
        :pswitch_1a1
        :pswitch_198
        :pswitch_189
        :pswitch_17a
        :pswitch_16b
        :pswitch_15c
        :pswitch_14d
        :pswitch_13e
        :pswitch_12f
        :pswitch_120
        :pswitch_111
        :pswitch_fe
        :pswitch_ee
        :pswitch_e0
        :pswitch_d2
        :pswitch_c4
        :pswitch_b6
        :pswitch_a8
        :pswitch_9a
        :pswitch_88
    .end packed-switch
.end method

.method private final z(Ljava/lang/Object;Ljava/lang/Object;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->C(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v1, v1, p3

    const v2, 0xfffff

    and-int/2addr v0, v2

    int-to-long v2, v0

    .line 3
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 4
    :cond_14
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    if-eqz v0, :cond_2b

    if-eqz p2, :cond_2b

    .line 6
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzii;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 7
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 8
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->x(Ljava/lang/Object;II)V

    return-void

    :cond_2b
    if-eqz p2, :cond_33

    .line 9
    invoke-static {p1, v2, v3, p2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 10
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->x(Ljava/lang/Object;II)V

    :cond_33
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    if-ge v1, v0, :cond_22c

    .line 2
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->C(I)I

    move-result v3

    .line 3
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v1

    const v5, 0xfffff

    and-int/2addr v5, v3

    int-to-long v5, v5

    const/high16 v7, 0xff00000

    and-int/2addr v3, v7

    ushr-int/lit8 v3, v3, 0x14

    const/16 v7, 0x25

    packed-switch v3, :pswitch_data_24c

    goto/16 :goto_228

    .line 4
    :pswitch_20
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    .line 5
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 6
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_227

    .line 7
    :pswitch_32
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 8
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->F(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzii;->b(J)I

    move-result v3

    goto/16 :goto_227

    .line 9
    :pswitch_44
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 10
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    .line 11
    :pswitch_52
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 12
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->F(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzii;->b(J)I

    move-result v3

    goto/16 :goto_227

    .line 13
    :pswitch_64
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 14
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    .line 15
    :pswitch_72
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 16
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    .line 17
    :pswitch_80
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 18
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    .line 19
    :pswitch_8e
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 20
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_227

    .line 21
    :pswitch_a0
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    .line 22
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x35

    .line 23
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_227

    .line 24
    :pswitch_b2
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 25
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto/16 :goto_227

    .line 26
    :pswitch_c6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 27
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->G(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzii;->c(Z)I

    move-result v3

    goto/16 :goto_227

    .line 28
    :pswitch_d8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 29
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    .line 30
    :pswitch_e6
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 31
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->F(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzii;->b(J)I

    move-result v3

    goto/16 :goto_227

    .line 32
    :pswitch_f8
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 33
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    .line 34
    :pswitch_106
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 35
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->F(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzii;->b(J)I

    move-result v3

    goto/16 :goto_227

    .line 36
    :pswitch_118
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 37
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->F(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzii;->b(J)I

    move-result v3

    goto/16 :goto_227

    .line 38
    :pswitch_12a
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 39
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->A(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto/16 :goto_227

    .line 40
    :pswitch_13c
    invoke-direct {p0, p1, v4, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_228

    mul-int/lit8 v2, v2, 0x35

    .line 41
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->u(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzii;->b(J)I

    move-result v3

    goto/16 :goto_227

    :pswitch_152
    mul-int/lit8 v2, v2, 0x35

    .line 42
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_227

    :pswitch_15e
    mul-int/lit8 v2, v2, 0x35

    .line 43
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_227

    .line 44
    :pswitch_16a
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c3

    .line 45
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1c3

    :pswitch_175
    mul-int/lit8 v2, v2, 0x35

    .line 46
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzii;->b(J)I

    move-result v3

    goto/16 :goto_227

    :pswitch_181
    mul-int/lit8 v2, v2, 0x35

    .line 47
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    :pswitch_189
    mul-int/lit8 v2, v2, 0x35

    .line 48
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzii;->b(J)I

    move-result v3

    goto/16 :goto_227

    :pswitch_195
    mul-int/lit8 v2, v2, 0x35

    .line 49
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    :pswitch_19d
    mul-int/lit8 v2, v2, 0x35

    .line 50
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    :pswitch_1a5
    mul-int/lit8 v2, v2, 0x35

    .line 51
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v3

    goto/16 :goto_227

    :pswitch_1ad
    mul-int/lit8 v2, v2, 0x35

    .line 52
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto/16 :goto_227

    .line 53
    :pswitch_1b9
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1c3

    .line 54
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    :cond_1c3
    :goto_1c3
    mul-int/lit8 v2, v2, 0x35

    add-int/2addr v2, v7

    goto :goto_228

    :pswitch_1c7
    mul-int/lit8 v2, v2, 0x35

    .line 55
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_227

    :pswitch_1d4
    mul-int/lit8 v2, v2, 0x35

    .line 56
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->w(Ljava/lang/Object;J)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzii;->c(Z)I

    move-result v3

    goto :goto_227

    :pswitch_1df
    mul-int/lit8 v2, v2, 0x35

    .line 57
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_227

    :pswitch_1e6
    mul-int/lit8 v2, v2, 0x35

    .line 58
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzii;->b(J)I

    move-result v3

    goto :goto_227

    :pswitch_1f1
    mul-int/lit8 v2, v2, 0x35

    .line 59
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v3

    goto :goto_227

    :pswitch_1f8
    mul-int/lit8 v2, v2, 0x35

    .line 60
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzii;->b(J)I

    move-result v3

    goto :goto_227

    :pswitch_203
    mul-int/lit8 v2, v2, 0x35

    .line 61
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzii;->b(J)I

    move-result v3

    goto :goto_227

    :pswitch_20e
    mul-int/lit8 v2, v2, 0x35

    .line 62
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->x(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    goto :goto_227

    :pswitch_219
    mul-int/lit8 v2, v2, 0x35

    .line 63
    invoke-static {p1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->C(Ljava/lang/Object;J)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    .line 64
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzii;->b(J)I

    move-result v3

    :goto_227
    add-int/2addr v2, v3

    :cond_228
    :goto_228
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_5

    :cond_22c
    mul-int/lit8 v2, v2, 0x35

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->o:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v2, v0

    .line 66
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->f:Z

    if-eqz v0, :cond_24a

    mul-int/lit8 v2, v2, 0x35

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->p:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->hashCode()I

    move-result p1

    add-int/2addr v2, p1

    :cond_24a
    return v2

    nop

    :pswitch_data_24c
    .packed-switch 0x0
        :pswitch_219
        :pswitch_20e
        :pswitch_203
        :pswitch_1f8
        :pswitch_1f1
        :pswitch_1e6
        :pswitch_1df
        :pswitch_1d4
        :pswitch_1c7
        :pswitch_1b9
        :pswitch_1ad
        :pswitch_1a5
        :pswitch_19d
        :pswitch_195
        :pswitch_189
        :pswitch_181
        :pswitch_175
        :pswitch_16a
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_15e
        :pswitch_152
        :pswitch_13c
        :pswitch_12a
        :pswitch_118
        :pswitch_106
        :pswitch_f8
        :pswitch_e6
        :pswitch_d8
        :pswitch_c6
        :pswitch_b2
        :pswitch_a0
        :pswitch_8e
        :pswitch_80
        :pswitch_72
        :pswitch_64
        :pswitch_52
        :pswitch_44
        :pswitch_32
        :pswitch_20
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;)Z
    .registers 20
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

    .line 1
    :goto_d
    iget v2, v6, Lcom/google/android/gms/internal/firebase_auth/zzjr;->k:I

    const/4 v11, 0x1

    if-ge v10, v2, :cond_12e

    .line 2
    iget-object v2, v6, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j:[I

    aget v12, v2, v10

    .line 3
    iget-object v2, v6, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v13, v2, v12

    .line 4
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->C(I)I

    move-result v14

    .line 5
    iget-object v2, v6, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    add-int/lit8 v3, v12, 0x2

    aget v2, v2, v3

    and-int v3, v2, v8

    ushr-int/lit8 v2, v2, 0x14

    shl-int v15, v11, v2

    if-eq v3, v0, :cond_3a

    if-eq v3, v8, :cond_35

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->s:Lsun/misc/Unsafe;

    int-to-long v1, v3

    invoke-virtual {v0, v7, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_35
    move/from16 v17, v1

    move/from16 v16, v3

    goto :goto_3e

    :cond_3a
    move/from16 v16, v0

    move/from16 v17, v1

    :goto_3e
    const/high16 v0, 0x10000000

    and-int/2addr v0, v14

    if-eqz v0, :cond_45

    const/4 v0, 0x1

    goto :goto_46

    :cond_45
    const/4 v0, 0x0

    :goto_46
    if-eqz v0, :cond_59

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->s(Ljava/lang/Object;IIII)Z

    move-result v0

    if-nez v0, :cond_59

    return v9

    :cond_59
    const/high16 v0, 0xff00000

    and-int/2addr v0, v14

    ushr-int/lit8 v0, v0, 0x14

    const/16 v1, 0x9

    if-eq v0, v1, :cond_10b

    const/16 v1, 0x11

    if-eq v0, v1, :cond_10b

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_df

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_ce

    const/16 v1, 0x44

    if-eq v0, v1, :cond_ce

    const/16 v1, 0x31

    if-eq v0, v1, :cond_df

    const/16 v1, 0x32

    if-eq v0, v1, :cond_7c

    goto/16 :goto_126

    .line 8
    :cond_7c
    iget-object v0, v6, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    and-int v1, v14, v8

    int-to-long v1, v1

    .line 9
    invoke-static {v7, v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjk;->d(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_cb

    .line 11
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->v(I)Ljava/lang/Object;

    move-result-object v1

    .line 12
    iget-object v2, v6, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjk;->c(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzji;

    move-result-object v1

    .line 13
    iget-object v1, v1, Lcom/google/android/gms/internal/firebase_auth/zzji;->b:Lcom/google/android/gms/internal/firebase_auth/zzlm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_auth/zzlm;->c()Lcom/google/android/gms/internal/firebase_auth/zzlt;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/firebase_auth/zzlt;->x:Lcom/google/android/gms/internal/firebase_auth/zzlt;

    if-ne v1, v2, :cond_cb

    const/4 v1, 0x0

    .line 14
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_ac
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_cb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_c4

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->a()Lcom/google/android/gms/internal/firebase_auth/zzjz;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjz;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v1

    .line 16
    :cond_c4
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->b(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ac

    const/4 v11, 0x0

    :cond_cb
    if-nez v11, :cond_126

    return v9

    .line 17
    :cond_ce
    invoke-direct {v6, v7, v13, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 18
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->t(Ljava/lang/Object;ILcom/google/android/gms/internal/firebase_auth/zzkd;)Z

    move-result v0

    if-nez v0, :cond_126

    return v9

    :cond_df
    and-int v0, v14, v8

    int-to-long v0, v0

    .line 19
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 20
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_108

    .line 21
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v1

    const/4 v2, 0x0

    .line 22
    :goto_f3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_108

    .line 23
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 24
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/firebase_auth/zzkd;->b(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_105

    const/4 v11, 0x0

    goto :goto_108

    :cond_105
    add-int/lit8 v2, v2, 0x1

    goto :goto_f3

    :cond_108
    :goto_108
    if-nez v11, :cond_126

    return v9

    :cond_10b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move/from16 v3, v16

    move/from16 v4, v17

    move v5, v15

    .line 25
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->s(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_126

    .line 26
    invoke-direct {v6, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v0

    invoke-static {v7, v14, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->t(Ljava/lang/Object;ILcom/google/android/gms/internal/firebase_auth/zzkd;)Z

    move-result v0

    if-nez v0, :cond_126

    return v9

    :cond_126
    :goto_126
    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    goto/16 :goto_d

    .line 27
    :cond_12e
    iget-boolean v0, v6, Lcom/google/android/gms/internal/firebase_auth/zzjr;->f:Z

    if-eqz v0, :cond_13f

    .line 28
    iget-object v0, v6, Lcom/google/android/gms/internal/firebase_auth/zzjr;->p:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->r()Z

    move-result v0

    if-nez v0, :cond_13f

    return v9

    :cond_13f
    return v11
.end method

.method public final c(Ljava/lang/Object;)I
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-boolean v2, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->h:Z

    const/high16 v3, 0xff00000

    const/4 v4, 0x0

    const/4 v7, 0x1

    const v8, 0xfffff

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_4f2

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/firebase_auth/zzjr;->s:Lsun/misc/Unsafe;

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 3
    :goto_16
    iget-object v14, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    array-length v14, v14

    if-ge v12, v14, :cond_4ea

    .line 4
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->C(I)I

    move-result v14

    and-int v15, v14, v3

    ushr-int/lit8 v15, v15, 0x14

    .line 5
    iget-object v3, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v3, v3, v12

    and-int/2addr v14, v8

    int-to-long v5, v14

    .line 6
    sget-object v14, Lcom/google/android/gms/internal/firebase_auth/zzia;->c0:Lcom/google/android/gms/internal/firebase_auth/zzia;

    .line 7
    invoke-virtual {v14}, Lcom/google/android/gms/internal/firebase_auth/zzia;->zza()I

    move-result v14

    if-lt v15, v14, :cond_41

    sget-object v14, Lcom/google/android/gms/internal/firebase_auth/zzia;->p0:Lcom/google/android/gms/internal/firebase_auth/zzia;

    .line 8
    invoke-virtual {v14}, Lcom/google/android/gms/internal/firebase_auth/zzia;->zza()I

    move-result v14

    if-gt v15, v14, :cond_41

    .line 9
    iget-object v14, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    add-int/lit8 v17, v12, 0x2

    aget v14, v14, v17

    and-int/2addr v14, v8

    goto :goto_42

    :cond_41
    const/4 v14, 0x0

    :goto_42
    packed-switch v15, :pswitch_data_a82

    goto/16 :goto_4e4

    .line 10
    :pswitch_47
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 11
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/firebase_auth/zzjn;

    .line 12
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v6

    .line 13
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->V(ILcom/google/android/gms/internal/firebase_auth/zzjn;Lcom/google/android/gms/internal/firebase_auth/zzkd;)I

    move-result v3

    goto/16 :goto_3c9

    .line 14
    :pswitch_5d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 15
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->F(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->n0(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 16
    :pswitch_6d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 17
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->u0(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 18
    :pswitch_7d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 19
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->v0(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 20
    :pswitch_89
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 21
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->B0(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 22
    :pswitch_95
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 23
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->D0(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 24
    :pswitch_a5
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 25
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->q0(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 26
    :pswitch_b5
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 27
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    .line 28
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->U(ILcom/google/android/gms/internal/firebase_auth/zzgv;)I

    move-result v3

    goto/16 :goto_3c9

    .line 29
    :pswitch_c7
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 30
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 31
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)I

    move-result v3

    goto/16 :goto_3c9

    .line 32
    :pswitch_db
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 33
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 34
    instance-of v6, v5, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    if-eqz v6, :cond_f1

    .line 35
    check-cast v5, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->U(ILcom/google/android/gms/internal/firebase_auth/zzgv;)I

    move-result v3

    goto/16 :goto_3c9

    .line 36
    :cond_f1
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->G(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_3c9

    .line 37
    :pswitch_f9
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 38
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->H(IZ)I

    move-result v3

    goto/16 :goto_3c9

    .line 39
    :pswitch_105
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 40
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->y0(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 41
    :pswitch_111
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 42
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->r0(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 43
    :pswitch_11d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 44
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->m0(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 45
    :pswitch_12d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 46
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->F(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->i0(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 47
    :pswitch_13d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 48
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->F(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->c0(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 49
    :pswitch_14d
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 50
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->C(IF)I

    move-result v3

    goto/16 :goto_3c9

    .line 51
    :pswitch_159
    invoke-direct {v0, v1, v3, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_4e4

    const-wide/16 v5, 0x0

    .line 52
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->B(ID)I

    move-result v3

    goto/16 :goto_3c9

    .line 53
    :pswitch_167
    iget-object v14, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    .line 54
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->v(I)Ljava/lang/Object;

    move-result-object v6

    .line 55
    invoke-interface {v14, v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjk;->f(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto/16 :goto_3c9

    .line 56
    :pswitch_177
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->l(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v6

    .line 57
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->q(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzkd;)I

    move-result v3

    goto/16 :goto_3c9

    .line 58
    :pswitch_185
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 59
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->y(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 60
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v6, :cond_199

    int-to-long v14, v14

    .line 61
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 62
    :cond_199
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result v3

    .line 63
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v6

    goto/16 :goto_324

    .line 64
    :pswitch_1a3
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 65
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->N(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 66
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v6, :cond_1b7

    int-to-long v14, v14

    .line 67
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 68
    :cond_1b7
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result v3

    .line 69
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v6

    goto/16 :goto_324

    .line 70
    :pswitch_1c1
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 71
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->T(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 72
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v6, :cond_1d5

    int-to-long v14, v14

    .line 73
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 74
    :cond_1d5
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result v3

    .line 75
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v6

    goto/16 :goto_324

    .line 76
    :pswitch_1df
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 77
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->Q(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 78
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v6, :cond_1f3

    int-to-long v14, v14

    .line 79
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 80
    :cond_1f3
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result v3

    .line 81
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v6

    goto/16 :goto_324

    .line 82
    :pswitch_1fd
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 83
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->C(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 84
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v6, :cond_211

    int-to-long v14, v14

    .line 85
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 86
    :cond_211
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result v3

    .line 87
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v6

    goto/16 :goto_324

    .line 88
    :pswitch_21b
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 89
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->K(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 90
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v6, :cond_22f

    int-to-long v14, v14

    .line 91
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 92
    :cond_22f
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result v3

    .line 93
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v6

    goto/16 :goto_324

    .line 94
    :pswitch_239
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 95
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->W(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 96
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v6, :cond_24d

    int-to-long v14, v14

    .line 97
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 98
    :cond_24d
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result v3

    .line 99
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v6

    goto/16 :goto_324

    .line 100
    :pswitch_257
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 101
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->Q(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 102
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v6, :cond_26b

    int-to-long v14, v14

    .line 103
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 104
    :cond_26b
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result v3

    .line 105
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v6

    goto/16 :goto_324

    .line 106
    :pswitch_275
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 107
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->T(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 108
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v6, :cond_289

    int-to-long v14, v14

    .line 109
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 110
    :cond_289
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result v3

    .line 111
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v6

    goto/16 :goto_324

    .line 112
    :pswitch_293
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 113
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->G(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 114
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v6, :cond_2a7

    int-to-long v14, v14

    .line 115
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 116
    :cond_2a7
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result v3

    .line 117
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v6

    goto/16 :goto_324

    .line 118
    :pswitch_2b1
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 119
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->s(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 120
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v6, :cond_2c5

    int-to-long v14, v14

    .line 121
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 122
    :cond_2c5
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result v3

    .line 123
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v6

    goto :goto_324

    .line 124
    :pswitch_2ce
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 125
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->e(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 126
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v6, :cond_2e2

    int-to-long v14, v14

    .line 127
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 128
    :cond_2e2
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result v3

    .line 129
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v6

    goto :goto_324

    .line 130
    :pswitch_2eb
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 131
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->Q(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 132
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v6, :cond_2ff

    int-to-long v14, v14

    .line 133
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 134
    :cond_2ff
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result v3

    .line 135
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v6

    goto :goto_324

    .line 136
    :pswitch_308
    invoke-virtual {v2, v1, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 137
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->T(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_4e4

    .line 138
    iget-boolean v6, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v6, :cond_31c

    int-to-long v14, v14

    .line 139
    invoke-virtual {v2, v1, v14, v15, v5}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 140
    :cond_31c
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result v3

    .line 141
    invoke-static {v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v6

    :goto_324
    add-int/2addr v3, v6

    add-int/2addr v3, v5

    goto/16 :goto_3c9

    .line 142
    :pswitch_328
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->l(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->x(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3c9

    .line 143
    :pswitch_332
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->l(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 144
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->M(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3c9

    .line 145
    :pswitch_33c
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->l(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->S(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3c9

    .line 146
    :pswitch_346
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->l(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->P(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3c9

    .line 147
    :pswitch_350
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->l(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 148
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->B(ILjava/util/List;Z)I

    move-result v3

    goto/16 :goto_3c9

    .line 149
    :pswitch_35a
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->l(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 150
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->J(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 151
    :pswitch_363
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->l(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 152
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->p(ILjava/util/List;)I

    move-result v3

    goto :goto_3c9

    .line 153
    :pswitch_36c
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->l(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v6

    .line 154
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->c(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzkd;)I

    move-result v3

    goto :goto_3c9

    .line 155
    :pswitch_379
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->l(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->b(ILjava/util/List;)I

    move-result v3

    goto :goto_3c9

    .line 156
    :pswitch_382
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->l(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->V(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 157
    :pswitch_38b
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->l(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->P(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 158
    :pswitch_394
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->l(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->S(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 159
    :pswitch_39d
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->l(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    .line 160
    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->F(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 161
    :pswitch_3a6
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->l(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->r(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 162
    :pswitch_3af
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->l(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->d(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 163
    :pswitch_3b8
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->l(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->P(ILjava/util/List;Z)I

    move-result v3

    goto :goto_3c9

    .line 164
    :pswitch_3c1
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->l(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->S(ILjava/util/List;Z)I

    move-result v3

    :goto_3c9
    add-int/2addr v13, v3

    goto/16 :goto_4e4

    .line 165
    :pswitch_3cc
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 166
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/firebase_auth/zzjn;

    .line 167
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v6

    .line 168
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->V(ILcom/google/android/gms/internal/firebase_auth/zzjn;Lcom/google/android/gms/internal/firebase_auth/zzkd;)I

    move-result v3

    goto :goto_3c9

    .line 169
    :pswitch_3e1
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 170
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->n0(IJ)I

    move-result v3

    goto :goto_3c9

    .line 171
    :pswitch_3f0
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 172
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->u0(II)I

    move-result v3

    goto :goto_3c9

    .line 173
    :pswitch_3ff
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 174
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->v0(IJ)I

    move-result v3

    goto :goto_3c9

    .line 175
    :pswitch_40a
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 176
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->B0(II)I

    move-result v3

    goto :goto_3c9

    .line 177
    :pswitch_415
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 178
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->D0(II)I

    move-result v3

    goto :goto_3c9

    .line 179
    :pswitch_424
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 180
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->q0(II)I

    move-result v3

    goto :goto_3c9

    .line 181
    :pswitch_433
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 182
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    .line 183
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->U(ILcom/google/android/gms/internal/firebase_auth/zzgv;)I

    move-result v3

    goto :goto_3c9

    .line 184
    :pswitch_444
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 185
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 186
    invoke-direct {v0, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)I

    move-result v3

    goto/16 :goto_3c9

    .line 187
    :pswitch_458
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 188
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 189
    instance-of v6, v5, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    if-eqz v6, :cond_46e

    .line 190
    check-cast v5, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->U(ILcom/google/android/gms/internal/firebase_auth/zzgv;)I

    move-result v3

    goto/16 :goto_3c9

    .line 191
    :cond_46e
    check-cast v5, Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->G(ILjava/lang/String;)I

    move-result v3

    goto/16 :goto_3c9

    .line 192
    :pswitch_476
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 193
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->H(IZ)I

    move-result v3

    goto/16 :goto_3c9

    .line 194
    :pswitch_482
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 195
    invoke-static {v3, v11}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->y0(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 196
    :pswitch_48e
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 197
    invoke-static {v3, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->r0(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 198
    :pswitch_49a
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 199
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {v3, v5}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->m0(II)I

    move-result v3

    goto/16 :goto_3c9

    .line 200
    :pswitch_4aa
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 201
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->i0(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 202
    :pswitch_4ba
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v14

    if-eqz v14, :cond_4e4

    .line 203
    invoke-static {v1, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v5

    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->c0(IJ)I

    move-result v3

    goto/16 :goto_3c9

    .line 204
    :pswitch_4ca
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e4

    .line 205
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->C(IF)I

    move-result v3

    goto/16 :goto_3c9

    .line 206
    :pswitch_4d6
    invoke-direct {v0, v1, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4e4

    const-wide/16 v5, 0x0

    .line 207
    invoke-static {v3, v5, v6}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->B(ID)I

    move-result v3

    goto/16 :goto_3c9

    :cond_4e4
    :goto_4e4
    add-int/lit8 v12, v12, 0x3

    const/high16 v3, 0xff00000

    goto/16 :goto_16

    .line 208
    :cond_4ea
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->o:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->h(Lcom/google/android/gms/internal/firebase_auth/zzkz;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v13, v1

    return v13

    .line 209
    :cond_4f2
    sget-object v2, Lcom/google/android/gms/internal/firebase_auth/zzjr;->s:Lsun/misc/Unsafe;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const v6, 0xfffff

    const/4 v12, 0x0

    .line 210
    :goto_4fa
    iget-object v13, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    array-length v13, v13

    if-ge v3, v13, :cond_a26

    .line 211
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->C(I)I

    move-result v13

    .line 212
    iget-object v14, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v15, v14, v3

    const/high16 v16, 0xff00000

    and-int v17, v13, v16

    ushr-int/lit8 v4, v17, 0x14

    const/16 v11, 0x11

    if-gt v4, v11, :cond_525

    add-int/lit8 v11, v3, 0x2

    .line 213
    aget v11, v14, v11

    and-int v14, v11, v8

    ushr-int/lit8 v18, v11, 0x14

    shl-int v18, v7, v18

    if-eq v14, v6, :cond_523

    int-to-long v9, v14

    .line 214
    invoke-virtual {v2, v1, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v12

    move v6, v14

    :cond_523
    move v9, v11

    goto :goto_544

    .line 215
    :cond_525
    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v9, :cond_541

    sget-object v9, Lcom/google/android/gms/internal/firebase_auth/zzia;->c0:Lcom/google/android/gms/internal/firebase_auth/zzia;

    .line 216
    invoke-virtual {v9}, Lcom/google/android/gms/internal/firebase_auth/zzia;->zza()I

    move-result v9

    if-lt v4, v9, :cond_541

    sget-object v9, Lcom/google/android/gms/internal/firebase_auth/zzia;->p0:Lcom/google/android/gms/internal/firebase_auth/zzia;

    .line 217
    invoke-virtual {v9}, Lcom/google/android/gms/internal/firebase_auth/zzia;->zza()I

    move-result v9

    if-gt v4, v9, :cond_541

    .line 218
    iget-object v9, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    add-int/lit8 v10, v3, 0x2

    aget v9, v9, v10

    and-int/2addr v9, v8

    goto :goto_542

    :cond_541
    const/4 v9, 0x0

    :goto_542
    const/16 v18, 0x0

    :goto_544
    and-int v10, v13, v8

    int-to-long v10, v10

    packed-switch v4, :pswitch_data_b10

    goto/16 :goto_90a

    .line 219
    :pswitch_54c
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    .line 220
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase_auth/zzjn;

    .line 221
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v9

    .line 222
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->V(ILcom/google/android/gms/internal/firebase_auth/zzjn;Lcom/google/android/gms/internal/firebase_auth/zzkd;)I

    move-result v4

    goto/16 :goto_909

    .line 223
    :pswitch_562
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    .line 224
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->F(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->n0(IJ)I

    move-result v4

    goto/16 :goto_909

    .line 225
    :pswitch_572
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    .line 226
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->u0(II)I

    move-result v4

    goto/16 :goto_909

    .line 227
    :pswitch_582
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    const-wide/16 v9, 0x0

    .line 228
    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->v0(IJ)I

    move-result v4

    goto/16 :goto_909

    .line 229
    :pswitch_590
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    const/4 v4, 0x0

    .line 230
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->B0(II)I

    move-result v9

    goto/16 :goto_953

    .line 231
    :pswitch_59d
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    .line 232
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->D0(II)I

    move-result v4

    goto/16 :goto_909

    .line 233
    :pswitch_5ad
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    .line 234
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->q0(II)I

    move-result v4

    goto/16 :goto_909

    .line 235
    :pswitch_5bd
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    .line 236
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    .line 237
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->U(ILcom/google/android/gms/internal/firebase_auth/zzgv;)I

    move-result v4

    goto/16 :goto_909

    .line 238
    :pswitch_5cf
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    .line 239
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 240
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v9

    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)I

    move-result v4

    goto/16 :goto_909

    .line 241
    :pswitch_5e3
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    .line 242
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 243
    instance-of v9, v4, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    if-eqz v9, :cond_5f9

    .line 244
    check-cast v4, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->U(ILcom/google/android/gms/internal/firebase_auth/zzgv;)I

    move-result v4

    goto/16 :goto_909

    .line 245
    :cond_5f9
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->G(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_909

    .line 246
    :pswitch_601
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    .line 247
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->H(IZ)I

    move-result v4

    goto/16 :goto_909

    .line 248
    :pswitch_60d
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    const/4 v4, 0x0

    .line 249
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->y0(II)I

    move-result v9

    goto/16 :goto_953

    .line 250
    :pswitch_61a
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    const-wide/16 v9, 0x0

    .line 251
    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->r0(IJ)I

    move-result v4

    goto/16 :goto_909

    .line 252
    :pswitch_628
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    .line 253
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->m0(II)I

    move-result v4

    goto/16 :goto_909

    .line 254
    :pswitch_638
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    .line 255
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->F(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->i0(IJ)I

    move-result v4

    goto/16 :goto_909

    .line 256
    :pswitch_648
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    .line 257
    invoke-static {v1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->F(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->c0(IJ)I

    move-result v4

    goto/16 :goto_909

    .line 258
    :pswitch_658
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    const/4 v4, 0x0

    .line 259
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->C(IF)I

    move-result v9

    goto/16 :goto_953

    .line 260
    :pswitch_665
    invoke-direct {v0, v1, v15, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_90a

    const-wide/16 v9, 0x0

    .line 261
    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->B(ID)I

    move-result v4

    goto/16 :goto_909

    .line 262
    :pswitch_673
    iget-object v4, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    .line 263
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->v(I)Ljava/lang/Object;

    move-result-object v10

    .line 264
    invoke-interface {v4, v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzjk;->f(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    goto/16 :goto_909

    .line 265
    :pswitch_683
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 266
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v9

    .line 267
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->q(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzkd;)I

    move-result v4

    goto/16 :goto_909

    .line 268
    :pswitch_693
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 269
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->y(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90a

    .line 270
    iget-boolean v10, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v10, :cond_6a7

    int-to-long v9, v9

    .line 271
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 272
    :cond_6a7
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result v9

    .line 273
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v10

    goto/16 :goto_832

    .line 274
    :pswitch_6b1
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 275
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->N(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90a

    .line 276
    iget-boolean v10, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v10, :cond_6c5

    int-to-long v9, v9

    .line 277
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 278
    :cond_6c5
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result v9

    .line 279
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v10

    goto/16 :goto_832

    .line 280
    :pswitch_6cf
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 281
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->T(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90a

    .line 282
    iget-boolean v10, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v10, :cond_6e3

    int-to-long v9, v9

    .line 283
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 284
    :cond_6e3
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result v9

    .line 285
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v10

    goto/16 :goto_832

    .line 286
    :pswitch_6ed
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 287
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->Q(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90a

    .line 288
    iget-boolean v10, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v10, :cond_701

    int-to-long v9, v9

    .line 289
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 290
    :cond_701
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result v9

    .line 291
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v10

    goto/16 :goto_832

    .line 292
    :pswitch_70b
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 293
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->C(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90a

    .line 294
    iget-boolean v10, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v10, :cond_71f

    int-to-long v9, v9

    .line 295
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 296
    :cond_71f
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result v9

    .line 297
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v10

    goto/16 :goto_832

    .line 298
    :pswitch_729
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 299
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->K(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90a

    .line 300
    iget-boolean v10, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v10, :cond_73d

    int-to-long v9, v9

    .line 301
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 302
    :cond_73d
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result v9

    .line 303
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v10

    goto/16 :goto_832

    .line 304
    :pswitch_747
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 305
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->W(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90a

    .line 306
    iget-boolean v10, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v10, :cond_75b

    int-to-long v9, v9

    .line 307
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 308
    :cond_75b
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result v9

    .line 309
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v10

    goto/16 :goto_832

    .line 310
    :pswitch_765
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 311
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->Q(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90a

    .line 312
    iget-boolean v10, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v10, :cond_779

    int-to-long v9, v9

    .line 313
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 314
    :cond_779
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result v9

    .line 315
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v10

    goto/16 :goto_832

    .line 316
    :pswitch_783
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 317
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->T(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90a

    .line 318
    iget-boolean v10, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v10, :cond_797

    int-to-long v9, v9

    .line 319
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 320
    :cond_797
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result v9

    .line 321
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v10

    goto/16 :goto_832

    .line 322
    :pswitch_7a1
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 323
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->G(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90a

    .line 324
    iget-boolean v10, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v10, :cond_7b5

    int-to-long v9, v9

    .line 325
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 326
    :cond_7b5
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result v9

    .line 327
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v10

    goto/16 :goto_832

    .line 328
    :pswitch_7bf
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 329
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->s(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90a

    .line 330
    iget-boolean v10, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v10, :cond_7d3

    int-to-long v9, v9

    .line 331
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 332
    :cond_7d3
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result v9

    .line 333
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v10

    goto :goto_832

    .line 334
    :pswitch_7dc
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 335
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->e(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90a

    .line 336
    iget-boolean v10, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v10, :cond_7f0

    int-to-long v9, v9

    .line 337
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 338
    :cond_7f0
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result v9

    .line 339
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v10

    goto :goto_832

    .line 340
    :pswitch_7f9
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 341
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->Q(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90a

    .line 342
    iget-boolean v10, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v10, :cond_80d

    int-to-long v9, v9

    .line 343
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 344
    :cond_80d
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result v9

    .line 345
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v10

    goto :goto_832

    .line 346
    :pswitch_816
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 347
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->T(Ljava/util/List;)I

    move-result v4

    if-lez v4, :cond_90a

    .line 348
    iget-boolean v10, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->i:Z

    if-eqz v10, :cond_82a

    int-to-long v9, v9

    .line 349
    invoke-virtual {v2, v1, v9, v10, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    .line 350
    :cond_82a
    invoke-static {v15}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->h0(I)I

    move-result v9

    .line 351
    invoke-static {v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->p0(I)I

    move-result v10

    :goto_832
    add-int/2addr v9, v10

    add-int/2addr v9, v4

    goto/16 :goto_953

    .line 352
    :pswitch_836
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v9, 0x0

    .line 353
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->x(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_909

    :pswitch_843
    const/4 v9, 0x0

    .line 354
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 355
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->M(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_909

    :pswitch_850
    const/4 v9, 0x0

    .line 356
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 357
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->S(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_909

    :pswitch_85d
    const/4 v9, 0x0

    .line 358
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 359
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->P(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_909

    :pswitch_86a
    const/4 v9, 0x0

    .line 360
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 361
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->B(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_909

    :pswitch_877
    const/4 v9, 0x0

    .line 362
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 363
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->J(ILjava/util/List;Z)I

    move-result v4

    goto/16 :goto_909

    .line 364
    :pswitch_884
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 365
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->p(ILjava/util/List;)I

    move-result v4

    goto/16 :goto_909

    .line 366
    :pswitch_890
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v9

    .line 367
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->c(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzkd;)I

    move-result v4

    goto :goto_909

    .line 368
    :pswitch_89f
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->b(ILjava/util/List;)I

    move-result v4

    goto :goto_909

    .line 369
    :pswitch_8aa
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v9, 0x0

    .line 370
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->V(ILjava/util/List;Z)I

    move-result v4

    goto :goto_909

    :pswitch_8b6
    const/4 v9, 0x0

    .line 371
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 372
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->P(ILjava/util/List;Z)I

    move-result v4

    goto :goto_909

    :pswitch_8c2
    const/4 v9, 0x0

    .line 373
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 374
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->S(ILjava/util/List;Z)I

    move-result v4

    goto :goto_909

    :pswitch_8ce
    const/4 v9, 0x0

    .line 375
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 376
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->F(ILjava/util/List;Z)I

    move-result v4

    goto :goto_909

    :pswitch_8da
    const/4 v9, 0x0

    .line 377
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 378
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->r(ILjava/util/List;Z)I

    move-result v4

    goto :goto_909

    :pswitch_8e6
    const/4 v9, 0x0

    .line 379
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 380
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->d(ILjava/util/List;Z)I

    move-result v4

    goto :goto_909

    :pswitch_8f2
    const/4 v9, 0x0

    .line 381
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 382
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->P(ILjava/util/List;Z)I

    move-result v4

    goto :goto_909

    :pswitch_8fe
    const/4 v9, 0x0

    .line 383
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 384
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->S(ILjava/util/List;Z)I

    move-result v4

    :goto_909
    add-int/2addr v5, v4

    :cond_90a
    :goto_90a
    const/4 v4, 0x0

    :goto_90b
    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v13, 0x0

    goto/16 :goto_a1f

    :pswitch_912
    and-int v4, v12, v18

    if-eqz v4, :cond_90a

    .line 385
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase_auth/zzjn;

    .line 386
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v9

    .line 387
    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->V(ILcom/google/android/gms/internal/firebase_auth/zzjn;Lcom/google/android/gms/internal/firebase_auth/zzkd;)I

    move-result v4

    goto :goto_909

    :pswitch_925
    and-int v4, v12, v18

    if-eqz v4, :cond_90a

    .line 388
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->n0(IJ)I

    move-result v4

    goto :goto_909

    :pswitch_932
    and-int v4, v12, v18

    if-eqz v4, :cond_90a

    .line 389
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->u0(II)I

    move-result v4

    goto :goto_909

    :pswitch_93f
    and-int v4, v12, v18

    if-eqz v4, :cond_90a

    const-wide/16 v9, 0x0

    .line 390
    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->v0(IJ)I

    move-result v4

    goto :goto_909

    :pswitch_94a
    and-int v4, v12, v18

    if-eqz v4, :cond_90a

    const/4 v4, 0x0

    .line 391
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->B0(II)I

    move-result v9

    :goto_953
    add-int/2addr v5, v9

    goto :goto_90a

    :pswitch_955
    and-int v4, v12, v18

    if-eqz v4, :cond_90a

    .line 392
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->D0(II)I

    move-result v4

    goto :goto_909

    :pswitch_962
    and-int v4, v12, v18

    if-eqz v4, :cond_90a

    .line 393
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->q0(II)I

    move-result v4

    goto :goto_909

    :pswitch_96f
    and-int v4, v12, v18

    if-eqz v4, :cond_90a

    .line 394
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    .line 395
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->U(ILcom/google/android/gms/internal/firebase_auth/zzgv;)I

    move-result v4

    goto :goto_909

    :pswitch_97e
    and-int v4, v12, v18

    if-eqz v4, :cond_90a

    .line 396
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 397
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v9

    invoke-static {v15, v4, v9}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->a(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)I

    move-result v4

    goto/16 :goto_909

    :pswitch_990
    and-int v4, v12, v18

    if-eqz v4, :cond_90a

    .line 398
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 399
    instance-of v9, v4, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    if-eqz v9, :cond_9a4

    .line 400
    check-cast v4, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->U(ILcom/google/android/gms/internal/firebase_auth/zzgv;)I

    move-result v4

    goto/16 :goto_909

    .line 401
    :cond_9a4
    check-cast v4, Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->G(ILjava/lang/String;)I

    move-result v4

    goto/16 :goto_909

    :pswitch_9ac
    and-int v4, v12, v18

    if-eqz v4, :cond_90a

    .line 402
    invoke-static {v15, v7}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->H(IZ)I

    move-result v4

    goto/16 :goto_909

    :pswitch_9b6
    and-int v4, v12, v18

    if-eqz v4, :cond_90a

    const/4 v4, 0x0

    .line 403
    invoke-static {v15, v4}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->y0(II)I

    move-result v9

    add-int/2addr v5, v9

    goto/16 :goto_90b

    :pswitch_9c2
    const/4 v4, 0x0

    and-int v9, v12, v18

    const-wide/16 v13, 0x0

    if-eqz v9, :cond_9fe

    .line 404
    invoke-static {v15, v13, v14}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->r0(IJ)I

    move-result v9

    goto :goto_9fd

    :pswitch_9ce
    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v18

    if-eqz v9, :cond_9fe

    .line 405
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v9

    invoke-static {v15, v9}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->m0(II)I

    move-result v9

    goto :goto_9fd

    :pswitch_9de
    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v18

    if-eqz v9, :cond_9fe

    .line 406
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->i0(IJ)I

    move-result v9

    goto :goto_9fd

    :pswitch_9ee
    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v18

    if-eqz v9, :cond_9fe

    .line 407
    invoke-virtual {v2, v1, v10, v11}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v9

    invoke-static {v15, v9, v10}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->c0(IJ)I

    move-result v9

    :goto_9fd
    add-int/2addr v5, v9

    :cond_9fe
    const/4 v9, 0x0

    goto :goto_a0d

    :pswitch_a00
    const/4 v4, 0x0

    const-wide/16 v13, 0x0

    and-int v9, v12, v18

    if-eqz v9, :cond_9fe

    const/4 v9, 0x0

    .line 408
    invoke-static {v15, v9}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->C(IF)I

    move-result v10

    add-int/2addr v5, v10

    :cond_a0d
    :goto_a0d
    const-wide/16 v10, 0x0

    goto :goto_a1f

    :pswitch_a10
    const/4 v4, 0x0

    const/4 v9, 0x0

    const-wide/16 v13, 0x0

    and-int v10, v12, v18

    if-eqz v10, :cond_a0d

    const-wide/16 v10, 0x0

    .line 409
    invoke-static {v15, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzhm;->B(ID)I

    move-result v15

    add-int/2addr v5, v15

    :goto_a1f
    add-int/lit8 v3, v3, 0x3

    move-wide v9, v13

    const/4 v4, 0x0

    const/4 v11, 0x0

    goto/16 :goto_4fa

    :cond_a26
    const/4 v4, 0x0

    .line 410
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->o:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->h(Lcom/google/android/gms/internal/firebase_auth/zzkz;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v5, v2

    .line 411
    iget-boolean v2, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->f:Z

    if-eqz v2, :cond_a80

    .line 412
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->p:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object v1

    const/4 v11, 0x0

    .line 413
    :goto_a39
    iget-object v2, v1, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase_auth/zzki;->l()I

    move-result v2

    if-ge v11, v2, :cond_a59

    .line 414
    iget-object v2, v1, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/firebase_auth/zzki;->j(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 415
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase_auth/zzhx;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a(Lcom/google/android/gms/internal/firebase_auth/zzhx;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v4, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_a39

    .line 416
    :cond_a59
    iget-object v1, v1, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase_auth/zzki;->o()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a63
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a7f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 417
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase_auth/zzhx;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a(Lcom/google/android/gms/internal/firebase_auth/zzhx;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v4, v2

    goto :goto_a63

    :cond_a7f
    add-int/2addr v5, v4

    :cond_a80
    return v5

    nop

    :pswitch_data_a82
    .packed-switch 0x0
        :pswitch_4d6
        :pswitch_4ca
        :pswitch_4ba
        :pswitch_4aa
        :pswitch_49a
        :pswitch_48e
        :pswitch_482
        :pswitch_476
        :pswitch_458
        :pswitch_444
        :pswitch_433
        :pswitch_424
        :pswitch_415
        :pswitch_40a
        :pswitch_3ff
        :pswitch_3f0
        :pswitch_3e1
        :pswitch_3cc
        :pswitch_3c1
        :pswitch_3b8
        :pswitch_3af
        :pswitch_3a6
        :pswitch_39d
        :pswitch_394
        :pswitch_38b
        :pswitch_382
        :pswitch_379
        :pswitch_36c
        :pswitch_363
        :pswitch_35a
        :pswitch_350
        :pswitch_346
        :pswitch_33c
        :pswitch_332
        :pswitch_328
        :pswitch_308
        :pswitch_2eb
        :pswitch_2ce
        :pswitch_2b1
        :pswitch_293
        :pswitch_275
        :pswitch_257
        :pswitch_239
        :pswitch_21b
        :pswitch_1fd
        :pswitch_1df
        :pswitch_1c1
        :pswitch_1a3
        :pswitch_185
        :pswitch_177
        :pswitch_167
        :pswitch_159
        :pswitch_14d
        :pswitch_13d
        :pswitch_12d
        :pswitch_11d
        :pswitch_111
        :pswitch_105
        :pswitch_f9
        :pswitch_db
        :pswitch_c7
        :pswitch_b5
        :pswitch_a5
        :pswitch_95
        :pswitch_89
        :pswitch_7d
        :pswitch_6d
        :pswitch_5d
        :pswitch_47
    .end packed-switch

    :pswitch_data_b10
    .packed-switch 0x0
        :pswitch_a10
        :pswitch_a00
        :pswitch_9ee
        :pswitch_9de
        :pswitch_9ce
        :pswitch_9c2
        :pswitch_9b6
        :pswitch_9ac
        :pswitch_990
        :pswitch_97e
        :pswitch_96f
        :pswitch_962
        :pswitch_955
        :pswitch_94a
        :pswitch_93f
        :pswitch_932
        :pswitch_925
        :pswitch_912
        :pswitch_8fe
        :pswitch_8f2
        :pswitch_8e6
        :pswitch_8da
        :pswitch_8ce
        :pswitch_8c2
        :pswitch_8b6
        :pswitch_8aa
        :pswitch_89f
        :pswitch_890
        :pswitch_884
        :pswitch_877
        :pswitch_86a
        :pswitch_85d
        :pswitch_850
        :pswitch_843
        :pswitch_836
        :pswitch_816
        :pswitch_7f9
        :pswitch_7dc
        :pswitch_7bf
        :pswitch_7a1
        :pswitch_783
        :pswitch_765
        :pswitch_747
        :pswitch_729
        :pswitch_70b
        :pswitch_6ed
        :pswitch_6cf
        :pswitch_6b1
        :pswitch_693
        :pswitch_683
        :pswitch_673
        :pswitch_665
        :pswitch_658
        :pswitch_648
        :pswitch_638
        :pswitch_628
        :pswitch_61a
        :pswitch_60d
        :pswitch_601
        :pswitch_5e3
        :pswitch_5cf
        :pswitch_5bd
        :pswitch_5ad
        :pswitch_59d
        :pswitch_590
        :pswitch_582
        :pswitch_572
        :pswitch_562
        :pswitch_54c
    .end packed-switch
.end method

.method public final d(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->k:I

    :goto_2
    iget v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->l:I

    if-ge v0, v1, :cond_25

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->C(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 3
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_22

    .line 4
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/firebase_auth/zzjk;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5
    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j:[I

    array-length v0, v0

    :goto_28
    if-ge v1, v0, :cond_37

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->n:Lcom/google/android/gms/internal/firebase_auth/zzix;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j:[I

    aget v3, v3, v1

    int-to-long v3, v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzix;->d(Ljava/lang/Object;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 7
    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->o:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->f(Ljava/lang/Object;)V

    .line 8
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->f:Z

    if-eqz v0, :cond_45

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->p:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->f(Ljava/lang/Object;)V

    :cond_45
    return-void
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_5
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1c9

    .line 2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->C(I)I

    move-result v4

    const v5, 0xfffff

    and-int v6, v4, v5

    int-to-long v6, v6

    const/high16 v8, 0xff00000

    and-int/2addr v4, v8

    ushr-int/lit8 v4, v4, 0x14

    packed-switch v4, :pswitch_data_1f2

    goto/16 :goto_1c2

    .line 3
    :pswitch_1c
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->E(I)I

    move-result v4

    and-int/2addr v4, v5

    int-to-long v4, v4

    .line 4
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v8

    .line 5
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v4

    if-ne v8, v4, :cond_1c1

    .line 6
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 7
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->o(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c2

    goto/16 :goto_1c1

    .line 8
    :pswitch_3c
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 9
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->o(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_1c2

    .line 10
    :pswitch_4a
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->o(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_1c2

    .line 12
    :pswitch_58
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->B(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 13
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 14
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->o(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c2

    goto/16 :goto_1c1

    .line 15
    :pswitch_6e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->B(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 16
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1c2

    goto/16 :goto_1c1

    .line 17
    :pswitch_82
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->B(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 18
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto/16 :goto_1c1

    .line 19
    :pswitch_94
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->B(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 20
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1c2

    goto/16 :goto_1c1

    .line 21
    :pswitch_a8
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->B(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 22
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto/16 :goto_1c1

    .line 23
    :pswitch_ba
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->B(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 24
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto/16 :goto_1c1

    .line 25
    :pswitch_cc
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->B(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 26
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto/16 :goto_1c1

    .line 27
    :pswitch_de
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->B(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 28
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 29
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->o(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c2

    goto/16 :goto_1c1

    .line 30
    :pswitch_f4
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->B(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 31
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 32
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->o(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c2

    goto/16 :goto_1c1

    .line 33
    :pswitch_10a
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->B(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 34
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    .line 35
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->o(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c2

    goto/16 :goto_1c1

    .line 36
    :pswitch_120
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->B(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 37
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->w(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->w(Ljava/lang/Object;J)Z

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto/16 :goto_1c1

    .line 38
    :pswitch_132
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->B(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 39
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto/16 :goto_1c1

    .line 40
    :pswitch_144
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->B(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 41
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1c2

    goto :goto_1c1

    .line 42
    :pswitch_157
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->B(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 43
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto :goto_1c1

    .line 44
    :pswitch_168
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->B(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 45
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1c2

    goto :goto_1c1

    .line 46
    :pswitch_17b
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->B(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 47
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1c2

    goto :goto_1c1

    .line 48
    :pswitch_18e
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->B(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 49
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->x(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    .line 50
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->x(Ljava/lang/Object;J)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    if-eq v4, v5, :cond_1c2

    goto :goto_1c1

    .line 51
    :pswitch_1a7
    invoke-direct {p0, p1, p2, v2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->B(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_1c1

    .line 52
    invoke-static {p1, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->C(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 53
    invoke-static {p2, v6, v7}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->C(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-eqz v8, :cond_1c2

    :cond_1c1
    :goto_1c1
    const/4 v3, 0x0

    :cond_1c2
    :goto_1c2
    if-nez v3, :cond_1c5

    return v1

    :cond_1c5
    add-int/lit8 v2, v2, 0x3

    goto/16 :goto_5

    .line 54
    :cond_1c9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->o:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->o:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkz;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1dc

    return v1

    .line 57
    :cond_1dc
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->f:Z

    if-eqz v0, :cond_1f1

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->p:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->p:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object p2

    .line 60
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1f1
    return v3

    :pswitch_data_1f2
    .packed-switch 0x0
        :pswitch_1a7
        :pswitch_18e
        :pswitch_17b
        :pswitch_168
        :pswitch_157
        :pswitch_144
        :pswitch_132
        :pswitch_120
        :pswitch_10a
        :pswitch_f4
        :pswitch_de
        :pswitch_cc
        :pswitch_ba
        :pswitch_a8
        :pswitch_94
        :pswitch_82
        :pswitch_6e
        :pswitch_58
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_3c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)V
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
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_182

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->C(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v2, v1

    int-to-long v2, v2

    .line 4
    iget-object v4, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v4, v4, v0

    const/high16 v5, 0xff00000

    and-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x14

    packed-switch v1, :pswitch_data_192

    goto/16 :goto_17e

    .line 5
    :pswitch_20
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->z(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17e

    .line 6
    :pswitch_25
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 7
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 8
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->x(Ljava/lang/Object;II)V

    goto/16 :goto_17e

    .line 9
    :pswitch_37
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->z(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17e

    .line 10
    :pswitch_3c
    invoke-direct {p0, p2, v4, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 11
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 12
    invoke-direct {p0, p1, v4, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->x(Ljava/lang/Object;II)V

    goto/16 :goto_17e

    .line 13
    :pswitch_4e
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q:Lcom/google/android/gms/internal/firebase_auth/zzjk;

    invoke-static {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->l(Lcom/google/android/gms/internal/firebase_auth/zzjk;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_17e

    .line 14
    :pswitch_55
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->n:Lcom/google/android/gms/internal/firebase_auth/zzix;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzix;->b(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_17e

    .line 15
    :pswitch_5c
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->p(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17e

    .line 16
    :pswitch_61
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 17
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->i(Ljava/lang/Object;JJ)V

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->w(Ljava/lang/Object;I)V

    goto/16 :goto_17e

    .line 19
    :pswitch_73
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 20
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->h(Ljava/lang/Object;JI)V

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->w(Ljava/lang/Object;I)V

    goto/16 :goto_17e

    .line 22
    :pswitch_85
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 23
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->i(Ljava/lang/Object;JJ)V

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->w(Ljava/lang/Object;I)V

    goto/16 :goto_17e

    .line 25
    :pswitch_97
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 26
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->h(Ljava/lang/Object;JI)V

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->w(Ljava/lang/Object;I)V

    goto/16 :goto_17e

    .line 28
    :pswitch_a9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 29
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->h(Ljava/lang/Object;JI)V

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->w(Ljava/lang/Object;I)V

    goto/16 :goto_17e

    .line 31
    :pswitch_bb
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 32
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->h(Ljava/lang/Object;JI)V

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->w(Ljava/lang/Object;I)V

    goto/16 :goto_17e

    .line 34
    :pswitch_cd
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 35
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->w(Ljava/lang/Object;I)V

    goto/16 :goto_17e

    .line 37
    :pswitch_df
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->p(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_17e

    .line 38
    :pswitch_e4
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 39
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->j(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->w(Ljava/lang/Object;I)V

    goto/16 :goto_17e

    .line 41
    :pswitch_f6
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 42
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->w(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->k(Ljava/lang/Object;JZ)V

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->w(Ljava/lang/Object;I)V

    goto/16 :goto_17e

    .line 44
    :pswitch_108
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 45
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->h(Ljava/lang/Object;JI)V

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->w(Ljava/lang/Object;I)V

    goto :goto_17e

    .line 47
    :pswitch_119
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 48
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->i(Ljava/lang/Object;JJ)V

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->w(Ljava/lang/Object;I)V

    goto :goto_17e

    .line 50
    :pswitch_12a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 51
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->h(Ljava/lang/Object;JI)V

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->w(Ljava/lang/Object;I)V

    goto :goto_17e

    .line 53
    :pswitch_13b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 54
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->i(Ljava/lang/Object;JJ)V

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->w(Ljava/lang/Object;I)V

    goto :goto_17e

    .line 56
    :pswitch_14c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 57
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->i(Ljava/lang/Object;JJ)V

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->w(Ljava/lang/Object;I)V

    goto :goto_17e

    .line 59
    :pswitch_15d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 60
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->x(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v2, v3, v1}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->g(Ljava/lang/Object;JF)V

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->w(Ljava/lang/Object;I)V

    goto :goto_17e

    .line 62
    :pswitch_16e
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 63
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->C(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {p1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->f(Ljava/lang/Object;JD)V

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->w(Ljava/lang/Object;I)V

    :cond_17e
    :goto_17e
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_4

    .line 65
    :cond_182
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->o:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->m(Lcom/google/android/gms/internal/firebase_auth/zzkz;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->f:Z

    if-eqz v0, :cond_190

    .line 67
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->p:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->k(Lcom/google/android/gms/internal/firebase_auth/zzhu;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_190
    return-void

    nop

    :pswitch_data_192
    .packed-switch 0x0
        :pswitch_16e
        :pswitch_15d
        :pswitch_14c
        :pswitch_13b
        :pswitch_12a
        :pswitch_119
        :pswitch_108
        :pswitch_f6
        :pswitch_e4
        :pswitch_df
        :pswitch_cd
        :pswitch_bb
        :pswitch_a9
        :pswitch_97
        :pswitch_85
        :pswitch_73
        :pswitch_61
        :pswitch_5c
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_4e
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_3c
        :pswitch_37
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_20
    .end packed-switch
.end method

.method public final g(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/firebase_auth/zzls;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/google/android/gms/internal/firebase_auth/zzls;->zza()I

    move-result v0

    sget v1, Lcom/google/android/gms/internal/firebase_auth/zzif$zzf;->m:I

    const/high16 v2, 0xff00000

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0xfffff

    if-ne v0, v1, :cond_529

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->o:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->n(Lcom/google/android/gms/internal/firebase_auth/zzkz;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->f:Z

    if-eqz v0, :cond_32

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->p:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object v0

    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->q()Ljava/util/Iterator;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_34

    :cond_32
    move-object v0, v3

    move-object v1, v0

    .line 8
    :goto_34
    iget-object v7, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x3

    :goto_39
    if-ltz v7, :cond_511

    .line 9
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->C(I)I

    move-result v8

    .line 10
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    :goto_43
    if-eqz v1, :cond_61

    .line 11
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->p:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->a(Ljava/util/Map$Entry;)I

    move-result v10

    if-le v10, v9, :cond_61

    .line 12
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->p:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v10, p2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->c(Lcom/google/android/gms/internal/firebase_auth/zzls;Ljava/util/Map$Entry;)V

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_43

    :cond_5f
    move-object v1, v3

    goto :goto_43

    :cond_61
    and-int v10, v8, v2

    ushr-int/lit8 v10, v10, 0x14

    packed-switch v10, :pswitch_data_a48

    goto/16 :goto_50d

    .line 14
    :pswitch_6a
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 15
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 16
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v10

    .line 17
    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/firebase_auth/zzls;->H(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_50d

    .line 18
    :pswitch_7f
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 19
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->F(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->L(IJ)V

    goto/16 :goto_50d

    .line 20
    :pswitch_90
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 21
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->v(II)V

    goto/16 :goto_50d

    .line 22
    :pswitch_a1
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 23
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->F(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->j(IJ)V

    goto/16 :goto_50d

    .line 24
    :pswitch_b2
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 25
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->F(II)V

    goto/16 :goto_50d

    .line 26
    :pswitch_c3
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 27
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->E(II)V

    goto/16 :goto_50d

    .line 28
    :pswitch_d4
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 29
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->C(II)V

    goto/16 :goto_50d

    .line 30
    :pswitch_e5
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 31
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    .line 32
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->G(ILcom/google/android/gms/internal/firebase_auth/zzgv;)V

    goto/16 :goto_50d

    .line 33
    :pswitch_f8
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 34
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 35
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/firebase_auth/zzls;->K(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_50d

    .line 36
    :pswitch_10d
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 37
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->m(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    goto/16 :goto_50d

    .line 38
    :pswitch_11e
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 39
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->G(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->A0(IZ)V

    goto/16 :goto_50d

    .line 40
    :pswitch_12f
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 41
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->A(II)V

    goto/16 :goto_50d

    .line 42
    :pswitch_140
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 43
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->F(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->I(IJ)V

    goto/16 :goto_50d

    .line 44
    :pswitch_151
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 45
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->n(II)V

    goto/16 :goto_50d

    .line 46
    :pswitch_162
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 47
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->F(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->o(IJ)V

    goto/16 :goto_50d

    .line 48
    :pswitch_173
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 49
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->F(Ljava/lang/Object;J)J

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->a(IJ)V

    goto/16 :goto_50d

    .line 50
    :pswitch_184
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 51
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->A(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->t(IF)V

    goto/16 :goto_50d

    .line 52
    :pswitch_195
    invoke-direct {p0, p1, v9, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 53
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->u(Ljava/lang/Object;J)D

    move-result-wide v10

    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->s(ID)V

    goto/16 :goto_50d

    :pswitch_1a6
    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 54
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, p2, v9, v8, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->o(Lcom/google/android/gms/internal/firebase_auth/zzls;ILjava/lang/Object;I)V

    goto/16 :goto_50d

    .line 55
    :pswitch_1b1
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 56
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 57
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v10

    .line 58
    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->v(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_50d

    .line 59
    :pswitch_1c6
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 60
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 61
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->I(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 62
    :pswitch_1d7
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 63
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 64
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->X(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 65
    :pswitch_1e8
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 66
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 67
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->O(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 68
    :pswitch_1f9
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 69
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 70
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->Z(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 71
    :pswitch_20a
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 72
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 73
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->a0(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 74
    :pswitch_21b
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 75
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 76
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->U(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 77
    :pswitch_22c
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 78
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 79
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->b0(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 80
    :pswitch_23d
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 81
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 82
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->Y(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 83
    :pswitch_24e
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 84
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 85
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->L(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 86
    :pswitch_25f
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 87
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 88
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->R(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 89
    :pswitch_270
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 90
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 91
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->E(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 92
    :pswitch_281
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 93
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 94
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->A(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 95
    :pswitch_292
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 96
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 97
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->w(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 98
    :pswitch_2a3
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 99
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 100
    invoke-static {v9, v8, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->j(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 101
    :pswitch_2b4
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 102
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 103
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->I(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 104
    :pswitch_2c5
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 105
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 106
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->X(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 107
    :pswitch_2d6
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 108
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 109
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->O(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 110
    :pswitch_2e7
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 111
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 112
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->Z(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 113
    :pswitch_2f8
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 114
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 115
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->a0(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 116
    :pswitch_309
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 117
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 118
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->U(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 119
    :pswitch_31a
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 120
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 121
    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->u(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    goto/16 :goto_50d

    .line 122
    :pswitch_32b
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 123
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 124
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v10

    .line 125
    invoke-static {v9, v8, p2, v10}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->i(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_50d

    .line 126
    :pswitch_340
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 127
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 128
    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->h(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    goto/16 :goto_50d

    .line 129
    :pswitch_351
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 130
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 131
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->b0(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 132
    :pswitch_362
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 133
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 134
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->Y(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 135
    :pswitch_373
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 136
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 137
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->L(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 138
    :pswitch_384
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 139
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 140
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->R(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 141
    :pswitch_395
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 142
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 143
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->E(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 144
    :pswitch_3a6
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 145
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 146
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->A(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 147
    :pswitch_3b7
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 148
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 149
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->w(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 150
    :pswitch_3c8
    iget-object v9, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v9, v9, v7

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 151
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 152
    invoke-static {v9, v8, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->j(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_50d

    .line 153
    :pswitch_3d9
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 154
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 155
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v10

    .line 156
    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/firebase_auth/zzls;->H(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_50d

    .line 157
    :pswitch_3ee
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 158
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 159
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->L(IJ)V

    goto/16 :goto_50d

    .line 160
    :pswitch_3ff
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 161
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v8

    .line 162
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->v(II)V

    goto/16 :goto_50d

    .line 163
    :pswitch_410
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 164
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 165
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->j(IJ)V

    goto/16 :goto_50d

    .line 166
    :pswitch_421
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 167
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v8

    .line 168
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->F(II)V

    goto/16 :goto_50d

    .line 169
    :pswitch_432
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 170
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v8

    .line 171
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->E(II)V

    goto/16 :goto_50d

    .line 172
    :pswitch_443
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 173
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v8

    .line 174
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->C(II)V

    goto/16 :goto_50d

    .line 175
    :pswitch_454
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 176
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    .line 177
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->G(ILcom/google/android/gms/internal/firebase_auth/zzgv;)V

    goto/16 :goto_50d

    .line 178
    :pswitch_467
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 179
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    .line 180
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v10

    invoke-interface {p2, v9, v8, v10}, Lcom/google/android/gms/internal/firebase_auth/zzls;->K(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_50d

    .line 181
    :pswitch_47c
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 182
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v9, v8, p2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->m(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    goto/16 :goto_50d

    .line 183
    :pswitch_48d
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 184
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->w(Ljava/lang/Object;J)Z

    move-result v8

    .line 185
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->A0(IZ)V

    goto/16 :goto_50d

    .line 186
    :pswitch_49e
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 187
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v8

    .line 188
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->A(II)V

    goto :goto_50d

    .line 189
    :pswitch_4ae
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 190
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 191
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->I(IJ)V

    goto :goto_50d

    .line 192
    :pswitch_4be
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 193
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v8

    .line 194
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->n(II)V

    goto :goto_50d

    .line 195
    :pswitch_4ce
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 196
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 197
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->o(IJ)V

    goto :goto_50d

    .line 198
    :pswitch_4de
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 199
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v10

    .line 200
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->a(IJ)V

    goto :goto_50d

    .line 201
    :pswitch_4ee
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 202
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->x(Ljava/lang/Object;J)F

    move-result v8

    .line 203
    invoke-interface {p2, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzls;->t(IF)V

    goto :goto_50d

    .line 204
    :pswitch_4fe
    invoke-direct {p0, p1, v7}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v10

    if-eqz v10, :cond_50d

    and-int/2addr v8, v6

    int-to-long v10, v8

    .line 205
    invoke-static {p1, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->C(Ljava/lang/Object;J)D

    move-result-wide v10

    .line 206
    invoke-interface {p2, v9, v10, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->s(ID)V

    :cond_50d
    :goto_50d
    add-int/lit8 v7, v7, -0x3

    goto/16 :goto_39

    :cond_511
    :goto_511
    if-eqz v1, :cond_528

    .line 207
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->p:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {p1, p2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->c(Lcom/google/android/gms/internal/firebase_auth/zzls;Ljava/util/Map$Entry;)V

    .line 208
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_526

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    move-object v1, p1

    goto :goto_511

    :cond_526
    move-object v1, v3

    goto :goto_511

    :cond_528
    return-void

    .line 209
    :cond_529
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->h:Z

    if-eqz v0, :cond_a44

    .line 210
    iget-boolean v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->f:Z

    if-eqz v0, :cond_54a

    .line 211
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->p:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase_auth/zzhv;

    move-result-object v0

    .line 212
    iget-object v1, v0, Lcom/google/android/gms/internal/firebase_auth/zzhv;->a:Lcom/google/android/gms/internal/firebase_auth/zzki;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_54a

    .line 213
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase_auth/zzhv;->p()Ljava/util/Iterator;

    move-result-object v0

    .line 214
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_54c

    :cond_54a
    move-object v0, v3

    move-object v1, v0

    .line 215
    :goto_54c
    iget-object v7, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    array-length v7, v7

    const/4 v8, 0x0

    :goto_550
    if-ge v8, v7, :cond_a28

    .line 216
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->C(I)I

    move-result v9

    .line 217
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    :goto_55a
    if-eqz v1, :cond_578

    .line 218
    iget-object v11, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->p:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->a(Ljava/util/Map$Entry;)I

    move-result v11

    if-gt v11, v10, :cond_578

    .line 219
    iget-object v11, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->p:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v11, p2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->c(Lcom/google/android/gms/internal/firebase_auth/zzls;Ljava/util/Map$Entry;)V

    .line 220
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_576

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_55a

    :cond_576
    move-object v1, v3

    goto :goto_55a

    :cond_578
    and-int v11, v9, v2

    ushr-int/lit8 v11, v11, 0x14

    packed-switch v11, :pswitch_data_ad6

    goto/16 :goto_a24

    .line 221
    :pswitch_581
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 222
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 223
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v11

    .line 224
    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->H(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_a24

    .line 225
    :pswitch_596
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 226
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->F(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzls;->L(IJ)V

    goto/16 :goto_a24

    .line 227
    :pswitch_5a7
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 228
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->v(II)V

    goto/16 :goto_a24

    .line 229
    :pswitch_5b8
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 230
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->F(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzls;->j(IJ)V

    goto/16 :goto_a24

    .line 231
    :pswitch_5c9
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 232
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->F(II)V

    goto/16 :goto_a24

    .line 233
    :pswitch_5da
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 234
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->E(II)V

    goto/16 :goto_a24

    .line 235
    :pswitch_5eb
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 236
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->C(II)V

    goto/16 :goto_a24

    .line 237
    :pswitch_5fc
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 238
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    .line 239
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->G(ILcom/google/android/gms/internal/firebase_auth/zzgv;)V

    goto/16 :goto_a24

    .line 240
    :pswitch_60f
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 241
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 242
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->K(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_a24

    .line 243
    :pswitch_624
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 244
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->m(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    goto/16 :goto_a24

    .line 245
    :pswitch_635
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 246
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->G(Ljava/lang/Object;J)Z

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->A0(IZ)V

    goto/16 :goto_a24

    .line 247
    :pswitch_646
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 248
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->A(II)V

    goto/16 :goto_a24

    .line 249
    :pswitch_657
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 250
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->F(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzls;->I(IJ)V

    goto/16 :goto_a24

    .line 251
    :pswitch_668
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 252
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->D(Ljava/lang/Object;J)I

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->n(II)V

    goto/16 :goto_a24

    .line 253
    :pswitch_679
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 254
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->F(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzls;->o(IJ)V

    goto/16 :goto_a24

    .line 255
    :pswitch_68a
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 256
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->F(Ljava/lang/Object;J)J

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzls;->a(IJ)V

    goto/16 :goto_a24

    .line 257
    :pswitch_69b
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 258
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->A(Ljava/lang/Object;J)F

    move-result v9

    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->t(IF)V

    goto/16 :goto_a24

    .line 259
    :pswitch_6ac
    invoke-direct {p0, p1, v10, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->r(Ljava/lang/Object;II)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 260
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->u(Ljava/lang/Object;J)D

    move-result-wide v11

    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzls;->s(ID)V

    goto/16 :goto_a24

    :pswitch_6bd
    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 261
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {p0, p2, v10, v9, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->o(Lcom/google/android/gms/internal/firebase_auth/zzls;ILjava/lang/Object;I)V

    goto/16 :goto_a24

    .line 262
    :pswitch_6c8
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 263
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 264
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v11

    .line 265
    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->v(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_a24

    .line 266
    :pswitch_6dd
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 267
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 268
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->I(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a24

    .line 269
    :pswitch_6ee
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 270
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 271
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->X(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a24

    .line 272
    :pswitch_6ff
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 273
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 274
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->O(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a24

    .line 275
    :pswitch_710
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 276
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 277
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->Z(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a24

    .line 278
    :pswitch_721
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 279
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 280
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->a0(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a24

    .line 281
    :pswitch_732
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 282
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 283
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->U(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a24

    .line 284
    :pswitch_743
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 285
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 286
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->b0(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a24

    .line 287
    :pswitch_754
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 288
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 289
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->Y(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a24

    .line 290
    :pswitch_765
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 291
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 292
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->L(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a24

    .line 293
    :pswitch_776
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 294
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 295
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->R(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a24

    .line 296
    :pswitch_787
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 297
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 298
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->E(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a24

    .line 299
    :pswitch_798
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 300
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 301
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->A(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a24

    .line 302
    :pswitch_7a9
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 303
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 304
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->w(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a24

    .line 305
    :pswitch_7ba
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 306
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 307
    invoke-static {v10, v9, p2, v4}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->j(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a24

    .line 308
    :pswitch_7cb
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 309
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 310
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->I(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a24

    .line 311
    :pswitch_7dc
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 312
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 313
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->X(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a24

    .line 314
    :pswitch_7ed
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 315
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 316
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->O(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a24

    .line 317
    :pswitch_7fe
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 318
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 319
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->Z(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a24

    .line 320
    :pswitch_80f
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 321
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 322
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->a0(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a24

    .line 323
    :pswitch_820
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 324
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 325
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->U(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a24

    .line 326
    :pswitch_831
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 327
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 328
    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->u(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    goto/16 :goto_a24

    .line 329
    :pswitch_842
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 330
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 331
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v11

    .line 332
    invoke-static {v10, v9, p2, v11}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->i(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_a24

    .line 333
    :pswitch_857
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 334
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 335
    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->h(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    goto/16 :goto_a24

    .line 336
    :pswitch_868
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 337
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 338
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->b0(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a24

    .line 339
    :pswitch_879
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 340
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 341
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->Y(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a24

    .line 342
    :pswitch_88a
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 343
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 344
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->L(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a24

    .line 345
    :pswitch_89b
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 346
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 347
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->R(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a24

    .line 348
    :pswitch_8ac
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 349
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 350
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->E(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a24

    .line 351
    :pswitch_8bd
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 352
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 353
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->A(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a24

    .line 354
    :pswitch_8ce
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 355
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 356
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->w(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a24

    .line 357
    :pswitch_8df
    iget-object v10, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->a:[I

    aget v10, v10, v8

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 358
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 359
    invoke-static {v10, v9, p2, v5}, Lcom/google/android/gms/internal/firebase_auth/zzkf;->j(ILjava/util/List;Lcom/google/android/gms/internal/firebase_auth/zzls;Z)V

    goto/16 :goto_a24

    .line 360
    :pswitch_8f0
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 361
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 362
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v11

    .line 363
    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->H(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_a24

    .line 364
    :pswitch_905
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 365
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 366
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzls;->L(IJ)V

    goto/16 :goto_a24

    .line 367
    :pswitch_916
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 368
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v9

    .line 369
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->v(II)V

    goto/16 :goto_a24

    .line 370
    :pswitch_927
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 371
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 372
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzls;->j(IJ)V

    goto/16 :goto_a24

    .line 373
    :pswitch_938
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 374
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v9

    .line 375
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->F(II)V

    goto/16 :goto_a24

    .line 376
    :pswitch_949
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 377
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v9

    .line 378
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->E(II)V

    goto/16 :goto_a24

    .line 379
    :pswitch_95a
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 380
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v9

    .line 381
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->C(II)V

    goto/16 :goto_a24

    .line 382
    :pswitch_96b
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 383
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/firebase_auth/zzgv;

    .line 384
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->G(ILcom/google/android/gms/internal/firebase_auth/zzgv;)V

    goto/16 :goto_a24

    .line 385
    :pswitch_97e
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 386
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    .line 387
    invoke-direct {p0, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->j(I)Lcom/google/android/gms/internal/firebase_auth/zzkd;

    move-result-object v11

    invoke-interface {p2, v10, v9, v11}, Lcom/google/android/gms/internal/firebase_auth/zzls;->K(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzkd;)V

    goto/16 :goto_a24

    .line 388
    :pswitch_993
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 389
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->F(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9, p2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->m(ILjava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    goto/16 :goto_a24

    .line 390
    :pswitch_9a4
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 391
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->w(Ljava/lang/Object;J)Z

    move-result v9

    .line 392
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->A0(IZ)V

    goto/16 :goto_a24

    .line 393
    :pswitch_9b5
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 394
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v9

    .line 395
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->A(II)V

    goto :goto_a24

    .line 396
    :pswitch_9c5
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 397
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 398
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzls;->I(IJ)V

    goto :goto_a24

    .line 399
    :pswitch_9d5
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 400
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->b(Ljava/lang/Object;J)I

    move-result v9

    .line 401
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->n(II)V

    goto :goto_a24

    .line 402
    :pswitch_9e5
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 403
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 404
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzls;->o(IJ)V

    goto :goto_a24

    .line 405
    :pswitch_9f5
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 406
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->o(Ljava/lang/Object;J)J

    move-result-wide v11

    .line 407
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzls;->a(IJ)V

    goto :goto_a24

    .line 408
    :pswitch_a05
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 409
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->x(Ljava/lang/Object;J)F

    move-result v9

    .line 410
    invoke-interface {p2, v10, v9}, Lcom/google/android/gms/internal/firebase_auth/zzls;->t(IF)V

    goto :goto_a24

    .line 411
    :pswitch_a15
    invoke-direct {p0, p1, v8}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->q(Ljava/lang/Object;I)Z

    move-result v11

    if-eqz v11, :cond_a24

    and-int/2addr v9, v6

    int-to-long v11, v9

    .line 412
    invoke-static {p1, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzlf;->C(Ljava/lang/Object;J)D

    move-result-wide v11

    .line 413
    invoke-interface {p2, v10, v11, v12}, Lcom/google/android/gms/internal/firebase_auth/zzls;->s(ID)V

    :cond_a24
    :goto_a24
    add-int/lit8 v8, v8, 0x3

    goto/16 :goto_550

    :cond_a28
    :goto_a28
    if-eqz v1, :cond_a3e

    .line 414
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->p:Lcom/google/android/gms/internal/firebase_auth/zzhu;

    invoke-virtual {v2, p2, v1}, Lcom/google/android/gms/internal/firebase_auth/zzhu;->c(Lcom/google/android/gms/internal/firebase_auth/zzls;Ljava/util/Map$Entry;)V

    .line 415
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_a28

    :cond_a3c
    move-object v1, v3

    goto :goto_a28

    .line 416
    :cond_a3e
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase_auth/zzjr;->o:Lcom/google/android/gms/internal/firebase_auth/zzkz;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->n(Lcom/google/android/gms/internal/firebase_auth/zzkz;Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    return-void

    .line 417
    :cond_a44
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/firebase_auth/zzjr;->y(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase_auth/zzls;)V

    return-void

    :pswitch_data_a48
    .packed-switch 0x0
        :pswitch_4fe
        :pswitch_4ee
        :pswitch_4de
        :pswitch_4ce
        :pswitch_4be
        :pswitch_4ae
        :pswitch_49e
        :pswitch_48d
        :pswitch_47c
        :pswitch_467
        :pswitch_454
        :pswitch_443
        :pswitch_432
        :pswitch_421
        :pswitch_410
        :pswitch_3ff
        :pswitch_3ee
        :pswitch_3d9
        :pswitch_3c8
        :pswitch_3b7
        :pswitch_3a6
        :pswitch_395
        :pswitch_384
        :pswitch_373
        :pswitch_362
        :pswitch_351
        :pswitch_340
        :pswitch_32b
        :pswitch_31a
        :pswitch_309
        :pswitch_2f8
        :pswitch_2e7
        :pswitch_2d6
        :pswitch_2c5
        :pswitch_2b4
        :pswitch_2a3
        :pswitch_292
        :pswitch_281
        :pswitch_270
        :pswitch_25f
        :pswitch_24e
        :pswitch_23d
        :pswitch_22c
        :pswitch_21b
        :pswitch_20a
        :pswitch_1f9
        :pswitch_1e8
        :pswitch_1d7
        :pswitch_1c6
        :pswitch_1b1
        :pswitch_1a6
        :pswitch_195
        :pswitch_184
        :pswitch_173
        :pswitch_162
        :pswitch_151
        :pswitch_140
        :pswitch_12f
        :pswitch_11e
        :pswitch_10d
        :pswitch_f8
        :pswitch_e5
        :pswitch_d4
        :pswitch_c3
        :pswitch_b2
        :pswitch_a1
        :pswitch_90
        :pswitch_7f
        :pswitch_6a
    .end packed-switch

    :pswitch_data_ad6
    .packed-switch 0x0
        :pswitch_a15
        :pswitch_a05
        :pswitch_9f5
        :pswitch_9e5
        :pswitch_9d5
        :pswitch_9c5
        :pswitch_9b5
        :pswitch_9a4
        :pswitch_993
        :pswitch_97e
        :pswitch_96b
        :pswitch_95a
        :pswitch_949
        :pswitch_938
        :pswitch_927
        :pswitch_916
        :pswitch_905
        :pswitch_8f0
        :pswitch_8df
        :pswitch_8ce
        :pswitch_8bd
        :pswitch_8ac
        :pswitch_89b
        :pswitch_88a
        :pswitch_879
        :pswitch_868
        :pswitch_857
        :pswitch_842
        :pswitch_831
        :pswitch_820
        :pswitch_80f
        :pswitch_7fe
        :pswitch_7ed
        :pswitch_7dc
        :pswitch_7cb
        :pswitch_7ba
        :pswitch_7a9
        :pswitch_798
        :pswitch_787
        :pswitch_776
        :pswitch_765
        :pswitch_754
        :pswitch_743
        :pswitch_732
        :pswitch_721
        :pswitch_710
        :pswitch_6ff
        :pswitch_6ee
        :pswitch_6dd
        :pswitch_6c8
        :pswitch_6bd
        :pswitch_6ac
        :pswitch_69b
        :pswitch_68a
        :pswitch_679
        :pswitch_668
        :pswitch_657
        :pswitch_646
        :pswitch_635
        :pswitch_624
        :pswitch_60f
        :pswitch_5fc
        :pswitch_5eb
        :pswitch_5da
        :pswitch_5c9
        :pswitch_5b8
        :pswitch_5a7
        :pswitch_596
        :pswitch_581
    .end packed-switch
.end method
