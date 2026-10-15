###### Class androidx.datastore.preferences.protobuf.e (androidx.datastore.preferences.protobuf.e)
.class abstract Landroidx/datastore/preferences/protobuf/e;
.super Ljava/lang/Object;
.source "BinaryReader.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/f1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/e$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/e$a;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e;-><init>()V

    return-void
.end method

.method public static Q(Ljava/nio/ByteBuffer;Z)Landroidx/datastore/preferences/protobuf/e;
    .registers 3

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2
    new-instance v0, Landroidx/datastore/preferences/protobuf/e$b;

    invoke-direct {v0, p0, p1}, Landroidx/datastore/preferences/protobuf/e$b;-><init>(Ljava/nio/ByteBuffer;Z)V

    return-object v0

    .line 3
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Direct buffers not yet supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

###### Class androidx.datastore.preferences.protobuf.e.a (androidx.datastore.preferences.protobuf.e$a)
.class synthetic Landroidx/datastore/preferences/protobuf/e$a;
.super Ljava/lang/Object;
.source "BinaryReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Landroidx/datastore/preferences/protobuf/t1$b;->values()[Landroidx/datastore/preferences/protobuf/t1$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroidx/datastore/preferences/protobuf/e$a;->a:[I

    :try_start_9
    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->x:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Landroidx/datastore/preferences/protobuf/e$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->B:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Landroidx/datastore/preferences/protobuf/e$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->q:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Landroidx/datastore/preferences/protobuf/e$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->D:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Landroidx/datastore/preferences/protobuf/e$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->w:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Landroidx/datastore/preferences/protobuf/e$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->v:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Landroidx/datastore/preferences/protobuf/e$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->r:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Landroidx/datastore/preferences/protobuf/e$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->u:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Landroidx/datastore/preferences/protobuf/e$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->s:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Landroidx/datastore/preferences/protobuf/e$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->A:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Landroidx/datastore/preferences/protobuf/e$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->E:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v0, Landroidx/datastore/preferences/protobuf/e$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->F:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    :try_start_90
    sget-object v0, Landroidx/datastore/preferences/protobuf/e$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->G:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9c
    sget-object v0, Landroidx/datastore/preferences/protobuf/e$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->H:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a8
    sget-object v0, Landroidx/datastore/preferences/protobuf/e$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->y:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    :catch_b4
    :try_start_b4
    sget-object v0, Landroidx/datastore/preferences/protobuf/e$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->C:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_c0

    :catch_c0
    :try_start_c0
    sget-object v0, Landroidx/datastore/preferences/protobuf/e$a;->a:[I

    sget-object v1, Landroidx/datastore/preferences/protobuf/t1$b;->t:Landroidx/datastore/preferences/protobuf/t1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cc} :catch_cc

    :catch_cc
    return-void
.end method

###### Class androidx.datastore.preferences.protobuf.e.b (androidx.datastore.preferences.protobuf.e$b)
.class final Landroidx/datastore/preferences/protobuf/e$b;
.super Landroidx/datastore/preferences/protobuf/e;
.source "BinaryReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Z

