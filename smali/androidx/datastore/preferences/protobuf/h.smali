###### Class androidx.datastore.preferences.protobuf.h (androidx.datastore.preferences.protobuf.h)
.class public abstract Landroidx/datastore/preferences/protobuf/h;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/h$e;,
        Landroidx/datastore/preferences/protobuf/h$j;,
        Landroidx/datastore/preferences/protobuf/h$h;,
        Landroidx/datastore/preferences/protobuf/h$i;,
        Landroidx/datastore/preferences/protobuf/h$c;,
        Landroidx/datastore/preferences/protobuf/h$g;,
        Landroidx/datastore/preferences/protobuf/h$d;,
        Landroidx/datastore/preferences/protobuf/h$k;,
        Landroidx/datastore/preferences/protobuf/h$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Ljava/lang/Byte;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final p:Landroidx/datastore/preferences/protobuf/h;

.field private static final q:Landroidx/datastore/preferences/protobuf/h$f;

.field private static final r:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/datastore/preferences/protobuf/h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private o:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/h$j;

    sget-object v1, Landroidx/datastore/preferences/protobuf/a0;->c:[B

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/h$j;-><init>([B)V

    sput-object v0, Landroidx/datastore/preferences/protobuf/h;->p:Landroidx/datastore/preferences/protobuf/h;

    .line 2
    invoke-static {}, Landroidx/datastore/preferences/protobuf/d;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    new-instance v0, Landroidx/datastore/preferences/protobuf/h$k;

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/h$k;-><init>(Landroidx/datastore/preferences/protobuf/h$a;)V

    goto :goto_1b

    :cond_16
    new-instance v0, Landroidx/datastore/preferences/protobuf/h$d;

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/h$d;-><init>(Landroidx/datastore/preferences/protobuf/h$a;)V

    :goto_1b
    sput-object v0, Landroidx/datastore/preferences/protobuf/h;->q:Landroidx/datastore/preferences/protobuf/h$f;

    .line 3
    new-instance v0, Landroidx/datastore/preferences/protobuf/h$b;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/h$b;-><init>()V

    sput-object v0, Landroidx/datastore/preferences/protobuf/h;->r:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/datastore/preferences/protobuf/h;->o:I

    return-void
.end method

.method static D([B)Landroidx/datastore/preferences/protobuf/h;
    .registers 2

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/h$j;

    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/h$j;-><init>([B)V

    return-object v0
.end method

.method static E([BII)Landroidx/datastore/preferences/protobuf/h;
    .registers 4

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/h$e;

    invoke-direct {v0, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/h$e;-><init>([BII)V

    return-object v0
.end method

.method static synthetic c(B)I
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/h;->y(B)I

    move-result p0

    return p0
.end method

.method static i(II)V
    .registers 5

    add-int/lit8 v0, p0, 0x1

    sub-int v0, p1, v0

    or-int/2addr v0, p0

    if-gez v0, :cond_3f

    if-gez p0, :cond_20

    .line 1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Index < 0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_20
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index > length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    return-void
.end method

.method static j(III)I
    .registers 6

    sub-int v0, p1, p0

    or-int v1, p0, p1

    or-int/2addr v1, v0

    sub-int v2, p2, p1

    or-int/2addr v1, v2

    if-gez v1, :cond_68

    if-ltz p0, :cond_4c

    if-ge p1, p0, :cond_2d

    .line 1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Beginning index larger than ending index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2
    :cond_2d
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "End index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " >= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_4c
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Beginning index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " < 0"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_68
    return v0
.end method

.method public static k([B)Landroidx/datastore/preferences/protobuf/h;
    .registers 3

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroidx/datastore/preferences/protobuf/h;->l([BII)Landroidx/datastore/preferences/protobuf/h;

    move-result-object p0

    return-object p0
.end method

.method public static l([BII)Landroidx/datastore/preferences/protobuf/h;
    .registers 5

    add-int v0, p1, p2

    .line 1
    array-length v1, p0

    invoke-static {p1, v0, v1}, Landroidx/datastore/preferences/protobuf/h;->j(III)I

    .line 2
    new-instance v0, Landroidx/datastore/preferences/protobuf/h$j;

    sget-object v1, Landroidx/datastore/preferences/protobuf/h;->q:Landroidx/datastore/preferences/protobuf/h$f;

    invoke-interface {v1, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/h$f;->a([BII)[B

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/h$j;-><init>([B)V

    return-object v0
.end method

.method public static m(Ljava/lang/String;)Landroidx/datastore/preferences/protobuf/h;
    .registers 3

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/h$j;

    sget-object v1, Landroidx/datastore/preferences/protobuf/a0;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/h$j;-><init>([B)V

    return-object v0
.end method

.method static r(I)Landroidx/datastore/preferences/protobuf/h$h;
    .registers 3

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/h$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/datastore/preferences/protobuf/h$h;-><init>(ILandroidx/datastore/preferences/protobuf/h$a;)V

    return-object v0
.end method

.method private static y(B)I
    .registers 1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method


# virtual methods
.method public final A(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 3

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h;->size()I

    move-result v0

    if-nez v0, :cond_9

    const-string p1, ""

    goto :goto_d

    :cond_9
    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/h;->B(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    :goto_d
    return-object p1
.end method

.method protected abstract B(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public final C()Ljava/lang/String;
    .registers 2

    .line 1
    sget-object v0, Landroidx/datastore/preferences/protobuf/a0;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Landroidx/datastore/preferences/protobuf/h;->A(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract H(Landroidx/datastore/preferences/protobuf/g;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract g(I)B
.end method

.method public final hashCode()I
    .registers 3

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/h;->o:I

    if-nez v0, :cond_12

    .line 2
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, v0}, Landroidx/datastore/preferences/protobuf/h;->t(III)I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    .line 4
    :cond_10
    iput v0, p0, Landroidx/datastore/preferences/protobuf/h;->o:I

    :cond_12
    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h;->q()Landroidx/datastore/preferences/protobuf/h$g;

    move-result-object v0

    return-object v0
.end method

.method protected abstract n([BIII)V
.end method

.method abstract o(I)B
.end method

.method public abstract p()Z
.end method

.method public q()Landroidx/datastore/preferences/protobuf/h$g;
    .registers 2

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/h$a;

    invoke-direct {v0, p0}, Landroidx/datastore/preferences/protobuf/h$a;-><init>(Landroidx/datastore/preferences/protobuf/h;)V

    return-object v0
.end method

.method public abstract s()Landroidx/datastore/preferences/protobuf/i;
.end method

.method public abstract size()I
.end method

.method protected abstract t(III)I
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "<ByteString@%s size=%d>"

    .line 2
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final u()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/h;->o:I

    return v0
.end method

.method public abstract v(II)Landroidx/datastore/preferences/protobuf/h;
.end method

.method public final x()[B
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 2
    sget-object v0, Landroidx/datastore/preferences/protobuf/a0;->c:[B

    return-object v0

    .line 3
    :cond_9
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v1, v2, v2, v0}, Landroidx/datastore/preferences/protobuf/h;->n([BIII)V

    return-object v1
.end method

###### Class androidx.datastore.preferences.protobuf.h.a (androidx.datastore.preferences.protobuf.h$a)
.class Landroidx/datastore/preferences/protobuf/h$a;
.super Landroidx/datastore/preferences/protobuf/h$c;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/preferences/protobuf/h;->q()Landroidx/datastore/preferences/protobuf/h$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private o:I

.field private final p:I

.field final synthetic q:Landroidx/datastore/preferences/protobuf/h;


# direct methods
.method constructor <init>(Landroidx/datastore/preferences/protobuf/h;)V
    .registers 3

    .line 1
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/h$a;->q:Landroidx/datastore/preferences/protobuf/h;

    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/h$c;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/datastore/preferences/protobuf/h$a;->o:I

    .line 3
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->size()I

    move-result p1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/h$a;->p:I

    return-void
.end method


# virtual methods
.method public c()B
    .registers 3

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/h$a;->o:I

    .line 2
    iget v1, p0, Landroidx/datastore/preferences/protobuf/h$a;->p:I

    if-ge v0, v1, :cond_11

    add-int/lit8 v1, v0, 0x1

    .line 3
    iput v1, p0, Landroidx/datastore/preferences/protobuf/h$a;->o:I

    .line 4
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/h$a;->q:Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {v1, v0}, Landroidx/datastore/preferences/protobuf/h;->o(I)B

    move-result v0

    return v0

    .line 5
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .registers 3

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/h$a;->o:I

    iget v1, p0, Landroidx/datastore/preferences/protobuf/h$a;->p:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

###### Class androidx.datastore.preferences.protobuf.h.b (androidx.datastore.preferences.protobuf.h$b)
.class final Landroidx/datastore/preferences/protobuf/h$b;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/datastore/preferences/protobuf/h;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/datastore/preferences/protobuf/h;Landroidx/datastore/preferences/protobuf/h;)I
    .registers 7

    .line 1
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->q()Landroidx/datastore/preferences/protobuf/h$g;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/h;->q()Landroidx/datastore/preferences/protobuf/h$g;

    move-result-object v1

    .line 3
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 4
    invoke-interface {v0}, Landroidx/datastore/preferences/protobuf/h$g;->c()B

    move-result v2

    invoke-static {v2}, Landroidx/datastore/preferences/protobuf/h;->c(B)I

    move-result v2

    invoke-interface {v1}, Landroidx/datastore/preferences/protobuf/h$g;->c()B

    move-result v3

    invoke-static {v3}, Landroidx/datastore/preferences/protobuf/h;->c(B)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    if-eqz v2, :cond_8

    return v2

    .line 5
    :cond_2b
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->size()I

    move-result p1

    invoke-virtual {p2}, Landroidx/datastore/preferences/protobuf/h;->size()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 1
    check-cast p1, Landroidx/datastore/preferences/protobuf/h;

    check-cast p2, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {p0, p1, p2}, Landroidx/datastore/preferences/protobuf/h$b;->a(Landroidx/datastore/preferences/protobuf/h;Landroidx/datastore/preferences/protobuf/h;)I

    move-result p1

    return p1
.end method

###### Class androidx.datastore.preferences.protobuf.h.c (androidx.datastore.preferences.protobuf.h$c)
.class abstract Landroidx/datastore/preferences/protobuf/h$c;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/h$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Byte;
    .registers 2

    .line 1
    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/h$g;->c()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$c;->a()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .registers 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

###### Class androidx.datastore.preferences.protobuf.h.d (androidx.datastore.preferences.protobuf.h$d)
.class final Landroidx/datastore/preferences/protobuf/h$d;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/h$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/h$a;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/h$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)[B
    .registers 4

    add-int/2addr p3, p2

    .line 1
    invoke-static {p1, p2, p3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    return-object p1
.end method

###### Class androidx.datastore.preferences.protobuf.h.e (androidx.datastore.preferences.protobuf.h$e)
.class final Landroidx/datastore/preferences/protobuf/h$e;
.super Landroidx/datastore/preferences/protobuf/h$j;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final t:I

.field private final u:I


# direct methods
.method constructor <init>([BII)V
    .registers 5

    .line 1
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/h$j;-><init>([B)V

    add-int v0, p2, p3

    .line 2
    array-length p1, p1

    invoke-static {p2, v0, p1}, Landroidx/datastore/preferences/protobuf/h;->j(III)I

    .line 3
    iput p2, p0, Landroidx/datastore/preferences/protobuf/h$e;->t:I

    .line 4
    iput p3, p0, Landroidx/datastore/preferences/protobuf/h$e;->u:I

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "BoundedByteStream instances are not to be serialized directly"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected J()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/h$e;->t:I

    return v0
.end method

.method public g(I)B
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$e;->size()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/h;->i(II)V

    .line 2
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/h$j;->s:[B

    iget v1, p0, Landroidx/datastore/preferences/protobuf/h$e;->t:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method protected n([BIII)V
    .registers 7

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/h$j;->s:[B

    .line 2
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$e;->J()I

    move-result v1

    add-int/2addr v1, p2

    .line 3
    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method o(I)B
    .registers 4

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/h$j;->s:[B

    iget v1, p0, Landroidx/datastore/preferences/protobuf/h$e;->t:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public size()I
    .registers 2

    .line 1
    iget v0, p0, Landroidx/datastore/preferences/protobuf/h$e;->u:I

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h;->x()[B

    move-result-object v0

    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/h;->D([B)Landroidx/datastore/preferences/protobuf/h;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.datastore.preferences.protobuf.h.f (androidx.datastore.preferences.protobuf.h$f)
.class interface abstract Landroidx/datastore/preferences/protobuf/h$f;
.super Ljava/lang/Object;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "f"
.end annotation


# virtual methods
.method public abstract a([BII)[B
.end method

###### Class androidx.datastore.preferences.protobuf.h.g (androidx.datastore.preferences.protobuf.h$g)
.class public interface abstract Landroidx/datastore/preferences/protobuf/h$g;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract c()B
.end method

###### Class androidx.datastore.preferences.protobuf.h.C0046h (androidx.datastore.preferences.protobuf.h$h)
.class final Landroidx/datastore/preferences/protobuf/h$h;
.super Ljava/lang/Object;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation


# instance fields
.field private final a:Landroidx/datastore/preferences/protobuf/k;

.field private final b:[B


# direct methods
.method private constructor <init>(I)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-array p1, p1, [B

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/h$h;->b:[B

    .line 4
    invoke-static {p1}, Landroidx/datastore/preferences/protobuf/k;->g0([B)Landroidx/datastore/preferences/protobuf/k;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/h$h;->a:Landroidx/datastore/preferences/protobuf/k;

    return-void
.end method

.method synthetic constructor <init>(ILandroidx/datastore/preferences/protobuf/h$a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/h$h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/datastore/preferences/protobuf/h;
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/h$h;->a:Landroidx/datastore/preferences/protobuf/k;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/k;->c()V

    .line 2
    new-instance v0, Landroidx/datastore/preferences/protobuf/h$j;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/h$h;->b:[B

    invoke-direct {v0, v1}, Landroidx/datastore/preferences/protobuf/h$j;-><init>([B)V

    return-object v0
.end method

.method public b()Landroidx/datastore/preferences/protobuf/k;
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/h$h;->a:Landroidx/datastore/preferences/protobuf/k;

    return-object v0
.end method

###### Class androidx.datastore.preferences.protobuf.h.i (androidx.datastore.preferences.protobuf.h$i)
.class abstract Landroidx/datastore/preferences/protobuf/h$i;
.super Landroidx/datastore/preferences/protobuf/h;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "i"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/h;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic iterator()Ljava/util/Iterator;
    .registers 2

    .line 1
    invoke-super {p0}, Landroidx/datastore/preferences/protobuf/h;->q()Landroidx/datastore/preferences/protobuf/h$g;

    move-result-object v0

    return-object v0
.end method

###### Class androidx.datastore.preferences.protobuf.h.j (androidx.datastore.preferences.protobuf.h$j)
.class Landroidx/datastore/preferences/protobuf/h$j;
.super Landroidx/datastore/preferences/protobuf/h$i;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final s:[B


# direct methods
.method constructor <init>([B)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/h$i;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/h$j;->s:[B

    return-void
.end method


# virtual methods
.method protected final B(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/h$j;->s:[B

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$j;->J()I

    move-result v2

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$j;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final H(Landroidx/datastore/preferences/protobuf/g;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/h$j;->s:[B

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$j;->J()I

    move-result v1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$j;->size()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroidx/datastore/preferences/protobuf/g;->a([BII)V

    return-void
.end method

.method final I(Landroidx/datastore/preferences/protobuf/h;II)Z
    .registers 9

    .line 1
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->size()I

    move-result v0

    if-gt p3, v0, :cond_6d

    add-int v0, p2, p3

    .line 2
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->size()I

    move-result v1

    if-gt v0, v1, :cond_44

    .line 3
    instance-of v1, p1, Landroidx/datastore/preferences/protobuf/h$j;

    const/4 v2, 0x0

    if-eqz v1, :cond_37

    .line 4
    check-cast p1, Landroidx/datastore/preferences/protobuf/h$j;

    .line 5
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/h$j;->s:[B

    .line 6
    iget-object v1, p1, Landroidx/datastore/preferences/protobuf/h$j;->s:[B

    .line 7
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$j;->J()I

    move-result v3

    add-int/2addr v3, p3

    .line 8
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$j;->J()I

    move-result p3

    .line 9
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h$j;->J()I

    move-result p1

    add-int/2addr p1, p2

    :goto_27
    if-ge p3, v3, :cond_35

    .line 10
    aget-byte p2, v0, p3

    aget-byte v4, v1, p1

    if-eq p2, v4, :cond_30

    return v2

    :cond_30
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_27

    :cond_35
    const/4 p1, 0x1

    return p1

    .line 11
    :cond_37
    invoke-virtual {p1, p2, v0}, Landroidx/datastore/preferences/protobuf/h;->v(II)Landroidx/datastore/preferences/protobuf/h;

    move-result-object p1

    invoke-virtual {p0, v2, p3}, Landroidx/datastore/preferences/protobuf/h$j;->v(II)Landroidx/datastore/preferences/protobuf/h;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/datastore/preferences/protobuf/h;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 12
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ran off end of other: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_6d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Length too large: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$j;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_8c

    :goto_8b
    throw p1

    :goto_8c
    goto :goto_8b
.end method

.method protected J()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 1
    :cond_4
    instance-of v1, p1, Landroidx/datastore/preferences/protobuf/h;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 2
    :cond_a
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$j;->size()I

    move-result v1

    move-object v3, p1

    check-cast v3, Landroidx/datastore/preferences/protobuf/h;

    invoke-virtual {v3}, Landroidx/datastore/preferences/protobuf/h;->size()I

    move-result v3

    if-eq v1, v3, :cond_18

    return v2

    .line 3
    :cond_18
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$j;->size()I

    move-result v1

    if-nez v1, :cond_1f

    return v0

    .line 4
    :cond_1f
    instance-of v0, p1, Landroidx/datastore/preferences/protobuf/h$j;

    if-eqz v0, :cond_3d

    .line 5
    check-cast p1, Landroidx/datastore/preferences/protobuf/h$j;

    .line 6
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h;->u()I

    move-result v0

    .line 7
    invoke-virtual {p1}, Landroidx/datastore/preferences/protobuf/h;->u()I

    move-result v1

    if-eqz v0, :cond_34

    if-eqz v1, :cond_34

    if-eq v0, v1, :cond_34

    return v2

    .line 8
    :cond_34
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$j;->size()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Landroidx/datastore/preferences/protobuf/h$j;->I(Landroidx/datastore/preferences/protobuf/h;II)Z

    move-result p1

    return p1

    .line 9
    :cond_3d
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g(I)B
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/h$j;->s:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method protected n([BIII)V
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/h$j;->s:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method o(I)B
    .registers 3

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/h$j;->s:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public final p()Z
    .registers 4

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$j;->J()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/h$j;->s:[B

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$j;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Landroidx/datastore/preferences/protobuf/s1;->n([BII)Z

    move-result v0

    return v0
.end method

.method public final s()Landroidx/datastore/preferences/protobuf/i;
    .registers 5

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/h$j;->s:[B

    .line 2
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$j;->J()I

    move-result v1

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$j;->size()I

    move-result v2

    const/4 v3, 0x1

    .line 3
    invoke-static {v0, v1, v2, v3}, Landroidx/datastore/preferences/protobuf/i;->j([BIIZ)Landroidx/datastore/preferences/protobuf/i;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/h$j;->s:[B

    array-length v0, v0

    return v0
.end method

.method protected final t(III)I
    .registers 6

    .line 1
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/h$j;->s:[B

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$j;->J()I

    move-result v1

    add-int/2addr v1, p2

    invoke-static {p1, v0, v1, p3}, Landroidx/datastore/preferences/protobuf/a0;->i(I[BII)I

    move-result p1

    return p1
.end method

.method public final v(II)Landroidx/datastore/preferences/protobuf/h;
    .registers 6

    .line 1
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$j;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Landroidx/datastore/preferences/protobuf/h;->j(III)I

    move-result p2

    if-nez p2, :cond_d

    .line 2
    sget-object p1, Landroidx/datastore/preferences/protobuf/h;->p:Landroidx/datastore/preferences/protobuf/h;

    return-object p1

    .line 3
    :cond_d
    new-instance v0, Landroidx/datastore/preferences/protobuf/h$e;

    iget-object v1, p0, Landroidx/datastore/preferences/protobuf/h$j;->s:[B

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/h$j;->J()I

    move-result v2

    add-int/2addr v2, p1

    invoke-direct {v0, v1, v2, p2}, Landroidx/datastore/preferences/protobuf/h$e;-><init>([BII)V

    return-object v0
.end method

###### Class androidx.datastore.preferences.protobuf.h.k (androidx.datastore.preferences.protobuf.h$k)
.class final Landroidx/datastore/preferences/protobuf/h$k;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/h$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "k"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/datastore/preferences/protobuf/h$a;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Landroidx/datastore/preferences/protobuf/h$k;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)[B
    .registers 6

    .line 1
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
