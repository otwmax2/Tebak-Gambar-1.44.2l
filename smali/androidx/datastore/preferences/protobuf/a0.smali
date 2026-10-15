###### Class androidx.datastore.preferences.protobuf.a0 (androidx.datastore.preferences.protobuf.a0)
.class public final Landroidx/datastore/preferences/protobuf/a0;
.super Ljava/lang/Object;
.source "Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/a0$f;,
        Landroidx/datastore/preferences/protobuf/a0$b;,
        Landroidx/datastore/preferences/protobuf/a0$h;,
        Landroidx/datastore/preferences/protobuf/a0$a;,
        Landroidx/datastore/preferences/protobuf/a0$g;,
        Landroidx/datastore/preferences/protobuf/a0$i;,
        Landroidx/datastore/preferences/protobuf/a0$e;,
        Landroidx/datastore/preferences/protobuf/a0$d;,
        Landroidx/datastore/preferences/protobuf/a0$c;
    }
.end annotation


# static fields
.field static final a:Ljava/nio/charset/Charset;

.field static final b:Ljava/nio/charset/Charset;

.field public static final c:[B

.field public static final d:Ljava/nio/ByteBuffer;

.field public static final e:Landroidx/datastore/preferences/protobuf/i;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/a0;->a:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/a0;->b:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 3
    sput-object v0, Landroidx/datastore/preferences/protobuf/a0;->c:[B

    .line 4
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sput-object v1, Landroidx/datastore/preferences/protobuf/a0;->d:Ljava/nio/ByteBuffer;

    .line 5
    invoke-static {v0}, Landroidx/datastore/preferences/protobuf/i;->h([B)Landroidx/datastore/preferences/protobuf/i;

    move-result-object v0

    sput-object v0, Landroidx/datastore/preferences/protobuf/a0;->e:Landroidx/datastore/preferences/protobuf/i;

    return-void
.end method

.method static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method static b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object p0
.end method

.method public static c(Z)I
    .registers 1

    if-eqz p0, :cond_5

    const/16 p0, 0x4cf

    goto :goto_7

    :cond_5
    const/16 p0, 0x4d5

    :goto_7
    return p0
.end method

.method public static d([B)I
    .registers 3

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroidx/datastore/preferences/protobuf/a0;->e([BII)I

    move-result p0

    return p0
.end method

.method static e([BII)I
    .registers 3

    .line 1
    invoke-static {p2, p0, p1, p2}, Landroidx/datastore/preferences/protobuf/a0;->i(I[BII)I

    move-result p0

    if-nez p0, :cond_7

    const/4 p0, 0x1

    :cond_7
    return p0
.end method

.method public static f(J)I
    .registers 4

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static g([B)Z
    .registers 1

    .line 1
    invoke-static {p0}, Landroidx/datastore/preferences/protobuf/s1;->m([B)Z

    move-result p0

    return p0
.end method

.method static h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1
    check-cast p0, Landroidx/datastore/preferences/protobuf/r0;

    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/r0;->b()Landroidx/datastore/preferences/protobuf/r0$a;

    move-result-object p0

    check-cast p1, Landroidx/datastore/preferences/protobuf/r0;

    invoke-interface {p0, p1}, Landroidx/datastore/preferences/protobuf/r0$a;->l0(Landroidx/datastore/preferences/protobuf/r0;)Landroidx/datastore/preferences/protobuf/r0$a;

    move-result-object p0

    invoke-interface {p0}, Landroidx/datastore/preferences/protobuf/r0$a;->A2()Landroidx/datastore/preferences/protobuf/r0;

    move-result-object p0

    return-object p0
.end method

.method static i(I[BII)I
    .registers 6

    move v0, p2

    :goto_1
    add-int v1, p2, p3

    if-ge v0, v1, :cond_d

    mul-int/lit8 p0, p0, 0x1f

    .line 1
    aget-byte v1, p1, v0

    add-int/2addr p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    return p0
.end method

.method public static j([B)Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroidx/datastore/preferences/protobuf/a0;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

###### Class androidx.datastore.preferences.protobuf.a0.a (androidx.datastore.preferences.protobuf.a0$a)
.class public interface abstract Landroidx/datastore/preferences/protobuf/a0$a;
.super Ljava/lang/Object;
.source "Internal.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/a0$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/datastore/preferences/protobuf/a0$i<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

###### Class androidx.datastore.preferences.protobuf.a0.b (androidx.datastore.preferences.protobuf.a0$b)
.class public interface abstract Landroidx/datastore/preferences/protobuf/a0$b;
.super Ljava/lang/Object;
.source "Internal.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/a0$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/datastore/preferences/protobuf/a0$i<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation

###### Class androidx.datastore.preferences.protobuf.a0.c (androidx.datastore.preferences.protobuf.a0$c)
.class public interface abstract Landroidx/datastore/preferences/protobuf/a0$c;
.super Ljava/lang/Object;
.source "Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract h()I
.end method

###### Class androidx.datastore.preferences.protobuf.a0.d (androidx.datastore.preferences.protobuf.a0$d)
.class public interface abstract Landroidx/datastore/preferences/protobuf/a0$d;
.super Ljava/lang/Object;
.source "Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroidx/datastore/preferences/protobuf/a0$c;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(I)Landroidx/datastore/preferences/protobuf/a0$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

###### Class androidx.datastore.preferences.protobuf.a0.e (androidx.datastore.preferences.protobuf.a0$e)
.class public interface abstract Landroidx/datastore/preferences/protobuf/a0$e;
.super Ljava/lang/Object;
.source "Internal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "e"
.end annotation


# virtual methods
.method public abstract a(I)Z
.end method

###### Class androidx.datastore.preferences.protobuf.a0.f (androidx.datastore.preferences.protobuf.a0$f)
.class public interface abstract Landroidx/datastore/preferences/protobuf/a0$f;
.super Ljava/lang/Object;
.source "Internal.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/a0$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/datastore/preferences/protobuf/a0$i<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

###### Class androidx.datastore.preferences.protobuf.a0.g (androidx.datastore.preferences.protobuf.a0$g)
.class public interface abstract Landroidx/datastore/preferences/protobuf/a0$g;
.super Ljava/lang/Object;
.source "Internal.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/a0$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/datastore/preferences/protobuf/a0$i<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

###### Class androidx.datastore.preferences.protobuf.a0.h (androidx.datastore.preferences.protobuf.a0$h)
.class public interface abstract Landroidx/datastore/preferences/protobuf/a0$h;
.super Ljava/lang/Object;
.source "Internal.java"

# interfaces
.implements Landroidx/datastore/preferences/protobuf/a0$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/datastore/preferences/protobuf/a0$i<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

###### Class androidx.datastore.preferences.protobuf.a0.i (androidx.datastore.preferences.protobuf.a0$i)
.class public interface abstract Landroidx/datastore/preferences/protobuf/a0$i;
.super Ljava/lang/Object;
.source "Internal.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/datastore/preferences/protobuf/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# virtual methods
.method public abstract B0(I)Landroidx/datastore/preferences/protobuf/a0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/datastore/preferences/protobuf/a0$i<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract O3()Z
.end method

.method public abstract p0()V
.end method