.field private final b:[B

.field private c:I

.field private final d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e;-><init>(Landroidx/datastore/preferences/protobuf/e$a;)V

    .line 2
    iput-boolean p2, p0, Landroidx/datastore/preferences/protobuf/e$b;->a:Z

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    iput-object p2, p0, Landroidx/datastore/preferences/protobuf/e$b;->b:[B

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    iput p2, p0, Landroidx/datastore/preferences/protobuf/e$b;->d:I

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/datastore/preferences/protobuf/e$b;->e:I

    return-void
.end method

.method private R()Z
    .registers 3

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->e:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private S()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->e:I

    if-eq v0, v1, :cond_f

    .line 2
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->b:[B

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    aget-byte v0, v1, v0

    return v0

    .line 3
    :cond_f
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->k()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object v0

    throw v0
.end method

.method private T(Landroidx/datastore/preferences/protobuf/t1$b;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/p;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/preferences/protobuf/t1$b;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroidx/datastore/preferences/protobuf/p;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/e$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_a0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_13
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_1c
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->n()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_25
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->N()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_2a
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->x()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_33
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->w()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_3c
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->k()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_45
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->I()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 10
    :pswitch_4e
    invoke-virtual {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/e$b;->e(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_53
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->M()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5c
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->F()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_65
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 14
    :pswitch_6e
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->d()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_77
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->i()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 16
    :pswitch_80
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->t()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_89
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->readDouble()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 18
    :pswitch_92
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->D()Landroidx/datastore/preferences/protobuf/h;

    move-result-object p1

    return-object p1

    .line 19
    :pswitch_97
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->j()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_97
        :pswitch_92
        :pswitch_89
        :pswitch_80
        :pswitch_77
        :pswitch_6e
        :pswitch_65
        :pswitch_5c
        :pswitch_53
        :pswitch_4e
        :pswitch_45
        :pswitch_3c
        :pswitch_33
        :pswitch_2a
        :pswitch_25
        :pswitch_1c
        :pswitch_13
    .end packed-switch
.end method

.method private U(Landroidx/datastore/preferences/protobuf/g1;Landroidx/datastore/preferences/protobuf/p;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/preferences/protobuf/g1<",
            "TT;>;",
            "Landroidx/datastore/preferences/protobuf/p;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->g:I

    .line 2
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/t1;->a(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/t1;->c(II)I

    move-result v1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->g:I

    .line 3
    :try_start_f
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/g1;->j()Ljava/lang/Object;

    move-result-object v1

    .line 4
    invoke-interface {p1, v1, p0, p2}, Landroidx/datastore/preferences/protobuf/g1;->e(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/f1;Landroidx/datastore/preferences/protobuf/p;)V

    .line 5
    invoke-interface {p1, v1}, Landroidx/datastore/preferences/protobuf/g1;->f(Ljava/lang/Object;)V

    .line 6
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    iget p2, p0, Landroidx/datastore/preferences/protobuf/e$b;->g:I
    :try_end_1d
    .catchall {:try_start_f .. :try_end_1d} :catchall_27

    if-ne p1, p2, :cond_22

    .line 7
    iput v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->g:I

    return-object v1

    .line 8
    :cond_22
    :try_start_22
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->g()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p1

    .line 9
    iput v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->g:I

    .line 10
    throw p1
.end method

.method private V()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->f0(I)V

    .line 2
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->W()I

    move-result v0

    return v0
.end method

.method private W()I
    .registers 5

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 2
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->b:[B

    add-int/lit8 v2, v0, 0x4

    .line 3
    iput v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 4
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method private X()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->f0(I)V

    .line 2
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->Y()J

    move-result-wide v0

    return-wide v0
.end method

.method private Y()J
    .registers 10

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 2
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->b:[B

    add-int/lit8 v2, v0, 0x8

    .line 3
    iput v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 4
    aget-byte v2, v1, v0

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x4

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x5

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v6, v0, 0x6

    aget-byte v6, v1, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private Z(Landroidx/datastore/preferences/protobuf/g1;Landroidx/datastore/preferences/protobuf/p;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/preferences/protobuf/g1<",
            "TT;>;",
            "Landroidx/datastore/preferences/protobuf/p;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    .line 2
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->f0(I)V

    .line 3
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->e:I

    .line 4
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v2, v0

    .line 5
    iput v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->e:I

    .line 6
    :try_start_e
    invoke-interface {p1}, Landroidx/datastore/preferences/protobuf/g1;->j()Ljava/lang/Object;

    move-result-object v0

    .line 7
    invoke-interface {p1, v0, p0, p2}, Landroidx/datastore/preferences/protobuf/g1;->e(Ljava/lang/Object;Landroidx/datastore/preferences/protobuf/f1;Landroidx/datastore/preferences/protobuf/p;)V

    .line 8
    invoke-interface {p1, v0}, Landroidx/datastore/preferences/protobuf/g1;->f(Ljava/lang/Object;)V

    .line 9
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_24

    if-ne p1, v2, :cond_1f

    .line 10
    iput v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->e:I

    return-object v0

    .line 11
    :cond_1f
    :try_start_1f
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->g()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p1

    .line 12
    iput v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->e:I

    .line 13
    throw p1
.end method

.method private c0()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 2
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->e:I

    if-eq v1, v0, :cond_77

    .line 3
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->b:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v2, v0

    if-ltz v0, :cond_11

    .line 4
    iput v3, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return v0

    :cond_11
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_1c

    .line 5
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->e0()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_1c
    add-int/lit8 v1, v3, 0x1

    .line 6
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_28

    xor-int/lit8 v0, v0, -0x80

    goto :goto_74

    :cond_28
    add-int/lit8 v3, v1, 0x1

    .line 7
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_35

    xor-int/lit16 v0, v0, 0x3f80

    :cond_33
    move v1, v3

    goto :goto_74

    :cond_35
    add-int/lit8 v1, v3, 0x1

    .line 8
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_43

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_74

    :cond_43
    add-int/lit8 v3, v1, 0x1

    .line 9
    aget-byte v1, v2, v1

    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    if-gez v1, :cond_33

    add-int/lit8 v1, v3, 0x1

    .line 10
    aget-byte v3, v2, v3

    if-gez v3, :cond_74

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_33

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, v2, v3

    if-gez v3, :cond_74

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    if-gez v1, :cond_33

    add-int/lit8 v1, v3, 0x1

    aget-byte v2, v2, v3

    if-ltz v2, :cond_6f

    goto :goto_74

    .line 11
    :cond_6f
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->e()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object v0

    throw v0

    .line 12
    :cond_74
    :goto_74
    iput v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return v0

    .line 13
    :cond_77
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->k()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object v0

    goto :goto_7d

    :goto_7c
    throw v0

    :goto_7d
    goto :goto_7c
.end method

.method private e0()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->S()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v0

    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    .line 2
    :cond_18
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->e()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object v0

    goto :goto_1e

    :goto_1d
    throw v0

    :goto_1e
    goto :goto_1d
.end method

.method private f0(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_a

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->e:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_a

    return-void

    .line 2
    :cond_a
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->k()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1
.end method

.method private g0(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ne v0, p1, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->k()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1
.end method

.method private h0(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result v0

    if-ne v0, p1, :cond_9

    return-void

    .line 2
    :cond_9
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1
.end method

.method private i0(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/e$b;->f0(I)V

    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void
.end method

.method private j0()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->g:I

    .line 2
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {v1}, Landroidx/datastore/preferences/protobuf/t1;->a(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroidx/datastore/preferences/protobuf/t1;->c(II)I

    move-result v1

    iput v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->g:I

    .line 3
    :cond_f
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->A()I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1e

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->H()Z

    move-result v1

    if-nez v1, :cond_f

    .line 4
    :cond_1e
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->g:I

    if-ne v1, v2, :cond_27

    .line 5
    iput v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->g:I

    return-void

    .line 6
    :cond_27
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->g()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object v0

    goto :goto_2d

    :goto_2c
    throw v0

    :goto_2d
    goto :goto_2c
.end method

.method private k0()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->e:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    sub-int/2addr v0, v1

    const/16 v2, 0xa

    if-lt v0, v2, :cond_1b

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->b:[B

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_1b

    add-int/lit8 v4, v1, 0x1

    .line 3
    aget-byte v1, v0, v1

    if-ltz v1, :cond_17

    .line 4
    iput v4, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void

    :cond_17
    add-int/lit8 v3, v3, 0x1

    move v1, v4

    goto :goto_c

    .line 5
    :cond_1b
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->l0()V

    return-void
.end method

.method private l0()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->S()B

    move-result v1

    if-ltz v1, :cond_c

    return-void

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2
    :cond_f
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->e()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object v0

    goto :goto_15

    :goto_14
    throw v0

    :goto_15
    goto :goto_14
.end method

.method private m0(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/e$b;->f0(I)V

    and-int/lit8 p1, p1, 0x3

    if-nez p1, :cond_8

    return-void

    .line 2
    :cond_8
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->g()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1
.end method

.method private n0(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/e$b;->f0(I)V

    and-int/lit8 p1, p1, 0x7

    if-nez p1, :cond_8

    return-void

    .line 2
    :cond_8
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->g()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public A()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_a

    return v1

    .line 2
    :cond_a
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    iput v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    .line 3
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->g:I

    if-ne v0, v2, :cond_15

    return v1

    .line 4
    :cond_15
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/t1;->a(I)I

    move-result v0

    return v0
.end method

.method public B(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/e$b;->b0(Ljava/util/List;Z)V

    return-void
.end method

.method public C(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/datastore/preferences/protobuf/e$b;->b0(Ljava/util/List;Z)V

    return-void
.end method

.method public D()Landroidx/datastore/preferences/protobuf/h;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->h0(I)V

    .line 2
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    if-nez v0, :cond_d

    .line 3
    sget-object v0, Landroidx/datastore/preferences/protobuf/h;->p:Landroidx/datastore/preferences/protobuf/h;

    return-object v0

    .line 4
    :cond_d
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->f0(I)V

    .line 5
    iget-boolean v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->a:Z

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->b:[B

    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 6
    invoke-static {v1, v2, v0}, Landroidx/datastore/preferences/protobuf/h;->E([BII)Landroidx/datastore/preferences/protobuf/h;

    move-result-object v1

    goto :goto_25

    :cond_1d
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->b:[B

    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 7
    invoke-static {v1, v2, v0}, Landroidx/datastore/preferences/protobuf/h;->l([BII)Landroidx/datastore/preferences/protobuf/h;

    move-result-object v1

    .line 8
    :goto_25
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-object v1
.end method

.method public E(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/w;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_4c

    .line 2
    check-cast p1, Landroidx/datastore/preferences/protobuf/w;

    .line 3
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_32

    if-ne v0, v1, :cond_2d

    .line 4
    :cond_12
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->readFloat()F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/protobuf/w;->j(F)V

    .line 5
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_20

    return-void

    .line 6
    :cond_20
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 7
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 8
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_12

    .line 9
    iput v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void

    .line 10
    :cond_2d
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    .line 11
    :cond_32
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    .line 12
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->m0(I)V

    .line 13
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v1, v0

    .line 14
    :goto_3c
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ge v0, v1, :cond_98

    .line 15
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->W()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/protobuf/w;->j(F)V

    goto :goto_3c

    .line 16
    :cond_4c
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_7a

    if-ne v0, v1, :cond_75

    .line 17
    :cond_56
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_68

    return-void

    .line 19
    :cond_68
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 20
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 21
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_56

    .line 22
    iput v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void

    .line 23
    :cond_75
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    .line 24
    :cond_7a
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    .line 25
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->m0(I)V

    .line 26
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v1, v0

    .line 27
    :goto_84
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ge v0, v1, :cond_98

    .line 28
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->W()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_84

    :cond_98
    return-void
.end method

.method public F()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->h0(I)V

    .line 2
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    return v0
.end method

.method public G(Ljava/util/List;Landroidx/datastore/preferences/protobuf/g1;Landroidx/datastore/preferences/protobuf/p;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroidx/datastore/preferences/protobuf/g1<",
            "TT;>;",
            "Landroidx/datastore/preferences/protobuf/p;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_24

    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    .line 3
    :cond_b
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/e$b;->U(Landroidx/datastore/preferences/protobuf/g1;Landroidx/datastore/preferences/protobuf/p;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result v1

    if-eqz v1, :cond_19

    return-void

    .line 5
    :cond_19
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 6
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v2

    if-eq v2, v0, :cond_b

    .line 7
    iput v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void

    .line 8
    :cond_24
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    goto :goto_2a

    :goto_29
    throw p1

    :goto_2a
    goto :goto_29
.end method

.method public H()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result v0

    if-nez v0, :cond_3f

    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->g:I

    if-ne v0, v1, :cond_d

    goto :goto_3f

    .line 2
    :cond_d
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3b

    if-eq v0, v1, :cond_35

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2d

    const/4 v2, 0x3

    if-eq v0, v2, :cond_29

    const/4 v2, 0x5

    if-ne v0, v2, :cond_24

    const/4 v0, 0x4

    .line 3
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->i0(I)V

    return v1

    .line 4
    :cond_24
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object v0

    throw v0

    .line 5
    :cond_29
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->j0()V

    return v1

    .line 6
    :cond_2d
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->i0(I)V

    return v1

    :cond_35
    const/16 v0, 0x8

    .line 7
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->i0(I)V

    return v1

    .line 8
    :cond_3b
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->k0()V

    return v1

    :cond_3f
    :goto_3f
    const/4 v0, 0x0

    return v0
.end method

.method public I()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->h0(I)V

    .line 2
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->V()I

    move-result v0

    return v0
.end method

.method public J(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/datastore/preferences/protobuf/h;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 2
    :cond_9
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->D()Landroidx/datastore/preferences/protobuf/h;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    .line 4
    :cond_17
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 5
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 6
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_9

    .line 7
    iput v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void

    .line 8
    :cond_24
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    goto :goto_2a

    :goto_29
    throw p1

    :goto_2a
    goto :goto_29
.end method

.method public K(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/m;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4d

    .line 2
    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/m;

    .line 3
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result p1

    if-eq p1, v2, :cond_32

    if-ne p1, v1, :cond_2d

    .line 4
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result p1

    .line 5
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/e$b;->n0(I)V

    .line 6
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v1, p1

    .line 7
    :goto_1d
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ge p1, v1, :cond_75

    .line 8
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->Y()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/datastore/preferences/protobuf/m;->j(D)V

    goto :goto_1d

    .line 9
    :cond_2d
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    .line 10
    :cond_32
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/datastore/preferences/protobuf/m;->j(D)V

    .line 11
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result p1

    if-eqz p1, :cond_40

    return-void

    .line 12
    :cond_40
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 13
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 14
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_32

    .line 15
    iput p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void

    .line 16
    :cond_4d
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_7b

    if-ne v0, v1, :cond_76

    .line 17
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    .line 18
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->n0(I)V

    .line 19
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v1, v0

    .line 20
    :goto_61
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ge v0, v1, :cond_75

    .line 21
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->Y()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    :cond_75
    return-void

    .line 22
    :cond_76
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    .line 23
    :cond_7b
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_8d

    return-void

    .line 25
    :cond_8d
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 26
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 27
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_7b

    .line 28
    iput v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void
.end method

.method public L(Ljava/util/List;Landroidx/datastore/preferences/protobuf/g1;Landroidx/datastore/preferences/protobuf/p;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroidx/datastore/preferences/protobuf/g1<",
            "TT;>;",
            "Landroidx/datastore/preferences/protobuf/p;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_24

    .line 2
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    .line 3
    :cond_b
    invoke-direct {p0, p2, p3}, Landroidx/datastore/preferences/protobuf/e$b;->Z(Landroidx/datastore/preferences/protobuf/g1;Landroidx/datastore/preferences/protobuf/p;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result v1

    if-eqz v1, :cond_19

    return-void

    .line 5
    :cond_19
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 6
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v2

    if-eq v2, v0, :cond_b

    .line 7
    iput v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void

    .line 8
    :cond_24
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    goto :goto_2a

    :goto_29
    throw p1

    :goto_2a
    goto :goto_29
.end method

.method public M()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->h0(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->d0()J

    move-result-wide v0

    return-wide v0
.end method

.method public N()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->a0(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public O(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/i0;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_49

    .line 2
    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/i0;

    .line 3
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result p1

    if-eq p1, v2, :cond_2e

    if-ne p1, v1, :cond_29

    .line 4
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result p1

    .line 5
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/e$b;->n0(I)V

    .line 6
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v1, p1

    .line 7
    :goto_1d
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ge p1, v1, :cond_6d

    .line 8
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->Y()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/datastore/preferences/protobuf/i0;->k(J)V

    goto :goto_1d

    .line 9
    :cond_29
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    .line 10
    :cond_2e
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/datastore/preferences/protobuf/i0;->k(J)V

    .line 11
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result p1

    if-eqz p1, :cond_3c

    return-void

    .line 12
    :cond_3c
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 13
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 14
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_2e

    .line 15
    iput p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void

    .line 16
    :cond_49
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_73

    if-ne v0, v1, :cond_6e

    .line 17
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    .line 18
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->n0(I)V

    .line 19
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v1, v0

    .line 20
    :goto_5d
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ge v0, v1, :cond_6d

    .line 21
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->Y()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    :cond_6d
    return-void

    .line 22
    :cond_6e
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    .line 23
    :cond_73
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_85

    return-void

    .line 25
    :cond_85
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 26
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 27
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_73

    .line 28
    iput v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void
.end method

.method public P(Landroidx/datastore/preferences/protobuf/g1;Landroidx/datastore/preferences/protobuf/p;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/preferences/protobuf/g1<",
            "TT;>;",
            "Landroidx/datastore/preferences/protobuf/p;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->h0(I)V

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/e$b;->U(Landroidx/datastore/preferences/protobuf/g1;Landroidx/datastore/preferences/protobuf/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroidx/datastore/preferences/protobuf/g1;Landroidx/datastore/preferences/protobuf/p;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/preferences/protobuf/g1<",
            "TT;>;",
            "Landroidx/datastore/preferences/protobuf/p;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->h0(I)V

    .line 2
    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/e$b;->Z(Landroidx/datastore/preferences/protobuf/g1;Landroidx/datastore/preferences/protobuf/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a0(Z)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->h0(I)V

    .line 2
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    if-nez v0, :cond_d

    const-string p1, ""

    return-object p1

    .line 3
    :cond_d
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->f0(I)V

    if-eqz p1, :cond_24

    .line 4
    iget-object p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->b:[B

    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int v2, v1, v0

    invoke-static {p1, v1, v2}, Landroidx/datastore/preferences/protobuf/s1;->n([BII)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_24

    .line 5
    :cond_1f
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->c()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object p1

    throw p1

    .line 6
    :cond_24
    :goto_24
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->b:[B

    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    sget-object v3, Landroidx/datastore/preferences/protobuf/a0;->a:Ljava/nio/charset/Charset;

    invoke-direct {p1, v1, v2, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 7
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-object p1
.end method

.method public b(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/z;

    const/4 v1, 0x2

    if-eqz v0, :cond_49

    .line 2
    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/z;

    .line 3
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result p1

    if-eqz p1, :cond_2e

    if-ne p1, v1, :cond_29

    .line 4
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result p1

    .line 5
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v1, p1

    .line 6
    :goto_19
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ge p1, v1, :cond_6e

    .line 7
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result p1

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/i;->b(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/z;->j(I)V

    goto :goto_19

    .line 8
    :cond_29
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    .line 9
    :cond_2e
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->w()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/z;->j(I)V

    .line 10
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result p1

    if-eqz p1, :cond_3c

    return-void

    .line 11
    :cond_3c
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 12
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 13
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_2e

    .line 14
    iput p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void

    .line 15
    :cond_49
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result v0

    if-eqz v0, :cond_74

    if-ne v0, v1, :cond_6f

    .line 16
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    .line 17
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v1, v0

    .line 18
    :goto_5a
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ge v0, v1, :cond_6e

    .line 19
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/i;->b(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_6e
    return-void

    .line 20
    :cond_6f
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    .line 21
    :cond_74
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->w()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_86

    return-void

    .line 23
    :cond_86
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 24
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 25
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_74

    .line 26
    iput v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void
.end method

.method public b0(Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_48

    .line 2
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/g0;

    if-eqz v0, :cond_2d

    if-nez p2, :cond_2d

    .line 3
    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/g0;

    .line 4
    :cond_12
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->D()Landroidx/datastore/preferences/protobuf/h;

    move-result-object p1

    invoke-interface {v0, p1}, Landroidx/datastore/preferences/protobuf/g0;->e1(Landroidx/datastore/preferences/protobuf/h;)V

    .line 5
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result p1

    if-eqz p1, :cond_20

    return-void

    .line 6
    :cond_20
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 7
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result p2

    .line 8
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq p2, v1, :cond_12

    .line 9
    iput p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void

    .line 10
    :cond_2d
    invoke-virtual {p0, p2}, Landroidx/datastore/preferences/protobuf/e$b;->a0(Z)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_3b

    return-void

    .line 12
    :cond_3b
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 13
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 14
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_2d

    .line 15
    iput v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void

    .line 16
    :cond_48
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    goto :goto_4e

    :goto_4d
    throw p1

    :goto_4e
    goto :goto_4d
.end method

.method public c()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->h0(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->d0()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->h0(I)V

    .line 2
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->X()J

    move-result-wide v0

    return-wide v0
.end method

.method public d0()J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 2
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->e:I

    if-eq v1, v0, :cond_c2

    .line 3
    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->b:[B

    add-int/lit8 v3, v0, 0x1

    .line 4
    aget-byte v0, v2, v0

    if-ltz v0, :cond_12

    .line 5
    iput v3, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    int-to-long v0, v0

    return-wide v0

    :cond_12
    sub-int/2addr v1, v3

    const/16 v4, 0x9

    if-ge v1, v4, :cond_1c

    .line 6
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->e0()J

    move-result-wide v0

    return-wide v0

    :cond_1c
    add-int/lit8 v1, v3, 0x1

    .line 7
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v0, v3

    if-gez v0, :cond_2a

    xor-int/lit8 v0, v0, -0x80

    :goto_27
    int-to-long v2, v0

    goto/16 :goto_bf

    :cond_2a
    add-int/lit8 v3, v1, 0x1

    .line 8
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3b

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move-wide v9, v0

    move v1, v3

    move-wide v2, v9

    goto/16 :goto_bf

    :cond_3b
    add-int/lit8 v1, v3, 0x1

    .line 9
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x15

    xor-int/2addr v0, v3

    if-gez v0, :cond_49

    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_27

    :cond_49
    int-to-long v3, v0

    add-int/lit8 v0, v1, 0x1

    .line 10
    aget-byte v1, v2, v1

    int-to-long v5, v1

    const/16 v1, 0x1c

    shl-long/2addr v5, v1

    xor-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_60

    const-wide/32 v1, 0xfe03f80

    :goto_5c
    xor-long/2addr v1, v3

    move-wide v2, v1

    move v1, v0

    goto :goto_bf

    :cond_60
    add-int/lit8 v1, v0, 0x1

    .line 11
    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x23

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_75

    const-wide v5, -0x7f01fc080L

    :goto_72
    xor-long/2addr v3, v5

    :goto_73
    move-wide v2, v3

    goto :goto_bf

    :cond_75
    add-int/lit8 v0, v1, 0x1

    .line 12
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x2a

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-ltz v1, :cond_88

    const-wide v1, 0x3f80fe03f80L

    goto :goto_5c

    :cond_88
    add-int/lit8 v1, v0, 0x1

    .line 13
    aget-byte v0, v2, v0

    int-to-long v7, v0

    const/16 v0, 0x31

    shl-long/2addr v7, v0

    xor-long/2addr v3, v7

    cmp-long v0, v3, v5

    if-gez v0, :cond_9b

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_72

    :cond_9b
    add-int/lit8 v0, v1, 0x1

    .line 14
    aget-byte v1, v2, v1

    int-to-long v7, v1

    const/16 v1, 0x38

    shl-long/2addr v7, v1

    xor-long/2addr v3, v7

    const-wide v7, 0xfe03f80fe03f80L

    xor-long/2addr v3, v7

    cmp-long v1, v3, v5

    if-gez v1, :cond_bd

    add-int/lit8 v1, v0, 0x1

    .line 15
    aget-byte v0, v2, v0

    int-to-long v7, v0

    cmp-long v0, v7, v5

    if-ltz v0, :cond_b8

    goto :goto_73

    .line 16
    :cond_b8
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->e()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object v0

    throw v0

    :cond_bd
    move v1, v0

    goto :goto_73

    .line 17
    :goto_bf
    iput v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-wide v2

    .line 18
    :cond_c2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->k()Landroidx/datastore/preferences/protobuf/b0;

    move-result-object v0

    goto :goto_c8

    :goto_c7
    throw v0

    :goto_c8
    goto :goto_c7
.end method

.method public e(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/p;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/datastore/preferences/protobuf/p;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->h0(I)V

    .line 2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/c1;->a()Landroidx/datastore/preferences/protobuf/c1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/c1;->d(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/e$b;->Z(Landroidx/datastore/preferences/protobuf/g1;Landroidx/datastore/preferences/protobuf/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/z;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_48

    .line 2
    check-cast p1, Landroidx/datastore/preferences/protobuf/z;

    .line 3
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_32

    if-ne v0, v1, :cond_2d

    .line 4
    :cond_12
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->I()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/protobuf/z;->j(I)V

    .line 5
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_20

    return-void

    .line 6
    :cond_20
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 7
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 8
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_12

    .line 9
    iput v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void

    .line 10
    :cond_2d
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    .line 11
    :cond_32
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    .line 12
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->m0(I)V

    .line 13
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v1, v0

    .line 14
    :goto_3c
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ge v0, v1, :cond_90

    .line 15
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->W()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/protobuf/z;->j(I)V

    goto :goto_3c

    .line 16
    :cond_48
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_76

    if-ne v0, v1, :cond_71

    .line 17
    :cond_52
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->I()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_64

    return-void

    .line 19
    :cond_64
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 20
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 21
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_52

    .line 22
    iput v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void

    .line 23
    :cond_71
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    .line 24
    :cond_76
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    .line 25
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->m0(I)V

    .line 26
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v1, v0

    .line 27
    :goto_80
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ge v0, v1, :cond_90

    .line 28
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->W()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    :cond_90
    return-void
.end method

.method public g(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/i0;

    const/4 v1, 0x2

    if-eqz v0, :cond_49

    .line 2
    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/i0;

    .line 3
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result p1

    if-eqz p1, :cond_2e

    if-ne p1, v1, :cond_29

    .line 4
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result p1

    .line 5
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v1, p1

    .line 6
    :goto_19
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ge p1, v1, :cond_6e

    .line 7
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->d0()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/datastore/preferences/protobuf/i;->c(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/datastore/preferences/protobuf/i0;->k(J)V

    goto :goto_19

    .line 8
    :cond_29
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    .line 9
    :cond_2e
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->x()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/datastore/preferences/protobuf/i0;->k(J)V

    .line 10
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result p1

    if-eqz p1, :cond_3c

    return-void

    .line 11
    :cond_3c
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 12
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 13
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_2e

    .line 14
    iput p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void

    .line 15
    :cond_49
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result v0

    if-eqz v0, :cond_74

    if-ne v0, v1, :cond_6f

    .line 16
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    .line 17
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v1, v0

    .line 18
    :goto_5a
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ge v0, v1, :cond_6e

    .line 19
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->d0()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/datastore/preferences/protobuf/i;->c(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    :cond_6e
    return-void

    .line 20
    :cond_6f
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    .line 21
    :cond_74
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->x()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_86

    return-void

    .line 23
    :cond_86
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 24
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 25
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_74

    .line 26
    iput v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void
.end method

.method public h(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/z;

    const/4 v1, 0x2

    if-eqz v0, :cond_45

    .line 2
    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/z;

    .line 3
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result p1

    if-eqz p1, :cond_2a

    if-ne p1, v1, :cond_25

    .line 4
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result p1

    .line 5
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v1, p1

    .line 6
    :goto_19
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ge p1, v1, :cond_66

    .line 7
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/z;->j(I)V

    goto :goto_19

    .line 8
    :cond_25
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    .line 9
    :cond_2a
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->n()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/z;->j(I)V

    .line 10
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result p1

    if-eqz p1, :cond_38

    return-void

    .line 11
    :cond_38
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 12
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 13
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_2a

    .line 14
    iput p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void

    .line 15
    :cond_45
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result v0

    if-eqz v0, :cond_6c

    if-ne v0, v1, :cond_67

    .line 16
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    .line 17
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v1, v0

    .line 18
    :goto_56
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ge v0, v1, :cond_66

    .line 19
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    :cond_66
    return-void

    .line 20
    :cond_67
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    .line 21
    :cond_6c
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_7e

    return-void

    .line 23
    :cond_7e
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 24
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 25
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_6c

    .line 26
    iput v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void
.end method

.method public i()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->h0(I)V

    .line 2
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->V()I

    move-result v0

    return v0
.end method

.method public j()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->h0(I)V

    .line 2
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public k()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->h0(I)V

    .line 2
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->X()J

    move-result-wide v0

    return-wide v0
.end method

.method public l(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/i0;

    const/4 v1, 0x2

    if-eqz v0, :cond_49

    .line 2
    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/i0;

    .line 3
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result p1

    if-eqz p1, :cond_2e

    if-ne p1, v1, :cond_29

    .line 4
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result p1

    .line 5
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v1, p1

    .line 6
    :goto_19
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ge p1, v1, :cond_25

    .line 7
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->d0()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/datastore/preferences/protobuf/i0;->k(J)V

    goto :goto_19

    .line 8
    :cond_25
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/e$b;->g0(I)V

    goto :goto_6d

    .line 9
    :cond_29
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    .line 10
    :cond_2e
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/datastore/preferences/protobuf/i0;->k(J)V

    .line 11
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result p1

    if-eqz p1, :cond_3c

    return-void

    .line 12
    :cond_3c
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 13
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 14
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_2e

    .line 15
    iput p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void

    .line 16
    :cond_49
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result v0

    if-eqz v0, :cond_73

    if-ne v0, v1, :cond_6e

    .line 17
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    .line 18
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v1, v0

    .line 19
    :goto_5a
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ge v0, v1, :cond_6a

    .line 20
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->d0()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 21
    :cond_6a
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/e$b;->g0(I)V

    :goto_6d
    return-void

    .line 22
    :cond_6e
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    .line 23
    :cond_73
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_85

    return-void

    .line 25
    :cond_85
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 26
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 27
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_73

    .line 28
    iput v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void
.end method

.method public m(Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/p;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/datastore/preferences/protobuf/p;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->h0(I)V

    .line 2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/c1;->a()Landroidx/datastore/preferences/protobuf/c1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/c1;->d(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/g1;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/e$b;->U(Landroidx/datastore/preferences/protobuf/g1;Landroidx/datastore/preferences/protobuf/p;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public n()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->h0(I)V

    .line 2
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    return v0
.end method

.method public o(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/i0;

    const/4 v1, 0x2

    if-eqz v0, :cond_49

    .line 2
    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/i0;

    .line 3
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result p1

    if-eqz p1, :cond_2e

    if-ne p1, v1, :cond_29

    .line 4
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result p1

    .line 5
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v1, p1

    .line 6
    :goto_19
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ge p1, v1, :cond_25

    .line 7
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->d0()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/datastore/preferences/protobuf/i0;->k(J)V

    goto :goto_19

    .line 8
    :cond_25
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/e$b;->g0(I)V

    goto :goto_6d

    .line 9
    :cond_29
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    .line 10
    :cond_2e
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->M()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/datastore/preferences/protobuf/i0;->k(J)V

    .line 11
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result p1

    if-eqz p1, :cond_3c

    return-void

    .line 12
    :cond_3c
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 13
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 14
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_2e

    .line 15
    iput p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void

    .line 16
    :cond_49
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result v0

    if-eqz v0, :cond_73

    if-ne v0, v1, :cond_6e

    .line 17
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    .line 18
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v1, v0

    .line 19
    :goto_5a
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ge v0, v1, :cond_6a

    .line 20
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->d0()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 21
    :cond_6a
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/e$b;->g0(I)V

    :goto_6d
    return-void

    .line 22
    :cond_6e
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    .line 23
    :cond_73
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->M()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_85

    return-void

    .line 25
    :cond_85
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 26
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 27
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_73

    .line 28
    iput v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void
.end method

.method public p(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/i0;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_49

    .line 2
    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/i0;

    .line 3
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result p1

    if-eq p1, v2, :cond_2e

    if-ne p1, v1, :cond_29

    .line 4
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result p1

    .line 5
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/e$b;->n0(I)V

    .line 6
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v1, p1

    .line 7
    :goto_1d
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ge p1, v1, :cond_6d

    .line 8
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->Y()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/datastore/preferences/protobuf/i0;->k(J)V

    goto :goto_1d

    .line 9
    :cond_29
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    .line 10
    :cond_2e
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->k()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/datastore/preferences/protobuf/i0;->k(J)V

    .line 11
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result p1

    if-eqz p1, :cond_3c

    return-void

    .line 12
    :cond_3c
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 13
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 14
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_2e

    .line 15
    iput p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void

    .line 16
    :cond_49
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_73

    if-ne v0, v1, :cond_6e

    .line 17
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    .line 18
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->n0(I)V

    .line 19
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v1, v0

    .line 20
    :goto_5d
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ge v0, v1, :cond_6d

    .line 21
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->Y()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    :cond_6d
    return-void

    .line 22
    :cond_6e
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    .line 23
    :cond_73
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->k()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_85

    return-void

    .line 25
    :cond_85
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 26
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 27
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_73

    .line 28
    iput v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void
.end method

.method public q(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/z;

    const/4 v1, 0x2

    if-eqz v0, :cond_49

    .line 2
    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/z;

    .line 3
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result p1

    if-eqz p1, :cond_2e

    if-ne p1, v1, :cond_29

    .line 4
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result p1

    .line 5
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v1, p1

    .line 6
    :goto_19
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ge p1, v1, :cond_25

    .line 7
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/z;->j(I)V

    goto :goto_19

    .line 8
    :cond_25
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/e$b;->g0(I)V

    goto :goto_6d

    .line 9
    :cond_29
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    .line 10
    :cond_2e
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->F()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/z;->j(I)V

    .line 11
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result p1

    if-eqz p1, :cond_3c

    return-void

    .line 12
    :cond_3c
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 13
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 14
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_2e

    .line 15
    iput p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void

    .line 16
    :cond_49
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result v0

    if-eqz v0, :cond_73

    if-ne v0, v1, :cond_6e

    .line 17
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    .line 18
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v1, v0

    .line 19
    :goto_5a
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ge v0, v1, :cond_6a

    .line 20
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5a

    .line 21
    :cond_6a
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/e$b;->g0(I)V

    :goto_6d
    return-void

    .line 22
    :cond_6e
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    .line 23
    :cond_73
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->F()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_85

    return-void

    .line 25
    :cond_85
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 26
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 27
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_73

    .line 28
    iput v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void
.end method

.method public r(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/z;

    const/4 v1, 0x2

    if-eqz v0, :cond_45

    .line 2
    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/z;

    .line 3
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result p1

    if-eqz p1, :cond_2a

    if-ne p1, v1, :cond_25

    .line 4
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result p1

    .line 5
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v1, p1

    .line 6
    :goto_19
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ge p1, v1, :cond_66

    .line 7
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/z;->j(I)V

    goto :goto_19

    .line 8
    :cond_25
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    .line 9
    :cond_2a
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->t()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/z;->j(I)V

    .line 10
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result p1

    if-eqz p1, :cond_38

    return-void

    .line 11
    :cond_38
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 12
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 13
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_2a

    .line 14
    iput p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void

    .line 15
    :cond_45
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result v0

    if-eqz v0, :cond_6c

    if-ne v0, v1, :cond_67

    .line 16
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    .line 17
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v1, v0

    .line 18
    :goto_56
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ge v0, v1, :cond_66

    .line 19
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    :cond_66
    return-void

    .line 20
    :cond_67
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    .line 21
    :cond_6c
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->t()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_7e

    return-void

    .line 23
    :cond_7e
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 24
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 25
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_6c

    .line 26
    iput v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->h0(I)V

    .line 2
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->X()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->h0(I)V

    .line 2
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->V()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public s(Ljava/util/Map;Landroidx/datastore/preferences/protobuf/k0$a;Landroidx/datastore/preferences/protobuf/p;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Landroidx/datastore/preferences/protobuf/k0$a<",
            "TK;TV;>;",
            "Landroidx/datastore/preferences/protobuf/p;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->h0(I)V

    .line 2
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 3
    invoke-direct {p0, v1}, Landroidx/datastore/preferences/protobuf/e$b;->f0(I)V

    .line 4
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->e:I

    .line 5
    iget v3, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v3, v1

    .line 6
    iput v3, p0, Landroidx/datastore/preferences/protobuf/e$b;->e:I

    .line 7
    :try_start_12
    iget-object v1, p2, Landroidx/datastore/preferences/protobuf/k0$a;->b:Ljava/lang/Object;

    .line 8
    iget-object v3, p2, Landroidx/datastore/preferences/protobuf/k0$a;->d:Ljava/lang/Object;

    .line 9
    :goto_16
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->A()I

    move-result v4

    const v5, 0x7fffffff

    if-ne v4, v5, :cond_25

    .line 10
    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_5b

    .line 11
    iput v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->e:I

    return-void

    :cond_25
    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_46

    if-eq v4, v0, :cond_39

    .line 12
    :try_start_2c
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->H()Z

    move-result v4

    if-eqz v4, :cond_33

    goto :goto_16

    .line 13
    :cond_33
    new-instance v4, Landroidx/datastore/preferences/protobuf/b0;

    invoke-direct {v4, v6}, Landroidx/datastore/preferences/protobuf/b0;-><init>(Ljava/lang/String;)V

    throw v4

    .line 14
    :cond_39
    iget-object v4, p2, Landroidx/datastore/preferences/protobuf/k0$a;->c:Landroidx/datastore/preferences/protobuf/t1$b;

    iget-object v5, p2, Landroidx/datastore/preferences/protobuf/k0$a;->d:Ljava/lang/Object;

    .line 15
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 16
    invoke-direct {p0, v4, v5, p3}, Landroidx/datastore/preferences/protobuf/e$b;->T(Landroidx/datastore/preferences/protobuf/t1$b;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/p;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_16

    .line 17
    :cond_46
    iget-object v4, p2, Landroidx/datastore/preferences/protobuf/k0$a;->a:Landroidx/datastore/preferences/protobuf/t1$b;

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Landroidx/datastore/preferences/protobuf/e$b;->T(Landroidx/datastore/preferences/protobuf/t1$b;Ljava/lang/Class;Landroidx/datastore/preferences/protobuf/p;)Ljava/lang/Object;

    move-result-object v1
    :try_end_4d
    .catch Landroidx/datastore/preferences/protobuf/b0$a; {:try_start_2c .. :try_end_4d} :catch_4e
    .catchall {:try_start_2c .. :try_end_4d} :catchall_5b

    goto :goto_16

    .line 18
    :catch_4e
    :try_start_4e
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->H()Z

    move-result v4

    if-eqz v4, :cond_55

    goto :goto_16

    .line 19
    :cond_55
    new-instance p1, Landroidx/datastore/preferences/protobuf/b0;

    invoke-direct {p1, v6}, Landroidx/datastore/preferences/protobuf/b0;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5b
    .catchall {:try_start_4e .. :try_end_5b} :catchall_5b

    :catchall_5b
    move-exception p1

    .line 20
    iput v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->e:I

    .line 21
    goto :goto_60

    :goto_5f
    throw p1

    :goto_60
    goto :goto_5f
.end method

.method public t()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->h0(I)V

    .line 2
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    return v0
.end method

.method public u()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    return v0
.end method

.method public v(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/z;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_48

    .line 2
    check-cast p1, Landroidx/datastore/preferences/protobuf/z;

    .line 3
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_32

    if-ne v0, v1, :cond_2d

    .line 4
    :cond_12
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->i()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/protobuf/z;->j(I)V

    .line 5
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_20

    return-void

    .line 6
    :cond_20
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 7
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 8
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_12

    .line 9
    iput v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void

    .line 10
    :cond_2d
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    .line 11
    :cond_32
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    .line 12
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->m0(I)V

    .line 13
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v1, v0

    .line 14
    :goto_3c
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ge v0, v1, :cond_90

    .line 15
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->W()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/datastore/preferences/protobuf/z;->j(I)V

    goto :goto_3c

    .line 16
    :cond_48
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result v0

    if-eq v0, v2, :cond_76

    if-ne v0, v1, :cond_71

    .line 17
    :cond_52
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->i()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_64

    return-void

    .line 19
    :cond_64
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 20
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 21
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_52

    .line 22
    iput v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void

    .line 23
    :cond_71
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    .line 24
    :cond_76
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    .line 25
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->m0(I)V

    .line 26
    iget v1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v1, v0

    .line 27
    :goto_80
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ge v0, v1, :cond_90

    .line 28
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->W()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_80

    :cond_90
    return-void
.end method

.method public w()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->h0(I)V

    .line 2
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/i;->b(I)I

    move-result v0

    return v0
.end method

.method public x()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->h0(I)V

    .line 2
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->d0()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/datastore/preferences/protobuf/i;->c(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public y(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/f;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_50

    .line 2
    move-object v0, p1

    check-cast v0, Landroidx/datastore/preferences/protobuf/f;

    .line 3
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result p1

    if-eqz p1, :cond_35

    if-ne p1, v3, :cond_30

    .line 4
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result p1

    .line 5
    iget v3, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v3, p1

    .line 6
    :goto_1b
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ge p1, v3, :cond_2c

    .line 7
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result p1

    if-eqz p1, :cond_27

    const/4 p1, 0x1

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    :goto_28
    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/f;->k(Z)V

    goto :goto_1b

    .line 8
    :cond_2c
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/e$b;->g0(I)V

    goto :goto_79

    .line 9
    :cond_30
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    .line 10
    :cond_35
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->j()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/datastore/preferences/protobuf/f;->k(Z)V

    .line 11
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result p1

    if-eqz p1, :cond_43

    return-void

    .line 12
    :cond_43
    iget p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 13
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 14
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_35

    .line 15
    iput p1, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void

    .line 16
    :cond_50
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/t1;->b(I)I

    move-result v0

    if-eqz v0, :cond_7f

    if-ne v0, v3, :cond_7a

    .line 17
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    .line 18
    iget v3, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    add-int/2addr v3, v0

    .line 19
    :goto_61
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    if-ge v0, v3, :cond_76

    .line 20
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v0

    if-eqz v0, :cond_6d

    const/4 v0, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v0, 0x0

    :goto_6e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_61

    .line 21
    :cond_76
    invoke-direct {p0, v3}, Landroidx/datastore/preferences/protobuf/e$b;->g0(I)V

    :goto_79
    return-void

    .line 22
    :cond_7a
    invoke-static {}, Landroidx/datastore/preferences/protobuf/b0;->d()Landroidx/datastore/preferences/protobuf/b0$a;

    move-result-object p1

    throw p1

    .line 23
    :cond_7f
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/e$b;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->R()Z

    move-result v0

    if-eqz v0, :cond_91

    return-void

    .line 25
    :cond_91
    iget v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    .line 26
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/e$b;->c0()I

    move-result v1

    .line 27
    iget v2, p0, Landroidx/datastore/preferences/protobuf/e$b;->f:I

    if-eq v1, v2, :cond_7f

    .line 28
    iput v0, p0, Landroidx/datastore/preferences/protobuf/e$b;->c:I

    return-void
.end method

.method public z()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/e$b;->a0(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
